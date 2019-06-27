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

public partial class Admin_frmAddExperience : System.Web.UI.Page
{
    ExperianceBL exp = new ExperianceBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
        if (!IsPostBack)
        {
            GridView1.DataSource = exp.ShowExperience();
            GridView1.DataBind();
            GridView1.Visible = false;
        }
        lblMsg.Text = "";
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            exp.ExpType = txtExp.Text.Trim();
            exp.Duration = ddlDuration.SelectedItem.Text;
            exp.InsertExperiance();
            lblMsg.Text = "Inserted...!";
            GridView1.DataSource = exp.ShowExperience();
            GridView1.DataBind();
            btnClear_Click(sender, e);
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtExp.Text = "";
        txtExp.Focus();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
           GridView1.PageIndex = e.NewPageIndex;
           GridView1.DataSource = exp.ShowExperience();
           GridView1.DataBind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "UpdateRec")
        {
            Response.Redirect("~/Admin/Update/frmUpdateExperience.aspx?ExpId=" + e.CommandArgument);
        }
        else if (e.CommandName == "DeleteRec")
        {
            exp.ExpId = int.Parse(e.CommandArgument.ToString());
            exp.DeleteExperience();
            lblMsg.Text = "Record Deleted..";
            GridView1.DataSource = exp.ShowExperience();
            GridView1.DataBind();
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
