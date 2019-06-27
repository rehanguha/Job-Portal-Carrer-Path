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

public partial class JobSeeker_Registration_frmJobSeekerJobDetails : System.Web.UI.Page
{
    JobTypeBL job = new JobTypeBL();
    CountryBusinessLayer country = new CountryBusinessLayer();
    StateBL state = new StateBL();
    CityBL city = new CityBL();
    JobSeekerRegistrationBL jobseeker = new JobSeekerRegistrationBL();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["JobSeekerId"] == null)
        {
            Response.Redirect("~/JobSeeker/Registration/frmJobSeekerRegistration.aspx");
        }
        if (!IsPostBack)
        {
            ddlJobType.DataSource = job.ShowJobType();
            ddlJobType.DataTextField = "JobType";
            ddlJobType.DataValueField = "JobId";
            ddlJobType.DataBind();
            ddlJobType.Items.Insert(0, "---Select---");

            ddlCountry1.DataSource = country.ShowCountry();
            ddlCountry1.DataTextField = "CountryName";
            ddlCountry1.DataValueField = "CountryId";
            ddlCountry1.DataBind();
            ddlCountry1.Items.Insert(0, "---Select---");

            ddlCountry2.DataSource = country.ShowCountry();
            ddlCountry2.DataTextField = "CountryName";
            ddlCountry2.DataValueField = "CountryId";
            ddlCountry2.DataBind();
            ddlCountry2.Items.Insert(0, "---Select---");
            lstEmploymentType.SelectedIndex = 0;
        }
    }
    protected void ddlCountry1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            country.CountryId = int.Parse(ddlCountry1.SelectedValue);
            ddlState1.DataSource = country.GetStateByCountry();
            ddlState1.DataTextField = "StateName";
            ddlState1.DataValueField = "StateId";
            ddlState1.DataBind();
            ddlState1.Items.Insert(0, "---Select---");
        }
        catch (Exception)
        {
            lblMsg.Text = "Plz Select Country";
        }
    }
    protected void ddlCountry2_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            country.CountryId = int.Parse(ddlCountry2.SelectedValue);
            ddlState2.DataSource = country.GetStateByCountry();
            ddlState2.DataTextField = "StateName";
            ddlState2.DataValueField = "StateId";
            ddlState2.DataBind();
            ddlState2.Items.Insert(0, "---Select---");
        }
        catch (Exception)
        {
            lblMsg.Text = "Plz Select Country";
        }
    }
    protected void ddlState1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            city.StateId = int.Parse(ddlState1.SelectedValue);
            ddlCity1.DataSource = city.GetCityByState();
            ddlCity1.DataTextField = "CityName";
            ddlCity1.DataValueField = "CityId";
            ddlCity1.DataBind();
            ddlCity1.Items.Insert(0, "---Select---");
        }
        catch (Exception)
        {
            lblMsg.Text = "Plz Select State";
        }
    }
    protected void ddlState2_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            city.StateId = int.Parse(ddlState2.SelectedValue);
            ddlCity2.DataSource = city.GetCityByState();
            ddlCity2.DataTextField = "CityName";
            ddlCity2.DataValueField = "CityId";
            ddlCity2.DataBind();
            ddlCity2.Items.Insert(0, "---Select---");
        }
        catch (Exception)
        {
            lblMsg.Text = "Plz Select State";
        }
    }
    protected void btnNext_Click(object sender, EventArgs e)
    {
        try
        {
             jobseeker.JobSeekerId = Session["JobSeekerId"].ToString();
          
            jobseeker.JobTitle = ddlJobType.SelectedItem.Text;
            jobseeker.Location1 = ddlCity1.SelectedItem.Text;
            jobseeker.State1 = ddlState1.SelectedItem.Text;
            jobseeker.Country1 = ddlCountry1.SelectedItem.Text;
            if (ddlCountry2.SelectedItem.Text == "---Select---")
            {
                jobseeker.Country2 = "";
                jobseeker.Location2 = "";
                jobseeker.State2 = "";
            }
            else
            {
                jobseeker.Country2 = ddlCountry2.SelectedItem.Text;
                jobseeker.Location2 = ddlCity2.SelectedItem.Text;
                jobseeker.State2 = ddlState2.SelectedItem.Text;
            }


            if (chkWillingRelocate.Checked)
            {
                jobseeker.WillRelocate = "Yes";
            }
            else
            {
                jobseeker.WillRelocate = "No";

            }
            if (chktelecommute.Checked)
            {
                jobseeker.WillTelecommute = "Yes";
            }
            else
            {
                jobseeker.WillTelecommute = "No";

            }
            jobseeker.WillTravel = ddlTravelWill.SelectedItem.Text;
            jobseeker.FullTimeSalary = ddlFullTimeSalary.SelectedItem.Text;
            jobseeker.HourlySalary = ddlPartTimeSalary.SelectedItem.Text;
            string Employement = "";

            for (int count = 0; count < lstEmploymentType.Items.Count; count++)
            {
                if (lstEmploymentType.Items[count].Selected==true)
                    Employement =Employement+ lstEmploymentType.Items[count].Text  + ",";
            }

            Employement = Employement.Remove(Employement.Length - 1, 1);
            string[] str = Employement.Split(',');
            jobseeker.TypeOfEmployment1 = "";
            jobseeker.TypeOfEmployment2 = "";
            jobseeker.TypeOfEmployment3 = "";
            if (str.Length > 0)
            {
                for (int i = 0; i < str.Length; i++)
                {
                    if(i<3)
                    {
                    if (i == 0)
                    {
                        if (str[i].ToString() != null)
                            jobseeker.TypeOfEmployment1 = str[i].ToString();
                        else
                            jobseeker.TypeOfEmployment1 = "";
                    }

                    if (i == 1)
                    {
                        if (str[i].ToString() != null)
                            jobseeker.TypeOfEmployment2 = str[i].ToString();
                        else
                            jobseeker.TypeOfEmployment2 = "";
                    }
                    if (i == 2)
                    {
                        if (str[i].ToString() != null)
                            jobseeker.TypeOfEmployment3 = str[i].ToString();
                        else
                            jobseeker.TypeOfEmployment3 = "";
                    }
                    }
                    else
                    {

                        break;
                    }
                }
            }
         
           jobseeker.InsertJobSeekerJobDetails();
           lblMsg.Text = "Inserted...!";
           Response.Redirect("~/JobSeeker/Registration/frmJobSeekerTechnicalSkillsDetail.aspx");
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;             
        }
    }
   
}
