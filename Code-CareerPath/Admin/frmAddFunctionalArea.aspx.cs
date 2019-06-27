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

public partial class Admin_frmAddFunctionalArea : System.Web.UI.Page
{
    FunctionalAreaBL function = new FunctionalAreaBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
        if (!IsPostBack)
        {
            GridView1.DataSource = function.ShowFunctionalArea();
            GridView1.DataBind();
            GridView1.Visible = false;
        }
        lblMsg.Text = "";
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            function.FunctionalArea = txtFunction.Text.Trim();
            function.Description = txtDesc.Text.Trim();
            function.InsertQualification();
            lblMsg.Text = "Inserted...!";
            GridView1.DataSource = function.ShowFunctionalArea();
            GridView1.DataBind();
            btnClear_Click(sender, e);
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message.ToString();
        }

    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtDesc.Text = "";
        txtFunction.Text = "";
       
        txtFunction.Focus();
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
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataSource = function.ShowFunctionalArea();
        GridView1.DataBind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
       if (e.CommandName == "UpdateRec")
        {
            Response.Redirect("~/Admin/Update/frmUpdateFunctionalArea.aspx?FunctionalId=" + e.CommandArgument);
        }
        else if (e.CommandName == "DeleteRec")
        { 
        function.FunctionalId = int.Parse(e.CommandArgument.ToString());
        function.DeleteFunctionalArea();
        lblMsg.Text = "Record Deleted..";
        GridView1.DataSource = function.ShowFunctionalArea();
        GridView1.DataBind();
        }
    }
    
    
}
