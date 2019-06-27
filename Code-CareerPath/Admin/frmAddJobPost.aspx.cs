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

public partial class Admin_frmJobPost : System.Web.UI.Page
{
    JobTypeBL job = new JobTypeBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
        if (!IsPostBack)
        {
            GridView1.DataSource = job.ShowJobType();
            GridView1.DataBind();
            GridView1.Visible = false;
        }
        lblMsg.Text = "";
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            job.JobType = txtJobType.Text.Trim();
            job.Description = txtDesc.Text.Trim();
            job.InsertJobType();
            lblMsg.Text = "Inserted...!";
            GridView1.DataSource = job.ShowJobType();
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
        txtJobType.Text = "";
       
        txtJobType.Focus();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataSource = job.ShowJobType();
        GridView1.DataBind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "UpdateRec")
        {
            Response.Redirect("~/Admin/Update/frmUpdateJobType.aspx?JobId=" + e.CommandArgument);

        }
        else if (e.CommandName == "DeleteRec")
        {
            job.JobId = int.Parse(e.CommandArgument.ToString());
            job.DeleteJobType();
            lblMsg.Text = "Record Deleted..";
            GridView1.DataSource = job.ShowJobType();
            GridView1.DataBind();
        }

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
   
}
