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

public partial class JobSeeker_Registration_frmForgotPassword : System.Web.UI.Page
{
    JobSeekerRegistrationBL jobseeker = new JobSeekerRegistrationBL();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            jobseeker.JobSeekerId = txtUserName.Text.Trim();
            jobseeker.HintQuestion = ddlQuestion.SelectedItem.Text;
            jobseeker.Answer = txtAnswer.Text.Trim();
            if (jobseeker.ForgotPasswordCheck() == true)
            {   
                DataSet ds=new DataSet();
                ds=jobseeker.ShowForgotPassword();
                lblMsg.Text ="Your Password Is: "+ ds.Tables[0].Rows[0][0].ToString();
            
            }
            else
            {
                lblMsg.Text = "Either Your Answer Or UserName Is Wrong...!";
                    
            }
        }
        catch (Exception)
        {
            
            throw;
        }
    }
}
