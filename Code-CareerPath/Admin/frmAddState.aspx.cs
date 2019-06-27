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

public partial class Admin_frmAddState : System.Web.UI.Page
{
    CountryBusinessLayer country = new CountryBusinessLayer();
    StateBL state = new StateBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
        if (!IsPostBack)
        {
            ddlCountryName.DataSource = country.ShowCountry();
            ddlCountryName.DataTextField = "CountryName";
            ddlCountryName.DataValueField = "CountryId";
            ddlCountryName.DataBind();
            ddlCountryName.Items.Insert(0, "---Select---");

            GridView1.DataSource = state.ShowAllState();
            GridView1.DataBind();
            GridView1.Visible = false;
        }
        lblMsg.Text = "";
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            state.Name = txtName.Text.Trim();
            state.Description = txtDesc.Text.Trim();
            state.CountryId = int.Parse(ddlCountryName.SelectedValue);
            state.InsertState();
            lblMsg.Text = "Inserted...!";
            GridView1.DataSource = state.ShowAllState();
            GridView1.DataBind();
            btnClear_Click(sender, e);
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
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        try
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataSource = state.ShowAllState();
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "DeleteRec")
        {
            state.StateId = int.Parse(e.CommandArgument.ToString());
            state.DeleteState();
            lblMsg.Text = "Record Deleted Successfully...!";
            GridView1.DataSource = state.ShowAllState();
            GridView1.DataBind();
           
        }
        if (e.CommandName == "UpdateRec")
        {
            Response.Redirect("~/Admin/Update/frmUpdateState.aspx?StateId=" + e.CommandArgument);
        }
    }
}
