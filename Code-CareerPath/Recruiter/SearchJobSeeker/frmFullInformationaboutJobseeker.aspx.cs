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

public partial class Recruiter_SearchJobSeeker_frmFullInformationaboutJobseeker : System.Web.UI.Page
{
    JobSeekerRegistrationBL jobseeker = new JobSeekerRegistrationBL();
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
        jobseeker.JobSeekerId = Session["JobSeekerId"].ToString();
        DataSet ds = new DataSet();
        ds = jobseeker.ShowJobseekerBackgroundDetail();
        if (ds.Tables[0].Rows.Count > 0)
        {
            DataRow dr;
            dr = ds.Tables[0].Rows[0];
            ltlDegree.Text = dr[0].ToString();
            ltlSpecial.Text = dr[1].ToString();
            ltlPassingyear.Text = dr[2].ToString();
            ltlPercentage.Text = dr[3].ToString();
            ltlUniversity.Text = dr[4].ToString();
            ltlCountry.Text = dr[5].ToString();
            ltlExp.Text = dr[6].ToString();
            ltlWorkfield.Text = dr[7].ToString();

            /////////////////////////////////////////////////

            DataRow dr1;
            DataSet ds1 = new DataSet();
            ds1 = jobseeker.ShowJobseekerJobDetail();
            if (ds1.Tables[0].Rows.Count > 0)
            {
                dr1 = ds1.Tables[0].Rows[0];
                ltlJobCategory.Text = dr1[0].ToString();
                ltlCity1.Text = dr1[1].ToString();
                ltlState1.Text = dr1[2].ToString();
                ltlCountry1.Text = dr1[3].ToString();
                ltlCity2.Text = dr1[4].ToString();
                ltlState2.Text = dr1[5].ToString();
                ltlCountry2.Text = dr1[6].ToString();
                ltlRelocate.Text = dr1[7].ToString();
                ltlTelecommute.Text = dr1[8].ToString();
                ltlTravel.Text = dr1[9].ToString();
                ltlSalary.Text = dr1[10].ToString();
                ltlSalary1.Text = dr1[11].ToString();
                ltlEmployment.Text = dr1[12].ToString() + "," + dr1[13].ToString() + "," + dr1[14].ToString();
                ////////////////////////////////////////////////////////////////

                DataRow dr2;
                DataSet ds2 = new DataSet();
                ds2 = jobseeker.ShowJobSeekerTechnicalSkillDetail();
                if (ds2.Tables[0].Rows.Count > 0)
                {
                    dr2 = ds2.Tables[0].Rows[0];
                    //---------------------------------------------------------------
                    ltlSkill1.Text = dr2[0].ToString();
                    ltlWork1.Text = dr2[1].ToString();
                   ltlLastUsed1.Text=dr2[2].ToString();
                   //------------------------------------------------------------------
                   ltlSkill2.Text = dr2[3].ToString();
                   ltlWork2.Text = dr2[4].ToString();
                   ltlLastUsed2.Text = dr2[5].ToString();
                   //------------------------------------------------------------------
                   ltlSkill3.Text = dr2[6].ToString();
                   ltlWork3.Text = dr2[7].ToString();
                   ltlLastUsed3.Text = dr2[8].ToString();
                    //---------------------------------------------------------------
                   ltlSkill4.Text = dr2[9].ToString();
                   ltlWork4.Text = dr2[10].ToString();
                   ltlLastUsed4.Text = dr2[11].ToString();
                    //-----------------------------------------------------------------
                    DataSet ds3;
                    ds3 = jobseeker.ShowJobSeekerResumeDetail();
                    DataRow dr3;
                    dr3 = ds3.Tables[0].Rows[0];
                    txtResume.Text = dr3[0].ToString();
                    string FullPath=Server.MapPath("~/UploadedResume/"+dr3[1].ToString());
                    if (System.IO.File.Exists(Server.MapPath("~/UploadedResume/"+dr3[1].ToString())))
                    {
                        hypResume.Text = dr3[1].ToString();
                        hypResume.NavigateUrl = ("~/UploadedResume/" + dr3[1].ToString());
                    }
                    else
                    {
                        hypResume.Text = "Resume Not Available";
                    }
                }
            }
        }
    }
    protected void btnOK_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Recruiter/SearchJobSeeker/frmJobSeekerAppliedJobDetail.aspx");
    }
}
