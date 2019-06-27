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
using System.Web.Mail;

public partial class Recruiter_SearchJobSeeker_frmSendMail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("~/frmRecruiterLogin.aspx");
        }
        if (!IsPostBack)
        {
            lblUserName.Text = Request["a"].ToString();
        }
    }
   
    protected void btnSend_Click(object sender, EventArgs e)
    {
        try
        {
            SendMails();
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }
    }
    void SendMails()
    {
        try
        {
            MailMessage objMail = new MailMessage();
            objMail.From = Session["UserName"].ToString();
            objMail.To = "Localhost";
            objMail.Subject = "CareerPath.com";
            objMail.Body = txtMsg.Text;
            SmtpMail.SmtpServer = "LocalHost";
            SmtpMail.Send(objMail);
            Page.RegisterClientScriptBlock("Dhanush", "<script>alert('Message Sent Successfully...')</script>");
            Clear();
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }
    }

    void Clear()
    {
        txtMsg.Text = "";
       
    }
}
