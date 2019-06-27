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

public partial class Admin_ViewReports_Recruiter_frmViewRegisteredRecruiterByDate : System.Web.UI.Page
{
    RecruiterRegistrationBL recruiter = new RecruiterRegistrationBL();
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
            recruiter.FromDate = GMDatePicker1.Date;
            recruiter.ToDate = GMDatePicker2.Date;
            GridView1.DataSource = recruiter.ShowAllRegisteredRecruiter();
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
            Session["UserName"] = e.CommandArgument.ToString();
            Response.Redirect("~/Admin/ViewReports/Recruiter/frmUpdateRecruiterInfo.aspx");

        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        Button btn;
        foreach (GridViewRow gr in GridView1.Rows)
        {
            btn = (Button)gr.FindControl("btndelete");
            recruiter.UserName = btn.CommandArgument.ToString();
        }

        recruiter.DeleteRegisterRecruiterInfo();
        recruiter.FromDate = GMDatePicker1.Date;
        recruiter.ToDate = GMDatePicker2.Date;
        GridView1.DataSource = recruiter.ShowAllRegisteredRecruiter();
        GridView1.DataBind();
    }
    protected void btnView_Click(object sender, EventArgs e)
    {
        try
        {
            recruiter.FromDate = GMDatePicker1.Date;
            recruiter.ToDate = GMDatePicker2.Date;
            GridView1.DataSource = recruiter.ShowAllRegisteredRecruiter();
            GridView1.DataBind();
        }
        catch (Exception)
        {

            throw;
        }

    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        HyperLink ltlWebSite =(HyperLink) e.Row.FindControl("ltlWebSite");
        if (ltlWebSite != null)
        {
            ltlWebSite.NavigateUrl = "http://" + ltlWebSite.Text;
            ltlWebSite.Target = "_blank";
        }
        Label ltlEmailId = (Label)e.Row.FindControl("ltlEmailId");
        if (ltlEmailId != null)
        {
            ltlEmailId.Text = "<a href=mailto:" + ltlEmailId.Text + ">" + ltlEmailId.Text + "</a>";

 
        }
    }
}
