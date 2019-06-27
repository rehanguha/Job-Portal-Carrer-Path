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
using System.IO;
public partial class JobSeeker_Modification_frmModifyJobseekerTechnicalSkillDetail : System.Web.UI.Page
{
    SkillMasterBL skill = new SkillMasterBL();
    ExperianceBL exp = new ExperianceBL();
    JobSeekerRegistrationBL jobseeker = new JobSeekerRegistrationBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["JobSeekerId"] == null)
        {
            Response.Redirect("~/frmJobSeekerLogin.aspx");
        }
        int count = 1;
        int year = 1999;
        if (!IsPostBack)
        {
            ddlSkill1.DataSource = skill.ShowSkills();
            ddlSkill1.DataTextField = "SkillType";
            ddlSkill1.DataValueField = "SkillId";
            ddlSkill1.DataBind();
            ddlSkill1.Items.Insert(0, "---Select---");

            ddlSkill2.DataSource = skill.ShowSkills();
            ddlSkill2.DataTextField = "SkillType";
            ddlSkill2.DataValueField = "SkillId";
            ddlSkill2.DataBind();
            ddlSkill2.Items.Insert(0, "---Select---");


            ddlSkill3.DataSource = skill.ShowSkills();
            ddlSkill3.DataTextField = "SkillType";
            ddlSkill3.DataValueField = "SkillId";
            ddlSkill3.DataBind();
            ddlSkill3.Items.Insert(0, "---Select---");

            ddlSkill4.DataSource = skill.ShowSkills();
            ddlSkill4.DataTextField = "SkillType";
            ddlSkill4.DataValueField = "SkillId";
            ddlSkill4.DataBind();
            ddlSkill4.Items.Insert(0, "---Select---");

            ddlExp1.Items.Insert(0, "---Select---");
            ddlExp2.Items.Insert(0, "---Select---");
            ddlExp3.Items.Insert(0, "---Select---");
            ddlExp4.Items.Insert(0, "---Select---");

            ddlLastUsed1.Items.Insert(0, "---Select---");
            ddlLastUsed2.Items.Insert(0, "---Select---");
            ddlLastUsed3.Items.Insert(0, "---Select---");
            ddlLastUsed4.Items.Insert(0, "---Select---");
            while (count <= 15)
            {
                ddlExp1.Items.Add(count.ToString());
                ddlExp2.Items.Add(count.ToString());
                ddlExp3.Items.Add(count.ToString());
                ddlExp4.Items.Add(count.ToString());
                count++;

            }
            while (year < System.DateTime.Now.Year)
            {
                ddlLastUsed1.Items.Add(year.ToString());
                ddlLastUsed2.Items.Add(year.ToString());
                ddlLastUsed3.Items.Add(year.ToString());
                ddlLastUsed4.Items.Add(year.ToString());
                year++;

            }
            BindData();
        }

    }
    private void BindData()
    {
        try
        {
            DataRow dr;
            DataSet ds = new DataSet();
          jobseeker.JobSeekerId = Session["JobSeekerId"].ToString();
                    ds = jobseeker.ShowJobSeekerTechnicalSkillDetail();
            if (ds.Tables[0].Rows.Count > 0)
            {
                dr = ds.Tables[0].Rows[0];
             //---------------------------------------------------------------
                ListItem li = ddlSkill1.Items.FindByText(dr[0].ToString());
                if(li !=null)
                {
                li.Selected=true;
                }
                ListItem li1 = ddlExp1.Items.FindByText(dr[1].ToString());
                if (li1 != null)
                {
                    li1.Selected = true;
                }
                ListItem li2 = ddlLastUsed1.Items.FindByText(dr[2].ToString());
                if (li2 != null)
                {
                    li2.Selected = true;
                }
                //-------------------------------------------------------------
                ListItem li3 = ddlSkill2.Items.FindByText(dr[3].ToString());
                if (li3 != null)
                {
                    li3.Selected = true;
                }
                ListItem li4 = ddlExp2.Items.FindByText(dr[4].ToString());
                if (li4 != null)
                {
                    li4.Selected = true;
                }
                ListItem li5 = ddlLastUsed2.Items.FindByText(dr[5].ToString());
                if (li5 != null)
                {
                    li5.Selected = true;
                }
                //---------------------------------------------------------------
                ListItem li6 = ddlSkill3.Items.FindByText(dr[6].ToString());
                if (li6 != null)
                {
                    li6.Selected = true;
                }
                ListItem li7 = ddlExp3.Items.FindByText(dr[7].ToString());
                if (li7 != null)
                {
                    li7.Selected = true;
                }
                ListItem li8 = ddlLastUsed3.Items.FindByText(dr[8].ToString());
                if (li8 != null)
                {
                    li8.Selected = true;
                }
                //-----------------------------------------------------------------
                ListItem li9 = ddlSkill4.Items.FindByText(dr[9].ToString());
                if (li9 != null)
                {
                    li9.Selected = true;
                }
                ListItem li10 = ddlExp4.Items.FindByText(dr[10].ToString());
                if (li10 != null)
                {
                    li10.Selected = true;
                }
                ListItem li11 = ddlLastUsed4.Items.FindByText(dr[11].ToString());
                if (li11 != null)
                {
                    li11.Selected = true;
                }
                //------------------------------------------------------------------
                DataSet ds1;
                ds1 = jobseeker.ShowJobSeekerResumeDetail();
                DataRow dr1;
                dr1 = ds1.Tables[0].Rows[0];
                txtResume.Text = dr1[0].ToString();
                //FileUpload1.FileName = dr1[1].ToString();
            }
            else
            {
                lblMsg.Text = "No Row Found...!";
            }
        }
        catch (Exception)
        {
            
            throw;
        }
       
    }
    protected void btnModify_Click(object sender, EventArgs e)
    {
        try
        {
            // jobseeker.JobSeekerId = Session["JobSeekerId"].ToString();
            jobseeker.JobSeekerId = "S";
            if (ddlSkill1.SelectedIndex == 0)
            {
                txtSkillOther1.Focus();
                jobseeker.Skill1 = txtSkillOther1.Text.Trim();
            }
            else
            {
                jobseeker.Skill1 = ddlSkill1.SelectedItem.Text.Trim();

            }

            if (ddlSkill2.SelectedIndex == 0)
            {
                txtSkillOther2.Focus();
                jobseeker.Skill2 = txtSkillOther2.Text.Trim();
            }
            else
            {
                jobseeker.Skill2 = ddlSkill2.SelectedItem.Text.Trim();

            }

            if (ddlSkill3.SelectedIndex == 0)
            {
                txtSkillOther3.Focus();
                jobseeker.Skill3 = txtSkillOther3.Text.Trim();
            }
            else
            {
                jobseeker.Skill3 = ddlSkill3.SelectedItem.Text.Trim();

            }
            if (ddlSkill4.SelectedIndex == 0)
            {
                txtSkillOther4.Focus();
                jobseeker.Skill4 = txtSkillOther4.Text.Trim();
            }
            else
            {
                jobseeker.Skill4 = ddlSkill4.SelectedItem.Text.Trim();

            }

            if (ddlExp1.SelectedIndex == 0)
            {
                lblMsg.Text = "Plz Select At Least One Value";
                ddlExp1.Focus();
            }
            else
                jobseeker.Skill1Year = int.Parse(ddlExp1.SelectedValue);

            if (ddlExp2.SelectedIndex == 0)
            {
                jobseeker.Skill2Year = 0;
            }
            else
                jobseeker.Skill2Year = int.Parse(ddlExp2.SelectedValue);

            if (ddlExp3.SelectedIndex == 0)
            {
                jobseeker.Skill3Year = 0;
            }
            else
                jobseeker.Skill3Year = int.Parse(ddlExp3.SelectedValue);

            if (ddlExp4.SelectedIndex == 0)
            {
                jobseeker.Skill4Year = 0;
            }
            else
                jobseeker.Skill4Year = int.Parse(ddlExp4.SelectedValue);

            if (ddlLastUsed1.SelectedIndex == 0)
            {
                lblMsg.Text = "Plz Select At Least One Value";
                ddlLastUsed1.Focus();
            }
            else
            {
                lblMsg.Text = "";
                jobseeker.Skill1Lastused = int.Parse(ddlLastUsed1.SelectedValue);
            }
            if (ddlLastUsed2.SelectedIndex == 0)
            {
                jobseeker.Skill2Lastused = 0;
            }
            else
                jobseeker.Skill2Lastused = int.Parse(ddlLastUsed2.SelectedValue);

            if (ddlLastUsed3.SelectedIndex == 0)
            {
                jobseeker.Skill3Lastused = 0;
            }
            else
                jobseeker.Skill3Lastused = int.Parse(ddlLastUsed3.SelectedValue);

            if (ddlLastUsed4.SelectedIndex == 0)
            {
                jobseeker.Skill4Lastused = 0;
            }
            else
                jobseeker.Skill4Lastused = int.Parse(ddlLastUsed4.SelectedValue);

            //resume Detail
            if (FileUpload1.PostedFile.FileName != null)
            {
                string fileType;
                string UploadedResume;
                fileType = FileUpload1.PostedFile.ContentType;
                if (fileType == "application/msword")
                {
                    UploadedResume = Server.MapPath("~/UploadedResume/");
                    if (!Directory.Exists(UploadedResume))
                        Directory.CreateDirectory(UploadedResume);
                    FileUpload1.PostedFile.SaveAs(UploadedResume + FileUpload1.FileName);
                    jobseeker.ResumePath = FileUpload1.FileName;
                }
                else
                {
                    jobseeker.ResumePath = "";
                    lblMsg.Visible = true;
                    lblMsg.Text = "Please select a File type of doc";
                }
            }
            else
            {
                lblMsg.Visible = true;
                lblMsg.Text = "Please upload Your Resume";
            }

            jobseeker.Resume = txtResume.Text.Trim();
            jobseeker.LastModifiedDate = System.DateTime.Now.Date;
            jobseeker.ModifyJobseekerTechnicalSkills();
            jobseeker.ModifyJobseekerResumeDetail();
            lblMsg.Text = "Updated...!";
            
        }
        catch (Exception)
        {

            throw;
        }
    }
}
