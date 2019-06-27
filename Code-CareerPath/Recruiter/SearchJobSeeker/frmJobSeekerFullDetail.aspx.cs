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

public partial class Recruiter_SearchJobSeeker_frmJobSeekerFuuDetail : System.Web.UI.Page
{
    JobSeekerResponseToJobBL jobseeker = new JobSeekerResponseToJobBL();
    RecruiterResponseToJobSeekeBL recruiter = new RecruiterResponseToJobSeekeBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("~/frmRecruiterLogin.aspx");
        }
        if (!IsPostBack)
        {
            BindData();
            BindGridview();
        }
       
    }
    private void BindData()
    {
        jobseeker.JobSeekerId = Session["JobSeekerId"].ToString();
        DataSet ds = new DataSet();
        ds = jobseeker.ShowJobSeekerFullDetail();
        DataRow dr = ds.Tables[0].Rows[0];
        lblName.Text = dr[0].ToString() + dr[1].ToString();
        lblDOb.Text = dr[2].ToString();
        lblCountry.Text = dr[3].ToString();
        lblState.Text = dr[4].ToString();
        lblCity.Text = dr[5].ToString();
        lblAddress.Text = dr[6].ToString();
        lblPin.Text = dr[7].ToString();
        lblMobile.Text = dr[8].ToString();
        lblEmail.Text = dr[9].ToString();
    }
    private void BindGridview()
    {
        jobseeker.UserName = Session["UserName"].ToString();
        GridView1.DataSource = jobseeker.ShowAllJobsByRecruiter();
        GridView1.DataBind();
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
        Literal l;
        try
        {
            GridView1.SelectedIndex = e.NewSelectedIndex;
            recruiter.JobSeekerId = Session["JobSeekerId"].ToString();
            recruiter.RecruiterName = Session["UserName"].ToString();
            l = (Literal)GridView1.Rows[e.NewSelectedIndex].FindControl("lblId");
            recruiter.JobID = l.Text;
            if (recruiter.ShowJobOfferStatus() == false)
            {
            foreach (GridViewRow gr in GridView1.Rows)
            {
               
                if (gr.RowIndex == GridView1.SelectedIndex)
                {
                        recruiter.JobSeekerId = Session["JobSeekerId"].ToString();
                        recruiter.RecruiterName = Session["UserName"].ToString();
                        recruiter.JobID = l.Text;
                        recruiter.DateOfResponse = System.DateTime.Now.Date;
                        recruiter.InsertRecruiterResponseToJobseeker();
                        lblMsg.Text = "Applied...!";
                 }
             }
                
            }
            else
            {
                lblMsg.Text = "Alredy Applied...!";
            }
          }
      
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message.ToString();
           
        }
    }
    protected void lnkFullInfo_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Recruiter/SearchJobSeeker/frmFullInformationaboutJobseeker.aspx");
    }
}
