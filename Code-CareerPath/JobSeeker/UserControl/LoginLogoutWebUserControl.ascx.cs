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

public partial class JobSeeker_User_Control_LoginLogoutWebUserControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["JobSeekerId"] == "")
            Response.Redirect("~/frmJobSeekerLogin.aspx");
        else
            lblMsg.Text = "<b><font color=silver>Welcome</font></b> " + " " + Session["JobSeekerId"].ToString();
        
       
    }
      protected void lnkLogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session["JobSeekerId"].ToString().Remove(0);
        Response.Redirect("~/Default.aspx");
    }
}
