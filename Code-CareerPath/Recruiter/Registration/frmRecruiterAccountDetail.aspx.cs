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

public partial class Recruiter_Registration_frmRecruiterAccountDetail : System.Web.UI.Page
{
    RecruiterRegistrationBL recruiter = new RecruiterRegistrationBL();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lnkCheckAvailability_Click(object sender, EventArgs e)
    {
        try
        {
            recruiter.UserName = txtName.Text;
            if (recruiter.CheckReruiterAvailability() == true)
            {
                Label1.Text = "User Name Already Exists...!";
            }
            else
            {
                Label1.Text = "User Name Not Exists...!";
            }

        }
        catch (Exception)
        {

            throw;
        }
    }
    protected void btnNext_Click(object sender, EventArgs e)
    {
        try
        {
            recruiter.UserName = txtName.Text.Trim();
            recruiter.Password = txtPassword.Text.Trim();
            recruiter.HintQuestion = ddlQuestion.SelectedItem.Text;
            recruiter.Answer = txtAnswer.Text.Trim();
            recruiter.Date = System.DateTime.Now.Date;
            recruiter.InsertRecruiterAccountDetail();
            lblMsg.Text="Inserted...!";
            Session["UserName"] = txtName.Text.Trim();
            Response.Redirect("~/Recruiter/Registration/frmRecruiterOrganizationDetail.aspx");
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message.ToString();
        }
    }
}
