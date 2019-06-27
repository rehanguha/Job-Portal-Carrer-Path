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

public partial class Admin_Update_frmUpdateFunctionalArea : System.Web.UI.Page
{
    FunctionalAreaBL function = new FunctionalAreaBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            function.FunctionalId = int.Parse(Request["FunctionalId"].ToString());
            DataSet ds = new DataSet();
            ds = function.ShowFunctionInfoById();
            DataRow dr = ds.Tables[0].Rows[0];
            txtFunction.Text = dr[0].ToString();
            txtDesc.Text=dr[1].ToString();
           
        }

    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/frmAddFunctionalArea.aspx");
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            function.FunctionalId = int.Parse(Request["FunctionalId"].ToString());
            function.FunctionalArea = txtFunction.Text.Trim();
            function.Description = txtDesc.Text.Trim();
            function.UpdateFunctionalArea();
            lblMsg.Text = "Updated...!";
        }
        catch (Exception)
        {

            throw;
        }
    }
}
