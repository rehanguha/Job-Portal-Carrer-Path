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

public partial class Admin_ViewReports_Jobseeker_frmJobSeekerAppliedJobDetail : System.Web.UI.Page
{
    JobSeekerResponseToJobBL jobseeker = new JobSeekerResponseToJobBL();
    RecruiterResponseToJobSeekeBL recruiter = new RecruiterResponseToJobSeekeBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("~/frmRecruiterLogin.aspx");
        }
        if (!IsPostBack)
        {
            BindData();
            BindGridview();
        }

    }
    private void BindGridview()
    {
        recruiter.JobSeekerId = Session["JobSeekerId"].ToString();
        GridView1.DataSource = recruiter.ShowAppliedJobDetailOfJobsseker();
        GridView1.DataBind();
    }
   
    private void BindData()
    {
        jobseeker.JobSeekerId = Session["JobSeekerId"].ToString();
        DataSet ds = new DataSet();
        ds = jobseeker.ShowJobSeekerFullDetail();
        DataRow dr = ds.Tables[0].Rows[0];
        lblName.Text = dr[0].ToString() + dr[1].ToString();
        lblDOb.Text = dr[2].ToString();
        lblCountry.Text = dr[3].ToString();
        lblState.Text = dr[4].ToString();
        lblCity.Text = dr[5].ToString();
        lblAddress.Text = dr[6].ToString();
        lblPin.Text = dr[7].ToString();
        lblMobile.Text = dr[8].ToString();
        lblEmail.Text = dr[9].ToString();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        try
        {
            GridView1.PageIndex = e.NewPageIndex;
            BindGridview();
        }
        catch (Exception)
        {
            
            throw;
        }

    }
    protected void lnkFullInfo_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/ViewReports/Jobseeker/frmFullInformationaboutJobseeker.aspx");
    }
}
