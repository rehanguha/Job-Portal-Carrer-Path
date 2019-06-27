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

public partial class JobSeeker_SearchJobs_frmSearchJobs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["JobSeekerId"] == null)
        {
            Response.Redirect("~/frmJobSeekerLogin.aspx");
        }

    }
    protected void lnkAllJobs_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/JobSeeker/SearchJobs/frmViewAllJobs.aspx");
    }
    protected void lnkCategory_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/JobSeeker/SearchJobs/frmShowJobsBasedonCategory.aspx");
    }
    protected void lnkLocation_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/JobSeeker/SearchJobs/frmShowAllJobByLocation.aspx");
    }
    protected void lnkJob_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/JobSeeker/SearchJobs/frmShowAllJobByRole.aspx");
    }
    protected void lnkAllCondition_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/JobSeeker/SearchJobs/frmSearchJobByAllCondition.aspx");
    }
}
