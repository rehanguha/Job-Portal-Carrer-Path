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

public partial class Admin_ViewReports_Jobseeker_frmViewRegisteredJobSeekerByDate : System.Web.UI.Page
{
    JobSeekerRegistrationBL jobseeker = new JobSeekerRegistrationBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        try
        {
            jobseeker.FromDate = GMDatePicker1.Date;
            jobseeker.ToDate = GMDatePicker2.Date;
            GridView1.DataSource = jobseeker.ShowAllRegisteredJobSeekerByDate();
            GridView1.DataBind();
        }
        catch (Exception)
        {

            throw;
        }

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Update")
        {
            Session["JobseekerId"] = e.CommandArgument.ToString();
            Response.Redirect("~/Admin/ViewReports/Jobseeker/frmUpdateJobSeekerInfo.aspx");

        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        Button btn;
        foreach (GridViewRow gr in GridView1.Rows)
        {
            btn = (Button)gr.FindControl("btndelete");
            jobseeker.JobSeekerId =btn.CommandArgument.ToString();
        }

        jobseeker.DeleteRegisterJobseekerInfo();
        jobseeker.FromDate = GMDatePicker1.Date;
        jobseeker.ToDate = GMDatePicker2.Date;
        GridView1.DataSource = jobseeker.ShowAllRegisteredJobSeekerByDate();
        GridView1.DataBind();
    }
    protected void btnView_Click(object sender, EventArgs e)
    {
        try
        {
            jobseeker.FromDate = GMDatePicker1.Date;
            jobseeker.ToDate = GMDatePicker2.Date;
            GridView1.DataSource = jobseeker.ShowAllRegisteredJobSeekerByDate();
            GridView1.DataBind();
        }
        catch (Exception)
        {
            
            throw;
        }

    }
    
}
