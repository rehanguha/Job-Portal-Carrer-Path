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

public partial class Recruiter_Registration_frmRecruiterForgotPassword : System.Web.UI.Page
{
    RecruiterRegistrationBL recruiter = new RecruiterRegistrationBL();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            recruiter.UserName = txtUserName.Text.Trim();
            recruiter.HintQuestion = ddlQuestion.SelectedItem.Text;
            recruiter.Answer = txtAnswer.Text.Trim();
            if (recruiter.RecruiterPasswordCheck() == true)
            {
                DataSet ds = new DataSet();
                ds = recruiter.ShowRecruiterForgotPassword();
                lblMsg.Text = "Your Password Is: " + ds.Tables[0].Rows[0][0].ToString();
            }
            else
            {
                lblMsg.Text = "Either Your Answer Or UserName Is Wrong...!";
            }
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }

    }
}
