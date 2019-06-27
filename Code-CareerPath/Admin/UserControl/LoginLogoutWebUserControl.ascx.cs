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

public partial class Admin_User_Control_LoginLogoutWebUserControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == "")
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        else
            lblMsg.Text = "<b><font color=#C000C0>Welcome</font></b> " + " " + Session["UserName"].ToString();
    }
      protected void lnkLogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session["UserName"].ToString().Remove(0);
        Response.Redirect("~/Default.aspx");
    }
}
