using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Admin_ViewReports_Jobseeker_frmFullSelectedJobDetail : System.Web.UI.Page
{
    RecruiterJobOpeningAndOtherDetail job = new RecruiterJobOpeningAndOtherDetail();
    JobSeekerResponseToJobBL response = new JobSeekerResponseToJobBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["JobSeekerId"] == null)
        {
            Response.Redirect("~/frmJobSeekerLogin.aspx");
        }
        if (!IsPostBack)
        {
            BindData();
            
        }
    }
    private void BindData()
    {   
        job.JobID=Request["JobId"].ToString();
        job.OrgName=Request["OrgName"].ToString();
        DataSet ds = new DataSet();
        DataRow dr;
        ds = job.ShowFullJobDetailByJobId();
        dr = ds.Tables[0].Rows[0];
        txtCompName.Text = job.OrgName;
        txtJobId.Text = job.JobID;
        txtCategory.Text = dr[2].ToString();
        txtSkills.Text = dr[3].ToString();
        txtJobTitle.Text = dr[4].ToString();
        txtMinQualification.Text = dr[5].ToString();
        txtAge.Text = dr[6].ToString();
        txtExperience.Text = dr[7].ToString();
        txtExpectedSalary.Text = dr[8].ToString();
        txtJobLocation.Text = dr[9].ToString();
        txtOpeningDate.Text = dr[10].ToString();
        txtClosingDate.Text = dr[11].ToString();
        txtDescription.Text = dr[12].ToString();
    }
    protected void btnApply_Click(object sender, EventArgs e)
    {
        try
        {   response.JobSeekerId = Session["JobSeekerId"].ToString();
            response.JobID = txtJobId.Text;
           
            DataSet ds = new DataSet();
            job.JobID = txtJobId.Text.Trim();
            ds = job.CompareDate(); 
               
            if (System.DateTime.Now.Date.Date >Convert.ToDateTime(ds.Tables[0].Rows[0][0].ToString()))
            {
                lblMsg.Text = "Job Opening Has Closed...!";
            }
            else  if (response.ShowJobApplyStatus() == false)
            {
                response.JobSeekerId = Session["JobSeekerId"].ToString();
                response.RecruiterName = txtCompName.Text;
                response.JobID = txtJobId.Text;
                response.DateOfResponse = System.DateTime.Now.Date.Date;
                response.InsertJobSeekerResponseToRecruiter();
                lblMsg.Text = "You Have Applied Successfully...!";
            }
            else
            {
                lblMsg.Text = "U Have Already Applied....!"; 
            }
        }
        catch (Exception ex)
        {
           lblMsg.Text = ex.Message.ToString();
           // lblMsg.Text = "U Have Already Applied....!"; ;
        }

    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/JobSeeker/SearchJobs/frmViewAllJobs.aspx");
    }
}
