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

public partial class Admin_frmAddQualification : System.Web.UI.Page
{
    QualificationBL qual = new QualificationBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
        if (!IsPostBack)
        {
            GridView1.DataSource = qual.ShowQualification();
            GridView1.DataBind();
            GridView1.Visible = false;
        }
        lblMsg.Text = "";
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            qual.Qualification = txtQualification.Text.Trim();
            qual.Description = txtDescription.Text.Trim();
            qual.QualificationLevel=int.Parse(txtQualificationLevel.Text.Trim());
            qual.InsertQualification();
            lblMsg.Text = "Inserted...!";
            GridView1.DataSource = qual.ShowQualification();
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
        txtDescription.Text = "";
        txtQualification.Text = "";
        txtQualificationLevel.Text = "";
        txtQualification.Focus();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataSource = qual.ShowQualification();
        GridView1.DataBind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "DeleteRec")
        {
            qual.QualificationId = int.Parse(e.CommandArgument.ToString());
            qual.DeleteQualification();
            lblMsg.Text = "Record Deleted..";
            GridView1.DataSource = qual.ShowQualification();
            GridView1.DataBind();
        }
        else if (e.CommandName == "UpdateRec")
        {
            Response.Redirect("~/Admin/Update/frmUpdateQualification.aspx?QualificationId=" + e.CommandArgument);
        }
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        try
        {
            if (CheckBox1.Checked==true )
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
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridView1.DataSource = qual.ShowQualification();
        GridView1.DataBind();
    }
}
