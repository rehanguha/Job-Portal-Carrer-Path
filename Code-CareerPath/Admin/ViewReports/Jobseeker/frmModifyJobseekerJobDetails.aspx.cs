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

public partial class Admin_ViewReports_Jobseeker_frmModifyJobseekerJobDetails : System.Web.UI.Page
{
    JobTypeBL job = new JobTypeBL();
    CountryBusinessLayer country = new CountryBusinessLayer();
    StateBL state = new StateBL();
    CityBL city = new CityBL();
    JobSeekerRegistrationBL jobseeker = new JobSeekerRegistrationBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
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
            BindData();
        }


    }
    private void BindData()
    {
        try
        {
            jobseeker.JobSeekerId = Session["JobSeekerId"].ToString();
           
            DataRow dr;
            DataSet ds = new DataSet();
            ds = jobseeker.ShowJobseekerJobDetail();
            if (ds.Tables[0].Rows.Count > 0)
            {
                dr = ds.Tables[0].Rows[0];
                ListItem li = ddlJobType.Items.FindByText(dr[0].ToString());
                if (li != null)
                {
                    li.Selected = true;
                }
                ListItem li1 = ddlCity1.Items.FindByText(dr[1].ToString());
                if (li1 != null)
                {
                    li1.Selected = true;
                }
                ListItem li2 = ddlState1.Items.FindByText(dr[2].ToString());
                if (li2 != null)
                {
                    li2.Selected = true;
                }
                ListItem li3 = ddlCountry1.Items.FindByText(dr[3].ToString());
                if (li3 != null)
                {
                    li3.Selected = true;
                }
                ListItem li4 = ddlCity2.Items.FindByText(dr[4].ToString());
                if (li4 != null)
                {
                    li4.Selected = true;
                }
                ListItem li5 = ddlState2.Items.FindByText(dr[5].ToString());
                if (li5 != null)
                {
                    li5.Selected = true;
                }
                ListItem li6 = ddlCountry2.Items.FindByText(dr[6].ToString());
                if (li6 != null)
                {
                    li6.Selected = true;
                }
                if (dr[7].ToString() == "Yes")
                {
                    chkWillingRelocate.Checked = true;
                }
                else
                {
                    chkWillingRelocate.Checked =false;

                }
                if (dr[8].ToString() == "Yes")
                {
                    chktelecommute.Checked = true;
                }
                else
                {
                    chktelecommute.Checked = false;

                }
                ListItem li7 = ddlTravelWill.Items.FindByText(dr[9].ToString());
                if (li7 != null)
                {
                    li7.Selected = true;
                }
                ListItem li8 = ddlFullTimeSalary.Items.FindByText(dr[10].ToString());
                if (li8 != null)
                {
                    li8.Selected = true;
                }
                ListItem li9 = ddlPartTimeSalary.Items.FindByText(dr[11].ToString());
                if (li9 != null)
                {
                    li9.Selected = true;
                }
                //--------------------------------------------------------------

                ListItem li10 = lstEmploymentType.Items.FindByText(dr[12].ToString());
                if (li10 != null)
                {
                    li10.Selected = true;
                }
                ListItem li11 = lstEmploymentType.Items.FindByText(dr[13].ToString());
                if (li11 != null)
                {
                    li11.Selected = true;
                }
                ListItem li12 = lstEmploymentType.Items.FindByText(dr[14].ToString());
                if (li12 != null)
                {
                    li12.Selected = true;
                }
            }
            else
            {
                lblMsg.Text = "No Row Found";
            }
        }
        catch (Exception)
        {
            
            throw;
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
    protected void btnModify_Click(object sender, EventArgs e)
    {

        try
        {
            //jobseeker.JobSeekerId = Session["JobSeekerId"].ToString();
            jobseeker.JobSeekerId = "S";
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

                if (lstEmploymentType.Items[count].Selected == true)
                    Employement = Employement + lstEmploymentType.Items[count].Text + ",";


            }
            string[] str = Employement.Split(',');
            if (str.Length > 0)
            {
                for (int i = 0; i < str.Length; i++)
                {
                    if (i < 3)
                    {
                        if (i == 0)
                        {
                            jobseeker.TypeOfEmployment1 = str[i].ToString();
                        }
                        if (i == 1)
                        {
                            jobseeker.TypeOfEmployment2 = str[i].ToString();
                        }
                        if (i == 2)
                        {
                            jobseeker.TypeOfEmployment3 = str[i].ToString();
                        }
                    }
                    else
                    {

                        break;
                    }
                }
            }
            jobseeker.ModifyJobseekerJobDetails();
            lblMsg.Text = "Updated...!";
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
