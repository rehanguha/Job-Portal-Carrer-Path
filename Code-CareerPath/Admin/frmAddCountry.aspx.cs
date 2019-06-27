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

public partial class Admin_frmAddCountry : System.Web.UI.Page
{
    CountryBusinessLayer country = new CountryBusinessLayer();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
        if (!IsPostBack)
        {
            GridView1.DataSource = country.ShowCountry();
            GridView1.DataBind();
            GridView1.Visible = false;
        }
        lblMsg.Text = "";
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            country.Name = txtName.Text.Trim();
            country.Description = txtDesc.Text.Trim();
            country.InsertCountry();
            lblMsg.Text = "Inserted...!";
            GridView1.DataSource = country.ShowCountry();
            GridView1.DataBind();
            btnClear_Click(sender ,e);
        }
        catch (Exception ex)
        {
             lblMsg.Text=ex.Message;
        }
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtDesc.Text = "";
        txtName.Text = "";
       
        txtName.Focus();
    }
  
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if(e.CommandName=="UpdateRec")
        {
            Response.Redirect("~/Admin/Update/frmUpdateCountry.aspx?CountryId=" + e.CommandArgument);

        }
        else if (e.CommandName == "DeleteRec")
        {
            country.CountryId = int.Parse(e.CommandArgument.ToString());
            country.DeleteCountry();
            lblMsg.Text = "Record Deleted..";
            GridView1.DataSource = country.ShowCountry();
            GridView1.DataBind();
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        try
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataSource = country.ShowCountry();
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox1.Checked)
        {
            GridView1.Visible = true;
        }
        else
        {
            GridView1.Visible = false;
        }
    }
}
