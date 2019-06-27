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

public partial class Recruiter_SearchJobSeeker_frmSearchJobseekerByAllCondition : System.Web.UI.Page
{
    CityBL city = new CityBL();
    FunctionalAreaBL function = new FunctionalAreaBL();
    QualificationBL qual = new QualificationBL();
    RecruiterJobOpeningAndOtherDetail recruiter = new RecruiterJobOpeningAndOtherDetail();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("~/frmRecruiterLogin.aspx");
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

        ddlQualification.DataSource = qual.ShowQualification();
        ddlQualification.DataTextField = "Qualification";
        ddlQualification.DataBind();
        ddlQualification.Items.Insert(0, "---Select---");

    }
    private void BindGridview()
    {

        GridView1.DataSource = recruiter.ShowAllJobSeekerByAnyCondition();
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        try
        {
            GridView1.PageIndex = e.NewPageIndex;
            recruiter.JobLocation = ddlLocation.SelectedItem.Text;
            recruiter.Role = ddlRole.SelectedItem.Text;
            recruiter.Qualification = ddlQualification.SelectedItem.Text;
            recruiter.Salary =txtSalary.Text.Trim()+ " " +DropDownList1.SelectedItem.Text;
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
            Literal l;
            foreach (GridViewRow gr in GridView1.Rows)
            {
                l = (Literal)gr.FindControl("lblId");
                Session["JobSeekerId"] = l.Text;
                Response.Redirect("~/Recruiter/SearchJobSeeker/frmJobSeekerFullDetail.aspx");
            }
        }
        catch (Exception)
        {

            throw;
        }
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        try
        {
            recruiter.JobLocation = ddlLocation.SelectedItem.Text;
            recruiter.Role = ddlRole.SelectedItem.Text;
            recruiter.Qualification = ddlQualification.SelectedItem.Text;
            recruiter.Salary = txtSalary.Text.Trim() + " " + DropDownList1.SelectedItem.Text;
            BindGridview();
        }
        catch (Exception)
        {

            throw;
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
}
