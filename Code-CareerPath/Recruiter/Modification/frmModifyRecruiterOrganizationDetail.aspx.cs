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

public partial class Recruiter_Modification_frmModifyRecruiterOrganizationDetail : System.Web.UI.Page
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
            BindData();
        }
    }
    private void BindData()
    { 
    DataSet ds=new DataSet();
      recruiter.UserName=Session["UserName"].ToString();
        ds=recruiter.ShowRecruiterProfile();
        if (ds.Tables[0].Rows.Count > 0)
        {
            DataRow dr = ds.Tables[0].Rows[0];
            txtOrgName.Text = dr[0].ToString();
            txtBusinessSector.Text = dr[1].ToString();
            txtCertificate1.Text = dr[2].ToString();
            txtCertificate2.Text = dr[3].ToString();
            txtCertificate3.Text = dr[4].ToString();
            txtWebsite.Text = dr[5].ToString();
            txtEmailId1.Text = dr[6].ToString();
            txtEmailId2.Text = dr[7].ToString();
            txtAddress.Text = dr[8].ToString();
            txtOrgEnv.Text = dr[9].ToString();
            txtTerms.Text = dr[10].ToString();
            txtOthers.Text = dr[11].ToString();
            txtOrgSize.Text=dr[12].ToString();
        }
        else
        {
            lblMsg.Text = "No Data Found...!";
        }
    }
    protected void btnModify_Click(object sender, EventArgs e)
    {     
            recruiter.UserName=Session["UserName"].ToString();
            recruiter.OrganisationName = txtOrgName.Text.Trim();
            recruiter.BusinessSector=  txtBusinessSector.Text.Trim();
            recruiter.Certificate1= txtCertificate1.Text.Trim();
            recruiter.Certificate2=  txtCertificate2.Text.Trim();
            recruiter.Certificate3=txtCertificate3.Text.Trim();
            recruiter.Website=txtWebsite.Text.Trim();
            recruiter.EmailID1 = txtEmailId1.Text.Trim();
            recruiter.EmailID2 = txtEmailId2.Text.Trim();
            recruiter.Address = txtAddress.Text.Trim();
            recruiter.OrganisationEnvironment = txtOrgEnv.Text.Trim();
            recruiter.TermsAndCondition = txtTerms.Text.Trim();
            recruiter.Others = txtOthers.Text.Trim();
            recruiter.SizeOfOrganisation =int.Parse(txtOrgSize.Text.Trim());
            recruiter.ModifyRecruiterOrganisationDetails();
            lblMsg.Text = "Updated...!";
    }
}
