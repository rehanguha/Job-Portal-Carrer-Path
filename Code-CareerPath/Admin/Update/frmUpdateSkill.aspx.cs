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

public partial class Admin_Update_frmUpdateSkill : System.Web.UI.Page
{
    SkillMasterBL skill = new SkillMasterBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            skill.SkillId = int.Parse(Request["SkillId"].ToString());
            DataSet ds = new DataSet();
            ds = skill.ShowSkillInfoById();
            DataRow dr = ds.Tables[0].Rows[0];
            txtType.Text = dr[0].ToString();
            txtDescription.Text = dr[1].ToString();

        }

    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/frmAddSkills.aspx");
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            skill.SkillId = int.Parse(Request["SkillId"].ToString());
            skill.Type = txtType.Text.Trim();
            skill.Description = txtDescription.Text.Trim();
            skill.UpdateSkill();
            lblMsg.Text = "Updated...!";
        }
        catch (Exception)
        {

            throw;
        }
    }
}
