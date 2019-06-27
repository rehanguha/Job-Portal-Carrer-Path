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

public partial class Admin_UserControl_JobseekerMenuUserControl: System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["JobSeekerId"] == null)
        //{
        //    Response.Redirect("~/frmJobSeekerLogin.aspx");
        //}

    }
    protected void lnkProfileUpdate_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/ViewReports/Jobseeker/frmModifyJobSeekerProfile.aspx");
    }
    protected void lnkAccountUpdate_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/ViewReports/Jobseeker/frmModifyJobSeekerAccount.aspx");
    }
    protected void lnkTechnicalSkill_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/ViewReports/Jobseeker/frmModifyJobseekerTechnicalSkillDetail.aspx");
    }

    protected void lnkJob_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/ViewReports/Jobseeker/frmModifyJobseekerJobDetails.aspx");
    }
    protected void lnkEducation_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/ViewReports/Jobseeker/frmModifyJobSeekerBackgroundDetail.aspx");
    }
    protected void lnkSearchJob_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/ViewReports/Jobseeker/frmSearchJobs.aspx");
    }
    protected void lnkResponse_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/ViewReports/Jobseeker/frmRecruiterResponseToJobSeeker.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/ViewReports/Jobseeker/frmViewJobSeekerResume.aspx");
    }
    protected void lnkResponse_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/ViewReports/Jobseeker/frmJobSeekerResponseToRecruiter.aspx");
    }
}
