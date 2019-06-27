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

public partial class Admin_Update_frmUpdateJobType : System.Web.UI.Page
{
    JobTypeBL job = new JobTypeBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            job.JobId = int.Parse(Request["JobId"].ToString());
            DataSet ds = new DataSet();
            ds = job.ShowJobTypeInfoById();
            DataRow dr = ds.Tables[0].Rows[0];
            txtJobType.Text = dr[0].ToString();
            txtDesc.Text = dr[1].ToString();

        }

    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/frmAddJobPost.aspx");
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            job.JobId = int.Parse(Request["JobId"].ToString());
            job.JobType = txtJobType.Text.Trim();
            job.Description = txtDesc.Text.Trim();
            job.UpdateJobType();
            lblMsg.Text = "Updated...!";
        }
        catch (Exception)
        {

            throw;
        }
    }
}
