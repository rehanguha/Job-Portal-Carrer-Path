using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using CareerPath.DAL;
/// <summary>
/// Summary description for JobSeekerResponseToJobBL
/// </summary>
public class JobSeekerResponseToJobBL:Connection
{
    public static DataSet ds;
	public JobSeekerResponseToJobBL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    private string _JobSeekerId,_RecruiterName,_JobID;
    private DateTime _DateOfResponse;
    public string JobSeekerId
    {
        get { return _JobSeekerId; }
        set { _JobSeekerId = value; }
    }
    public string RecruiterName
    {
        get { return _RecruiterName; }
        set { _RecruiterName = value; }
    }
    public string JobID
    {
        get { return _JobID; }
        set { _JobID = value; }
    }
    public DateTime DateOfResponse
    {
        get { return _DateOfResponse; }
        set { _DateOfResponse = value; }
    }
   
    //JobSeeker Response

    public void InsertJobSeekerResponseToRecruiter()
    {
        SqlParameter[] p = new SqlParameter[4];
        p[0] = new SqlParameter("@JobSeekerId", this._JobSeekerId);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@RecruiterName", this._RecruiterName);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@JobID", this._JobID);
        p[2].DbType = DbType.String;
        p[3] = new SqlParameter("@DateOfResponse", this._DateOfResponse);
        p[3].DbType = DbType.Date;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_InsertJobSeekerResponseToRecruiter", p);

    }
    private string _UserName;
    public string UserName
    {
        get { return _UserName; }
        set { _UserName = value; }
    }
    public DataSet ShowJobSeekerFullDetail()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@JobSeekerId", this._JobSeekerId);
        p[0].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_ShowJobSeekerFullDetail", p);
        return ds;
    }
    public DataSet ShowAllJobSeeker()
    {
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_ShowAllJobSeeker");
        return ds;
    }
    public DataSet ShowAllJobsByRecruiter()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@UserName", this._UserName);
        p[0].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_AllJobsByRecruiter", p);
        return ds;
    }
    public DataSet ShowJobSeekerResponseDetail()
    {
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_ShowJobSeekerResponseDetail1");
        return ds;
    }

    public DataSet ShowJobInfoByJobId()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@JobId", this._JobID);
        p[0].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_ShowJobInfoByJobId", p);
        return ds;
    }
    public bool ShowJobApplyStatus()
    {
        int count;
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@JobSeekerId", this._JobSeekerId);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@JobID", this._JobID);
        p[1].DbType = DbType.String;
        count = int.Parse(SqlHelper.ExecuteScalar(con, CommandType.StoredProcedure, "Sp_ShowJobAllpyStatus", p).ToString());
        if (count > 0)
            return true;
        else

            return false;
    }
}
