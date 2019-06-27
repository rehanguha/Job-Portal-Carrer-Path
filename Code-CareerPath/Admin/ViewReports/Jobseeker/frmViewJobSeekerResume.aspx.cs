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

public partial class Admin_ViewReports_Jobseeker_frmModifyJobSeekerResume : System.Web.UI.Page
{
    JobSeekerRegistrationBL jobseeker = new JobSeekerRegistrationBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
        if (!IsPostBack)
        {
            BindData();
        }
    }
    private void BindData()
    {
        jobseeker.JobSeekerId = Session["JobSeekerId"].ToString();
        DataSet ds3;
        ds3 = jobseeker.ShowJobSeekerResumeDetail();
        DataRow dr3;
        if (ds3.Tables[0].Rows.Count > 0)
        {
            dr3 = ds3.Tables[0].Rows[0];
            if (dr3[0].ToString() != null)
            {
                txtResume.Text = dr3[0].ToString();
            }

            string FullPath = Server.MapPath("~/UploadedResume/" + dr3[1].ToString());
            if (System.IO.File.Exists(Server.MapPath("~/UploadedResume/" + dr3[1].ToString())))
            {
                hypResume.Text = dr3[1].ToString();
                hypResume.NavigateUrl = ("~/UploadedResume/" + dr3[1].ToString());

            }
            else
            {
                hypResume.Text = "Resume Not Available";

            }
        }
        else
        {
            lblMsg.Text = "No Data Found...!";
            hypResume.Text = "Resume Not Available";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/ViewReports/Jobseeker/frmUpdateJobSeekerInfo.aspx");
    }
}
