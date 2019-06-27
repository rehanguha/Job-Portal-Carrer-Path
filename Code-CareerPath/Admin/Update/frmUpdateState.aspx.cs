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

public partial class Admin_Update_frmUpdateState : System.Web.UI.Page
{
    StateBL state = new StateBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            state.StateId = int.Parse(Request["StateId"].ToString());
            DataSet ds = new DataSet();
            ds = state.ShowStateInfoById();
            DataRow dr = ds.Tables[0].Rows[0];
            txtName.Text = dr[0].ToString();
            txtDesc.Text = dr[1].ToString();
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            state.StateId = int.Parse(Request["StateId"].ToString());
            state.Name = txtName.Text.Trim();
            state.Description = txtDesc.Text.Trim();
            state.UpdateState();
            lblMsg.Text = "State Updated...!";
        }
        catch (Exception)
        {

            throw;
        }
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/frmAddState.aspx");
    }
}
