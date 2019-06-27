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

public partial class Recruiter_Registration_frmRecruiterOrganizationDetail : System.Web.UI.Page
{
    RecruiterRegistrationBL recruiter = new RecruiterRegistrationBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        { 

        }
        lblMsg.Text = "";
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            recruiter.UserName = Session["UserName"].ToString();
            recruiter.OrganisationName = txtOrgName.Text.Trim();
            recruiter.BusinessSector = txtBusinessSector.Text.Trim();
            recruiter.Certificate1 = txtCertificate1.Text;
            recruiter.Certificate2 = txtCertificate2.Text;
            recruiter.Certificate3 = txtCertificate3.Text;
            recruiter.Website = txtWebsite.Text.Trim();
            recruiter.EmailID1= txtEmailId1.Text.Trim();
            recruiter.EmailID2 = txtEmailId2.Text.Trim();
            recruiter.Address = txtAddress.Text.Trim();
            recruiter.OrganisationEnvironment = txtOrgEnv.Text.Trim();
            recruiter.TermsAndCondition = txtTerms.Text.Trim();
            recruiter.Others = txtOthers.Text.Trim();
            recruiter.SizeOfOrganisation =int.Parse(txtOrgSize.Text.Trim());
            recruiter.InsertRecruiterOrganisationDetails();
            lblMsg.Text = "Your Registration Completed Successfully Completed...Thanku";
            ClearData();
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }
    }

    void ClearData()
    {
        txtAddress.Text = "";
        txtBusinessSector.Text = "";
        txtCertificate1.Text = "";
        txtCertificate2.Text = "";
        txtCertificate3.Text = "";
        txtEmailId1.Text = "";
        txtEmailId2.Text = "";
        txtOrgEnv.Text = "";
        txtOrgName.Text = "";
        txtOrgSize.Text = "";
        txtOthers.Text = "";
        txtTerms.Text = "";
        txtWebsite.Text = "";
    }
}
