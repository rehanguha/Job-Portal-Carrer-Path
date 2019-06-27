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

public partial class frmJobSeekerLogin : System.Web.UI.Page
{
    JobSeekerRegistrationBL jobseeker = new JobSeekerRegistrationBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            HyperLink1.Visible = true;
        }
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            jobseeker.JobSeekerId = txtUserName.Text.Trim();
            jobseeker.Password = txtPassword.Text.Trim();
            if (jobseeker.CheckJobSeekerLoginInfo() == true)
            {
                Session["JobSeekerId"] = txtUserName.Text.Trim();
                Response.Redirect("~/JobSeeker/frmJobSeekerHome.aspx");
            }
            else
            {
                lblMsg.Text = "Invalid User Name Or Password...!";
            }
        }
        catch (Exception)
        {
            
            throw;
        }

    }
    protected void lnkForgotPassword_Click(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("~/JobSeeker/Registration/frmForgotPassword.aspx");
        }
        catch (Exception)
        {
            
            throw;
        }

    }

   
}
