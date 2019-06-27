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

public partial class JobSeeker_SearchJobs_frmSearchJobByAllCondition : System.Web.UI.Page
{
    CityBL city = new CityBL();
    FunctionalAreaBL function = new FunctionalAreaBL();
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
        ddlLocation.DataSource = city.ShowAllCity();
        ddlLocation.DataTextField = "CityName";
        ddlLocation.DataBind();
        ddlLocation.Items.Insert(0, "---Select---");

        ddlRole.DataSource = function.ShowFunctionalArea();
        ddlRole.DataTextField = "FunctionalArea";
        ddlRole.DataBind();
        ddlRole.Items.Insert(0, "---Select---");

        ddlCategory.DataSource = job.ShowJobType();
        ddlCategory.DataTextField = "JobType";
        ddlCategory.DataBind();
        ddlCategory.Items.Insert(0, "---Select---");

    }
    private void BindGridview()
    {

        GridView1.DataSource = recruiter.ShowAllJobByAnyCondition();
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        try
        {
            GridView1.PageIndex = e.NewPageIndex;
            recruiter.JobCategory = ddlCategory.SelectedItem.Text;
            recruiter.Role = ddlRole.SelectedItem.Text;
            recruiter.JobLocation = ddlLocation.SelectedItem.Text;
            recruiter.ExpectedSalary = Convert.ToDecimal(txtSalary.Text.Trim());
            BindGridview();
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
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
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        try
        {
            recruiter.JobCategory = ddlCategory.SelectedItem.Text;
            recruiter.Role = ddlRole.SelectedItem.Text;
            recruiter.JobLocation = ddlLocation.SelectedItem.Text;
            try
            {
                recruiter.ExpectedSalary = Convert.ToDecimal(txtSalary.Text.Trim());
            }
            catch
            {
                lblMsg.Text = "Enter Only Salary";
                return;
            }
            BindGridview();
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }
    }
}
