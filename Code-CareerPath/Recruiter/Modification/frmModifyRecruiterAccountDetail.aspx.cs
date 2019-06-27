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

public partial class Recruiter_Modification_frmModifyRecruiterAccountDetail : System.Web.UI.Page
{
    RecruiterRegistrationBL recruiter = new RecruiterRegistrationBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("~/frmRecruiterLogin.aspx");
        }
        if (!IsPostBack)
        {
            txtName.Text = Session["UserName"].ToString();
            recruiter.UserName = txtName.Text;
            DataSet ds;
            ds = recruiter.ShowRecruiterLoginInfo();
            //dr = ds.Tables[0];
            ListItem li1 = ddlQuestion.Items.FindByText(ds.Tables[0].Rows[0][0].ToString());
            if (li1 != null)
            {
                li1.Selected = true;
            }
            txtAnswer.Text = ds.Tables[0].Rows[0][1].ToString();

        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {

        try
        {
            recruiter.UserName = txtName.Text;
            DataSet ds;
            ds = recruiter.RecruiterPasswordVerify();
            if (txtPassword.Text != ds.Tables[0].Rows[0][0].ToString())
            {
                lblMsg.Text = "Your password Is Wrong";
                txtPassword.Focus();

            }
           else
            {
                recruiter.Password = txtNewPassword.Text.Trim();
                recruiter.HintQuestion = ddlQuestion.SelectedItem.Text;
                recruiter.Answer = txtAnswer.Text;
                recruiter.ModifyRecruiterRegestration();
                lblMsg.Text = "Updated...!";
            }
        }
        catch (Exception)
        {

            throw;
        }
    }
}
