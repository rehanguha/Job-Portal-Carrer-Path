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

public partial class Admin_ViewReports_Jobseeker_frmModifyJobSeekerProfile : System.Web.UI.Page
{
    JobSeekerRegistrationBL jobseeker = new JobSeekerRegistrationBL();
    CountryBusinessLayer country = new CountryBusinessLayer();
    StateBL state = new StateBL();
    CityBL city = new CityBL();
    DataRow dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
        if (!IsPostBack)
        {
            
            //ddlCountry.DataSource = country.ShowCountry();
            //ddlCountry.DataTextField = "CountryName";
            //ddlCountry.DataValueField = "CountryId";
            //ddlCountry.DataBind();
            //ddlCountry.Items.Insert(0, "---Select---");

            //ddlState.DataSource = state.ShowAllState();
            //ddlState.DataTextField = "StateName";
            //ddlState.DataValueField = "StateId";
            //ddlState.DataBind();
            //ddlState.Items.Insert(0, "---Select---");

            //ddlCity.DataSource = city.ShowAllCity();
            //ddlCity.DataTextField = "CityName";
            //ddlCity.DataValueField = "CityId";
            //ddlCity.DataBind();
            //ddlCity.Items.Insert(0, "---Select---");

            BindData();
           
        }

    }
    private void BindData()
    {
       jobseeker.JobSeekerId = Session["JobSeekerId"].ToString();
       DataSet ds = new DataSet();
        ds = jobseeker.ShowContactDetail();
        if (ds.Tables[0].Rows.Count > 0)
        {
            dr = ds.Tables[0].Rows[0];
            txtFName.Text = dr[0].ToString();
            txtLName.Text = dr[1].ToString();
            TextBox1.Text=dr[2].ToString();
            txtAddress.Text = dr[3].ToString();
            txtContri.Text = dr[4].ToString();
            txtState.Text = dr[5].ToString();
            txtCity.Text = dr[7].ToString();
           // ListItem li = ddlCity.Items.FindByText();
           // if (li != null)
           // {
           //     li.Selected = true;
           // }
           // ListItem li1 = ddlState.Items.FindByText();
           // if (li1 != null)
           // {
           //     li1.Selected = true;
           // }
           // txtPinCode.Text = dr[6].ToString();
           //ListItem li2 = ddlCountry.Items.FindByText();
           // if (li2 != null)
           // {
           //     li2.Selected = true;
           // }
            txtEmail.Text = dr[8].ToString();
            txtPhone1.Text = dr[9].ToString();
            txtPhone2.Text = dr[10].ToString();
            txtFaxNo.Text = dr[11].ToString();

        }
    }
    //protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    try
    //    {
    //        country.CountryId = int.Parse(ddlCountry.SelectedValue);
    //        ddlState.DataSource = country.GetStateByCountry();
    //        ddlState.DataTextField = "StateName";
    //        ddlState.DataValueField = "StateId";
    //        ddlState.DataBind();
    //        ddlState.Items.Insert(0, "---Select---");
    //    }
    //    catch (Exception)
    //    {
    //        lblMsg.Text = "Plz Select Country";
    //    }
    //}
    //protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    try
    //    {
    //        city.StateId = int.Parse(ddlState.SelectedValue);
    //        ddlCity.DataSource = city.GetCityByState();
    //        ddlCity.DataTextField = "CityName";
    //        ddlCity.DataValueField = "CityId";
    //        ddlCity.DataBind();
    //        ddlCity.Items.Insert(0, "---Select---");
    //    }
    //    catch (Exception)
    //    {
    //        lblMsg.Text = "Plz Select State";
    //    }
    //}



    //protected void btnModify_Click(object sender, EventArgs e)
    //{
    //    try
    //    {
    //        jobseeker.JobSeekerId = Session["JobSeekerId"].ToString();
    //        jobseeker.FirstName = txtFName.Text.Trim();
    //        jobseeker.LastName = txtLName.Text.Trim();
    //        jobseeker.DOB = GMDatePicker1.Date.Date;
    //        jobseeker.Address = txtAddress.Text.Trim();
    //        jobseeker.City = ddlCity.SelectedItem.Text;
    //        jobseeker.State = ddlState.SelectedItem.Text;
    //        jobseeker.PinCode = txtPinCode.Text.Trim();
    //        jobseeker.Country = ddlCountry.SelectedItem.Text;
    //        jobseeker.EmailID = txtEmail.Text.Trim();
    //        jobseeker.Phone1 = txtPhone1.Text.Trim();
    //        jobseeker.Phone2 = txtPhone2.Text.Trim();
    //        jobseeker.FaxNo = txtFaxNo.Text.Trim();
    //        jobseeker.ModifyJobseekerContactDetails();
    //        lblMsg.Text = "Updated...!";
    //    }
    //    catch (Exception)
    //    {

    //        throw;
    //    }
    //}
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/ViewReports/Jobseeker/frmUpdateJobSeekerInfo.aspx");
    }
    
}
