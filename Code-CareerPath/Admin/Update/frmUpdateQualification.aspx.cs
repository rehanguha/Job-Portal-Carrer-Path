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

public partial class Admin_Update_frmUpdateQualification : System.Web.UI.Page
{
    QualificationBL qual = new QualificationBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            qual.QualificationId = int.Parse(Request["QualificationId"].ToString());
            DataSet ds = new DataSet();
            ds = qual.ShowQualificationInfoById();
            DataRow dr = ds.Tables[0].Rows[0];
            txtQualification.Text = dr[0].ToString();
            txtDescription.Text = dr[1].ToString();

        }
    }

    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/frmAddQualification.aspx");
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            qual.QualificationId = int.Parse(Request["QualificationId"].ToString());
            qual.Qualification = txtQualification.Text.Trim();
            qual.Description = txtDescription.Text.Trim();
            qual.UpdateQualification();
            lblMsg.Text = "Updated...!";
        }
        catch (Exception)
        {

            throw;
        }
    }
}
