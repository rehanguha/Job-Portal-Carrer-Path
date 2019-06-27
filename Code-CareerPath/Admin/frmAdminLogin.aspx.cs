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

public partial class Admin_frmAdminLogin : System.Web.UI.Page
{
    RecruiterRegistrationBL admin = new RecruiterRegistrationBL();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            admin.UserName = txtUserName.Text.Trim();
            admin.Password = txtPassword.Text.Trim();
            if (admin.CheckAdminLoginInfo() == true)
            {
                Session["UserName"] = txtUserName.Text.Trim();
                Response.Redirect("~/Admin/frmAdminHome.aspx");
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
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }
}
