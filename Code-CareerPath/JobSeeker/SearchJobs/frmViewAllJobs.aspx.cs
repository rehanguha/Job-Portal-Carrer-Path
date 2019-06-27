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

public partial class JobSeeker_SearchJobs_frmViewAllJobs : System.Web.UI.Page
{
    RecruiterJobOpeningAndOtherDetail job = new RecruiterJobOpeningAndOtherDetail();
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
        GridView1.DataSource = job.ShowAllJobs();
        GridView1.DataBind();
    }
   
   
  
   

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        try
        {
            GridView1.PageIndex = e.NewPageIndex;
            BindData();
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
                    job.JobID = GridView1.Rows[e.NewSelectedIndex].Cells[1].Text;
                    job.OrgName = GridView1.Rows[e.NewSelectedIndex].Cells[2].Text;
                    Response.Redirect("~/JobSeeker/SearchJobs/frmFullSelectedJobDetail.aspx?JobId=" + job.JobID + "&OrgName=" + job.OrgName);
                }
            }
               
           
        }


        catch (Exception)
        {

            throw;
        }
    }
}
