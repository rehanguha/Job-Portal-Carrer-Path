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

public partial class Admin_Update_frmUpdateExperience : System.Web.UI.Page
{
    ExperianceBL exp = new ExperianceBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            exp.ExpId = int.Parse(Request["ExpId"].ToString());
            DataSet ds = new DataSet();
            ds = exp.ShowExperienceInfoById();
            DataRow dr = ds.Tables[0].Rows[0];
            txtExp.Text = dr[0].ToString();
            ListItem li = ddlDuration.Items.FindByText(dr[1].ToString());
            if (li != null)
            {
                li.Selected = true;
            }
        }

    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/frmAddExperience.aspx");
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            exp.ExpId = int.Parse(Request["ExpId"].ToString());
            exp.ExpType = txtExp.Text.Trim();
            exp.Duration = ddlDuration.SelectedItem.Text.Trim();
            exp.UpdateExperience();
            lblMsg.Text = "Experience Updated...!";
        }
        catch (Exception)
        {

            throw;
        }
    }
}
