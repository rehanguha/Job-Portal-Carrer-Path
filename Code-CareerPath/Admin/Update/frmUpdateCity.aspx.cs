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

public partial class Admin_Update_frmUpdateCity : System.Web.UI.Page
{
    CityBL city = new CityBL();
    StateBL state = new StateBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
        {
          
        city.CityId=int.Parse(Request["CityId"].ToString());
        DataSet ds = new DataSet();
        ds = city.ShowCityInfoById();
        DataRow dr = ds.Tables[0].Rows[0];
        txtName.Text = dr[0].ToString();
        txtDesc.Text = dr[1].ToString();
        }
        }
        catch (Exception)
        {
            
            throw;
        }

    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            city.CityId = int.Parse(Request["CityId"].ToString());
            city.Name = txtName.Text.Trim();
            city.Description = txtDesc.Text.Trim();
            city.UpdateCity();
            lblMsg.Text = "City Updated...!";
        }
        catch (Exception)
        {

            throw;
        }
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/frmAddLocation.aspx");
    }
}
