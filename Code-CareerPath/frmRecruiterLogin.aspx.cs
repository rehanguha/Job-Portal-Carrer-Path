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

public partial class frmRecruiterLogin : System.Web.UI.Page
{
    RecruiterRegistrationBL recruiter = new RecruiterRegistrationBL();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lnkForgotPassword_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Recruiter/Registration/frmRecruiterForgotPassword.aspx");
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            recruiter.UserName = txtUserName.Text.Trim();
            recruiter.Password = txtPassword.Text.Trim();
            if (recruiter.CheckRecruiterLoginInfo() == true)
            {
                Session["UserName"] = txtUserName.Text.Trim();
                Response.Redirect("~/Recruiter/frmRecruiterHome.aspx");
            }
            else
            {
                lblMsg.Text = "Invalid UserName or Password...!";
            }
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }
    }
    protected void lnkRegsiter_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Recruiter/Registration/frmRecruiterAccountDetail.aspx");
    }
}
