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

public partial class Admin_ViewReports_Recruiter_frmRecruiterResponseToJobSeeker : System.Web.UI.Page
{
    RecruiterResponseToJobSeekeBL recruiter = new RecruiterResponseToJobSeekeBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
        if (!IsPostBack)
        {
            BindData();
        }
    }
    private void BindData()
    {
        GridView1.DataSource = recruiter.ShowRecruiterResponse();
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
   
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        string str = "";
        if (e.CommandName == "JobId")
        {
            str = e.CommandArgument.ToString();
            Response.Redirect("~/Admin/ViewReports/Recruiter/frmShowJobInfoByJobId.aspx?JobId=" + str);
        }
        else if (e.CommandName == "OrgName")
        {
           str= e.CommandArgument.ToString();
           Response.Redirect("~/Admin/ViewReports/Recruiter/frmShowOrganizationDetail.aspx?OrgName=" + str);
        }


    }
}
