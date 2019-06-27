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

public partial class Admin_ViewReports_Jobseeker_frmModifyJobSeekerAccount : System.Web.UI.Page
{
    JobSeekerRegistrationBL jobseeker = new JobSeekerRegistrationBL();
    DataRow dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
        if (!IsPostBack)
        {
            txtName.Text = Session["JobSeekerId"].ToString();
            txtName.Text = Session["JobSeekerId"].ToString(); ;
            jobseeker.JobSeekerId = txtName.Text;
            DataSet ds;
            ds = jobseeker.ShowLoginInfo();
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
            jobseeker.JobSeekerId = txtName.Text ;
            DataSet ds;
            ds = jobseeker.PasswordCheck();
            if (txtPassword.Text != ds.Tables[0].Rows[0][0].ToString())
            {
                lblMsg.Text = "Your password Is Wrong";
                txtPassword.Focus();
            
            }
            //else if(txtPassword.Text==txtNewPassword.Text)
            //{
            //    lblMsg.Text = "Your Password Is Same As OldPassword...!";
               
            //}
            else
            {
                jobseeker.Password = txtNewPassword.Text.Trim();
                jobseeker.HintQuestion = ddlQuestion.SelectedItem.Text;
                jobseeker.Answer = txtAnswer.Text;
                jobseeker.ModifyJobseekerRegestration();
                lblMsg.Text = "Updated...!";
            }
        }
        catch (Exception)
        {
            
            throw;
        }
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/ViewReports/Jobseeker/frmUpdateJobSeekerInfo.aspx");
    }
}
