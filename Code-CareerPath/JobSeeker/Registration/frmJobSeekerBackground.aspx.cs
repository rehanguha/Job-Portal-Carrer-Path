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

public partial class JobSeeker_Registration_frmJobSeekerBackground : System.Web.UI.Page
{
    QualificationBL qual = new QualificationBL();
    CountryBusinessLayer country = new CountryBusinessLayer();
    ExperianceBL exp = new ExperianceBL();
    FunctionalAreaBL function = new FunctionalAreaBL();
    JobSeekerRegistrationBL jobseeker = new JobSeekerRegistrationBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        int year =1980;
        if (Session["JobSeekerId"] == null)
        {
            Response.Redirect("~/JobSeeker/Registration/frmJobSeekerRegistration.aspx");
        }
       
        if (!IsPostBack)
        {
            lstDegree.DataSource = qual.ShowQualification();
            lstDegree.DataTextField = "Qualification";
            lstDegree.DataBind();
          
            ddlCountryName.DataSource = country.ShowCountry();
            ddlCountryName.DataTextField = "CountryName";
            ddlCountryName.DataValueField = "CountryId";
            ddlCountryName.DataBind();
            ddlCountryName.Items.Insert(0, "---Select---");

            ddlTotExp.DataSource = exp.ShowExperience();
            ddlTotExp.DataTextField = "ExpType";
            ddlTotExp.DataValueField = "ExpId";
            ddlTotExp.DataBind();
            ddlTotExp.Items.Insert(0, "---Select---");

            ddlWorkField.DataSource = function.ShowFunctionalArea();
            ddlWorkField.DataTextField = "FunctionalArea";
            ddlWorkField.DataValueField = "FunctionalId";
            ddlWorkField.DataBind();
            ddlWorkField.Items.Insert(0, "---Select---");

            while (year < System.DateTime.Now.Year)
            {
                ddlPassingYear.Items.Add(year.ToString());
                year++;
            }
        }
        lblMsg.Text = "";

    }
    
    protected void lstUniversity_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (lstUniversity.SelectedItem.Text  =="Others")
        {
            txtUniversity.Enabled = true;
            txtUniversity.Focus();
        }
        else
        {
            txtUniversity.Enabled = false;
        }
    }

    protected void btnNext_Click(object sender, EventArgs e)
    {
        try
        {
           jobseeker.JobSeekerId = Session["JobSeekerId"].ToString();
           jobseeker.HighestDegree = lstDegree.SelectedItem.Text.Trim();
           jobseeker.Specialisation = txtSpecialization.Text.Trim();
           jobseeker.PassingYear = int.Parse(ddlPassingYear.SelectedValue.Trim());
           jobseeker.Percentage = float.Parse(txtPercentage.Text.Trim());
           if (lstUniversity.SelectedItem.Text == "Others" && lstUniversity.SelectedIndex !=0)
               jobseeker.University = txtUniversity.Text.Trim();
           else
               jobseeker.University = lstUniversity.SelectedItem.Text.Trim();
           jobseeker.Country = ddlCountryName.SelectedItem.Text.Trim();
           jobseeker.TechnicalExp = ddlTotExp.SelectedItem.Text.Trim() + " " + ddlDuration.SelectedItem.Text.Trim();
           jobseeker.WorkField = ddlWorkField.SelectedItem.Text.Trim();
           jobseeker.InsertJobSeekerBackgroundDetails();
           lblMsg.Text = "Inserted...!";
           Response.Redirect("~/JobSeeker/Registration/frmJobSeekerJobDetails.aspx");
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message ;
        }
    }
}
