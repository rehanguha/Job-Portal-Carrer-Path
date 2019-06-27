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

public partial class Recruiter_JobPosting_frmViewAllPostedJobs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DetailsView1.Visible = true;
    }
    protected void DetailsView1_ItemCommand(object sender, DetailsViewCommandEventArgs e)
    {
        if (e.CommandName == "Close")
        {
            DetailsView1.DataSource = null;
            DetailsView1.Visible = false;
        }
    }
}
