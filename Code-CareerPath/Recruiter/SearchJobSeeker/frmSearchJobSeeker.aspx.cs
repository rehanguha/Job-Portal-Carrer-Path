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

public partial class Recruiter_SearchJobSeeker_frmSearchJobSeeker : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("~/frmRecruiterLogin.aspx");
        }

    }
    protected void lnkAllSeekers_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Recruiter/SearchJobSeeker/frmViewAllJobSeeker.aspx");
    }
    protected void lnkJobBased_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Recruiter/SearchJobSeeker/frmJobSeekerAppliedJobDetail.aspx");
    }
    protected void lnkRole_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Recruiter/SearchJobSeeker/frmSearchJobSeekerByRole.aspx");
    }
    protected void lnkLocation_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Recruiter/SearchJobSeeker/frmSearchJobSeekerByLocation.aspx");

    }
    protected void lnkQualification_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Recruiter/SearchJobSeeker/frmSearchJobseekerByQualification.aspx");
    }
    protected void lnkSeekersSalary_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Recruiter/SearchJobSeeker/frmSearchJobseekerByExpectedSalary.aspx");
    }
    protected void lnkAllCondition_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Recruiter/SearchJobSeeker/frmSearchJobseekerByAllCondition.aspx");

    }
}
