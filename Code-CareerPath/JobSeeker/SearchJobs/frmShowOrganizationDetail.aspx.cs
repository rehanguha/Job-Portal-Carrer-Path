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

public partial class JobSeeker_SearchJobs_frmShowOrganizationDetail : System.Web.UI.Page
{
    RecruiterRegistrationBL recruiter = new RecruiterRegistrationBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["JobSeekerId"] == null)
        {
            Response.Redirect("~/frmJobSeekerLogin.aspx");
        }
        if (!IsPostBack)
        { BindData(); }

    }
    private void BindData()
    {
        recruiter.OrganisationName = Request["OrgName"].ToString();
        DetailsView1.DataSource = recruiter.ShowOrganizationDetailByOrg();
        DetailsView1.DataBind();
    }
}
