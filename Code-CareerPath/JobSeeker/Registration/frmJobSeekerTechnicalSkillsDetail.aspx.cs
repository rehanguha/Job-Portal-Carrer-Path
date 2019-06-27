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
public partial class JobSeeker_Registration_frmJobSeekerTechnicalSkillsDetail : System.Web.UI.Page
{
    SkillMasterBL skill = new SkillMasterBL();
    ExperianceBL exp = new ExperianceBL();
    JobSeekerRegistrationBL jobseeker = new JobSeekerRegistrationBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["JobSeekerId"] == null)
        {
            Response.Redirect("~/JobSeeker/Registration/frmJobSeekerRegistration.aspx");
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
            while (year <System.DateTime.Now.Year)
            {
                ddlLastUsed1.Items.Add(year.ToString());
                ddlLastUsed2.Items.Add(year.ToString());
                ddlLastUsed3.Items.Add(year.ToString());
                ddlLastUsed4.Items.Add(year.ToString());
                year++;
            }   
        }
        lblMsg.Text = "";
    }
    protected void btnNext_Click(object sender, EventArgs e)
    {
        if (txtResume.Text == "" && FileUpload1.FileName == "")
            Page.RegisterClientScriptBlock("Dhanush", "<script>alert('Give Any One Resume Text or Upload Resume')</script>");
        else
        {
            try
            {
                jobseeker.JobSeekerId = Session["JobSeekerId"].ToString();
                //  jobseeker.JobSeekerId ="S";
                if (ddlSkill1.SelectedIndex == 0)
                {
                    txtSkillOther1.Focus();
                    jobseeker.Skill1 = txtSkillOther1.Text.Trim();
                }
                else
                    jobseeker.Skill1 = ddlSkill1.SelectedItem.Text.Trim();
                if (ddlSkill2.SelectedIndex == 0)
                {
                    txtSkillOther2.Focus();
                    jobseeker.Skill2 = txtSkillOther2.Text.Trim();
                }
                else
                    jobseeker.Skill2 = ddlSkill2.SelectedItem.Text.Trim();
                if (ddlSkill3.SelectedIndex == 0)
                {
                    txtSkillOther3.Focus();
                    jobseeker.Skill3 = txtSkillOther3.Text.Trim();
                }
                else
                    jobseeker.Skill3 = ddlSkill3.SelectedItem.Text.Trim();
                if (ddlSkill4.SelectedIndex == 0)
                {
                    txtSkillOther4.Focus();
                    jobseeker.Skill4 = txtSkillOther4.Text.Trim();
                }
                else
                    jobseeker.Skill4 = ddlSkill4.SelectedItem.Text.Trim();
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
                        UploadedResume = Server.MapPath("~/UploadedResume/");//+ FileUpload1.FileName);
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
                jobseeker.ResumeUpLoadDate = System.DateTime.Now.Date;
                jobseeker.LastModifiedDate = System.DateTime.Now.Date;
                jobseeker.InsertJobSeekertechnicalSkills();
                jobseeker.InsertJobSeekerResume();
                lblMsg.Text = "Inserted...";
                Response.Redirect("~/JobSeeker/Registration/frmReviewResume.aspx");
            }
            catch (Exception ex)
            {
                lblMsg.Text = ex.Message;
            }
        }
    }
}
