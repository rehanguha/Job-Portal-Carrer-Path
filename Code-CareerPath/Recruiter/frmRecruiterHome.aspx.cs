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

public partial class Recruiter_frmRecruiterHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lnlProfileUpdate_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Recruiter/Modification/frmModifyRecruiterOrganizationDetail.aspx");
    }
    protected void lnkAccountUpdate_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Recruiter/Modification/frmModifyRecruiterAccountDetail.aspx");
    }
    protected void lnkJobOpening_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Recruiter/JobPosting/frmRecruiterJobOpeningdetail.aspx");
    }
    protected void lnkSearchJobSeeker_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Recruiter/SearchJobSeeker/frmSearchJobSeeker.aspx");
    }
    protected void lnkResponseDetail_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Recruiter/SearchJobSeeker/frmJobSeekerResponseToRecruiter.aspx");

    }
}
