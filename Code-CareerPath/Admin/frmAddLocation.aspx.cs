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

public partial class Admin_frmLocation : System.Web.UI.Page
{
    StateBL state = new StateBL();
    CityBL city = new CityBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
        if (!IsPostBack)
        {
            ddlStateName.DataSource = state.ShowAllState();
            ddlStateName.DataTextField = "StateName";
            ddlStateName.DataValueField = "StateId";
            ddlStateName.DataBind();
            ddlStateName.Items.Insert(0, "---Select---");
            GridView1.DataSource = city.ShowAllCity();
            GridView1.DataBind();
            GridView1.Visible = false;
        }
        lblMsg.Text = "";
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            city.Name = txtName.Text.Trim();
            city.Description = txtDesc.Text.Trim();
            city.StateId = int.Parse(ddlStateName.SelectedValue);
            city.InsertCity();
            lblMsg.Text = "Inserted...!";
            GridView1.DataSource = city.ShowAllCity();
            GridView1.DataBind();
            btnClear_Click(sender, e);
        }
        catch (Exception ex)
        {
        lblMsg.Text=ex.Message.ToString();
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
        try
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
        catch (Exception ex)
        {

            lblMsg.Text = ex.Message;
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        try
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataSource = city.ShowAllCity();
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
            city.CityId = int.Parse(e.CommandArgument.ToString());
            city.DeleteCity();
            lblMsg.Text = "Record Deleted..";
            GridView1.DataSource = city.ShowAllCity();
            GridView1.DataBind();
        }
        else if (e.CommandName == "UpdateRec")
        {
            Response.Redirect("~/Admin/Update/frmUpdateCity.aspx?CityId=" + e.CommandArgument);
        }
    }
   
}
