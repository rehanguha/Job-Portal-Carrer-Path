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

public partial class Admin_Update_frmUpdateCountry : System.Web.UI.Page
{
    CountryBusinessLayer country = new CountryBusinessLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        { 
        country.CountryId=int.Parse(Request["CountryId"].ToString());
        DataSet ds = new DataSet();
        ds = country.ShowCountryInfoById();
        DataRow dr = ds.Tables[0].Rows[0];
        txtName.Text = dr[0].ToString();
        txtDesc.Text = dr[1].ToString();
        }

    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            country.CountryId = int.Parse(Request["CountryId"].ToString());
            country.Name = txtName.Text.Trim();
            country.Description = txtDesc.Text.Trim();
            country.UpdateCountry();
            lblMsg.Text = "Country Updated...!";
        }
        catch (Exception)
        {
            
            throw;
        }
       
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/frmAddCountry.aspx");
    }
}
