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

public partial class JobSeeker_SearchJobs_frmShowJobsBasedonCategory : System.Web.UI.Page
{
    JobTypeBL job = new JobTypeBL();
    RecruiterJobOpeningAndOtherDetail recruiter = new RecruiterJobOpeningAndOtherDetail();
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["JobSeekerId"] == null)
        {
            Response.Redirect("~/frmJobSeekerLogin.aspx");
        }
        if (!IsPostBack)
        {
            BindData();
        }

    }
    private void BindData()
    {
        ddlCategory.DataSource = job.ShowJobType();
        ddlCategory.DataTextField = "JobType";
        ddlCategory.DataBind();
        ddlCategory.Items.Insert(0, "---Select---");

    }
    private void BindGridview()
    {

        GridView1.DataSource = recruiter.ShowAllJobByCategory();
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        try
        {
            GridView1.PageIndex = e.NewPageIndex;
            recruiter.JobCategory = ddlCategory.SelectedItem.Text;
            BindGridview();
        }
        catch (Exception)
        {

            throw;
        }

    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        try
        {
            GridView1.SelectedIndex = e.NewSelectedIndex;
            foreach (GridViewRow gr in GridView1.Rows)
            {
                if (gr.RowIndex == GridView1.SelectedIndex)
                {
                    recruiter.JobID = gr.Cells[1].Text;
                    recruiter.OrgName = gr.Cells[2].Text;
                    Response.Redirect("~/JobSeeker/SearchJobs/frmFullSelectedJobDetail.aspx?JobId=" + recruiter.JobID + "&OrgName=" + recruiter.OrgName);
                }
            }
        }
        catch (Exception)
        {
            
            throw;
        }

    }
    protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            recruiter.JobCategory = ddlCategory.SelectedItem.Text;
            BindGridview();
        }
        catch (Exception)
        {
            
            throw;
        }
    }
}
