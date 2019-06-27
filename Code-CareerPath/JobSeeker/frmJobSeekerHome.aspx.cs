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

public partial class JobSeeker_frmJobSeekerHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["JobSeekerId"] == null)
        {
            Response.Redirect("~/frmJobSeekerLogin.aspx");
        }

    }
    protected void lnkProfileUpdate_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/JobSeeker/Modification/frmModifyJobSeekerProfile.aspx");
    }
    protected void lnkAccountUpdate_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/JobSeeker/Modification/frmModifyJobSeekerAccount.aspx");
    }
    protected void lnkTechnicalSkill_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/JobSeeker/Modification/frmModifyJobseekerTechnicalSkillDetail.aspx");
    }
   
    protected void lnkJob_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/JobSeeker/Modification/frmModifyJobseekerJobDetails.aspx");
    }
    protected void lnkEducation_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/JobSeeker/Modification/frmModifyJobSeekerBackgroundDetail.aspx");
    }
    protected void lnkSearchJob_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/JobSeeker/SearchJobs/frmSearchJobs.aspx");
    }
    protected void lnkResponse_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/JobSeeker/SearchJobs/frmRecruiterResponseToJobSeeker.aspx");
    }
}
