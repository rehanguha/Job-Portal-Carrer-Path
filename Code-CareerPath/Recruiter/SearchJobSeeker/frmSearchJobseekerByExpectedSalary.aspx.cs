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

public partial class Recruiter_SearchJobSeeker_frmSearchJobseekerByExpectedSalary : System.Web.UI.Page
{
    RecruiterJobOpeningAndOtherDetail recruiter = new RecruiterJobOpeningAndOtherDetail();
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
            GridView1.DataSource = recruiter.ShowAllJobSeekerBySalary();
            GridView1.DataBind();
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
            recruiter.Salary = txtSalary.Text.Trim() + " " + DropDownList1.SelectedItem.Text;
            BindGridview();
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }
    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        GridView1.SelectedIndex = e.NewSelectedIndex;
        Literal l;
        foreach (GridViewRow gr in GridView1.Rows)
        {
            l = (Literal)gr.FindControl("lblId");
            Session["JobSeekerId"] = l.Text;
            Response.Redirect("~/Recruiter/SearchJobSeeker/frmJobSeekerFullDetail.aspx");
        }
    }
   
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        Literal lblID;
        lblID = (Literal)e.Row.FindControl("lblId");
        Literal lblSKILL;
        lblSKILL = (Literal)e.Row.FindControl("lblSkill");
        Literal lblLOC;
        lblLOC = (Literal)e.Row.FindControl("lblLoc");
        if (lblID != null && lblID.Text != "")
        {
            recruiter.JobSeekerId = lblID.Text;
            DataSet dstemp, ds;
            dstemp = recruiter.ShowAllSkills();
            ds = recruiter.ShowAllLocation();
            DataRowCollection drc = dstemp.Tables[0].Rows;
            DataRow dr1 = ds.Tables[0].Rows[0];
            string strSkill = string.Empty;
            string strLoc = string.Empty;
            if (drc.Count > 0)
            {
                foreach (DataRow dr in drc)
                {
                    strSkill += dr[0].ToString();

                }
                strSkill = strSkill.Remove(strSkill.Length - 1, 1);
                lblSKILL.Text = strSkill;
            }
            else
            {
                lblSKILL.Text = "N/A";
            }
            if (ds.Tables[0].Rows.Count > 0)
            {
                strLoc += dr1[0].ToString();
            }
            strLoc = strLoc.Remove(strLoc.Length - 1, 1);
            lblLOC.Text = strLoc;
        }
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        try
        {
            recruiter.Salary = txtSalary.Text + " " +DropDownList1.SelectedItem.Text;
            BindGridview();
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }
    }
}
