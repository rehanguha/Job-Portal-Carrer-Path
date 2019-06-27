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

public partial class Admin_ViewReports_Recruiter_frmShowJobInfoByJobId : System.Web.UI.Page
{
    JobSeekerResponseToJobBL jobseeker = new JobSeekerResponseToJobBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
        if (!IsPostBack)
        { BindData(); }

    }
    private void BindData()
    {
        jobseeker.JobID = Request["JobId"].ToString();
        DetailsView1.DataSource = jobseeker.ShowJobInfoByJobId();
        DetailsView1.DataBind();
    }
}
