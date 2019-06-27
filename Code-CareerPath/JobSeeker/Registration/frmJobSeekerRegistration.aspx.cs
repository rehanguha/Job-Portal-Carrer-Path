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
using System.Drawing;

public partial class JobSeeker_Registration_frmJobSeekerRegistration : System.Web.UI.Page
{
    CountryBusinessLayer country = new CountryBusinessLayer();
    StateBL state = new StateBL();
    CityBL city = new CityBL();
    JobSeekerRegistrationBL jobseeker = new JobSeekerRegistrationBL();
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {
            ddlCountry.DataSource = country.ShowCountry();
            ddlCountry.DataTextField = "CountryName";
            ddlCountry.DataValueField = "CountryId";
            ddlCountry.DataBind();
            ddlCountry.Items.Insert(0, "---Select---");
        }
        lblExists.Text = "";
        lblMsg.Text = "";
    }
   
    protected void btnNext_Click(object sender, EventArgs e)
    {
        try
        {
            jobseeker.JobSeekerId = txtName.Text.Trim();
            jobseeker.Password = txtPassword.Text.Trim();
            jobseeker.HintQuestion = ddlQuestion.SelectedItem.Text;
            jobseeker.Answer = txtAnswer.Text.Trim();
            jobseeker.Date = System.DateTime.Now.Date;
            jobseeker.FirstName = txtFName.Text.Trim();
            jobseeker.LastName = txtLName.Text.Trim();
            jobseeker.DOB = GMDatePicker1.Date;
            jobseeker.Address = txtAddress.Text.Trim();
            jobseeker.City = ddlCity.SelectedItem.Text;
            jobseeker.State = ddlState.SelectedItem.Text;
            jobseeker.PinCode = txtPinCode.Text.Trim();
            jobseeker.Country = ddlCountry.SelectedItem.Text;
            jobseeker.EmailID = txtEmail.Text.Trim();
            jobseeker.Phone1 = txtPhone1.Text.Trim();
            jobseeker.Phone2 = txtPhone2.Text.Trim();
            jobseeker.FaxNo = txtFaxNo.Text.Trim();
            jobseeker.InsertJobSeekerLoginInfo();
            jobseeker.InsertJobSeekerContactInfo();
            Session["JobSeekerId"] = txtName.Text.Trim();
           Response.Redirect("~/JobSeeker/Registration/frmJobSeekerBackground.aspx");
        }
        catch (Exception ex)
        {

            lblMsg.Text = ex.Message.ToString();
        }
    }
    protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            country.CountryId = int.Parse(ddlCountry.SelectedValue);
            ddlState.DataSource = country.GetStateByCountry();
            ddlState.DataTextField = "StateName";
            ddlState.DataValueField = "StateId";
            ddlState.DataBind();
            ddlState.Items.Insert(0, "---Select---");
        }
        catch (Exception)
        {
            lblMsg.Text = "Plz Select Country";
        }
    }
    protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            city.StateId = int.Parse(ddlState.SelectedValue);
            ddlCity.DataSource = city.GetCityByState();
            ddlCity.DataTextField = "CityName";
            ddlCity.DataValueField = "CityId";
            ddlCity.DataBind();
            ddlCity.Items.Insert(0, "---Select---");
        }
        catch (Exception)
        {
            lblMsg.Text = "Plz Select State";
        }
    }
    protected void lnkCheckAvailability_Click(object sender, EventArgs e)
    {
        if (txtName.Text != "")
        {
            jobseeker.JobSeekerId = txtName.Text;
            try
            {
                if (jobseeker.CheckUserAvailability() == true)
                {
                    lblExists.Font.Bold = true;
                    lblExists.ForeColor = Color.Red;
                    lblExists.BackColor = Color.Silver;
                    lblExists.Text = "User Name Already Exists...!";
                }
                else
                {
                    lblExists.ForeColor = Color.Blue ;
                    lblExists.BackColor = Color.Silver;
                    lblExists.Text = "User Name Not Exists...!";
                }
            }
            catch (Exception ex)
            {
                lblMsg.Text = ex.Message;
            }
        }
        else
            Page.RegisterClientScriptBlock("Dhanush", "<script>alert('Enter Name To Check Existance')</script>");
    }
}
