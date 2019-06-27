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

public partial class JobSeeker_Registration_frmReviewResume : System.Web.UI.Page
{
    JobSeekerRegistrationBL jobseeker = new JobSeekerRegistrationBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["JobSeekerId"] == null)
        {
            Response.Redirect("~/frmJobSeekerRegistration.aspx");
        }
        if (!IsPostBack)
        {
            Panel1.Visible = false;
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        try
        {
            Panel1.Visible = true;
             jobseeker.JobSeekerId = Session["JobSeekerId"].ToString();
        
            DataSet ds = new DataSet();
            // jobseeker.JobSeekerId = "S";
             ds = jobseeker.ShowJobSeekerDetail();
             lblFName.Text = ds.Tables[0].Rows[0][0].ToString();
             lblEmail.Text = ds.Tables[0].Rows[0][1].ToString();
             lblPhone.Text = ds.Tables[0].Rows[0][2].ToString();
             lblEducation.Text=ds.Tables[0].Rows[0][3].ToString();
             lblIndustryExp.Text = ds.Tables[0].Rows[0][4].ToString();
             lblTechExp.Text = ds.Tables[0].Rows[0][5].ToString();
             lblPosiotion.Text = ds.Tables[0].Rows[0][6].ToString();
             lblLocation.Text = ds.Tables[0].Rows[0][7].ToString();
             lblRelocate.Text = ds.Tables[0].Rows[0][8].ToString();
             lblTelecommute.Text = ds.Tables[0].Rows[0][9].ToString();
             lblTravel.Text = ds.Tables[0].Rows[0][10].ToString();
             lblSalary.Text = ds.Tables[0].Rows[0][11].ToString();
             lblEmployment.Text = ds.Tables[0].Rows[0][12].ToString();
        }
        catch (Exception)
        {
            
            throw;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Panel1.Visible = false;
        }
        catch (Exception)
        {
            
            throw;
        }
    }
}
