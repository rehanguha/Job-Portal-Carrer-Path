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

public partial class Recruiter_SearchJobSeeker_frmViewAllJobSeeker : System.Web.UI.Page
{
    JobSeekerResponseToJobBL jobseeker = new JobSeekerResponseToJobBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("~/frmRecruiterLogin.aspx");
        }

    }
    private void BindGridview()
    {
        try
        {
            GridView1.DataSource = jobseeker.ShowAllJobSeeker();
            GridView1.DataBind();
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
            BindGridview();
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        try
        {
            GridView1.PageIndex = e.NewPageIndex;
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
                    Literal l;
                    l = (Literal)gr.FindControl("lblId");
                    Session["JobSeekerId"] = l.Text; 
                    Response.Redirect("~/Recruiter/SearchJobSeeker/frmJobSeekerFullDetail.aspx");
                }
            }
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }
    }
}
