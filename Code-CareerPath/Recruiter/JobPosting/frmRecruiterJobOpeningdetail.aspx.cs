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

public partial class Recruiter_JobPosting_frmRecruiterJobOpeningdetail : System.Web.UI.Page
{
    JobTypeBL jobtype = new JobTypeBL();
    FunctionalAreaBL role = new FunctionalAreaBL();
    QualificationBL qual = new QualificationBL();
    RecruiterJobOpeningAndOtherDetail jobopen = new RecruiterJobOpeningAndOtherDetail();
    CityBL city = new CityBL();
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
        ddlLocation.DataSource = city.ShowAllCity();
        ddlLocation.DataTextField = "CityName";
        ddlLocation.DataBind();
        ddlLocation.Items.Insert(0, "---Select---");

        ddlJobType.DataSource = jobtype.ShowJobType();
        ddlJobType.DataTextField = "JobType";
        ddlJobType.DataBind();
        ddlJobType.Items.Insert(0, "---Select---");

        ddlFunctionalArea.DataSource = role.ShowFunctionalArea();
        ddlFunctionalArea.DataTextField = "FunctionalArea";
        ddlFunctionalArea.DataBind();
        ddlFunctionalArea.Items.Insert(0, "---Select---");

        ddlQualification.DataSource = qual.ShowQualification();
        ddlQualification.DataTextField = "Qualification";
        ddlQualification.DataBind();
        ddlQualification.Items.Insert(0, "---Select---");
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            jobopen.UserName = Session["UserName"].ToString();
            jobopen.JobID = txtJobId.Text.Trim();
            jobopen.JobCategory = ddlJobType.SelectedItem.Text;
            jobopen.SkillsRequired = txtSkills.Text.Trim();
            jobopen.Role = ddlFunctionalArea.SelectedItem.Text;
            jobopen.MinimumQualification = ddlQualification.SelectedItem.Text;
            jobopen.MaximumAge = int.Parse(txtAge.Text.Trim());
            jobopen.ExperienceYears = int.Parse(txtExperience.Text.Trim());
            jobopen.ExpectedSalary = Convert.ToDecimal(txtExpectedSalary.Text.Trim());
            jobopen.JobLocation = ddlLocation.SelectedItem.Text.Trim();
            jobopen.JobOpeningDate = GMDatePicker1.Date.Date;
            jobopen.JobClosingDate = GMDatePicker2.Date.Date;
            jobopen.JobDescription = txtDescription.Text.Trim();
            jobopen.InsertJobOpeningDetails();
            lblMsg.Text = "Inserted...!";

        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }
    }
}
