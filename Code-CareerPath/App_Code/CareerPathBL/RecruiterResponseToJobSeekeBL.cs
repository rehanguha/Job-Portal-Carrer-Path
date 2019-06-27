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
/// Summary description for RecruiterResponseToJobSeekeBL
/// </summary>
public class RecruiterResponseToJobSeekeBL:Connection
{
    public static DataSet ds;
	public RecruiterResponseToJobSeekeBL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    private string _JobSeekerId, _RecruiterName, _JobID;
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

    //Recruiter Response

    public void InsertRecruiterResponseToJobseeker()
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
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_InsertRecruiterResponseToJobseeker", p);

    }
    public DataSet ShowAppliedJobDetailOfJobsseker()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@JobSeekerId", this._JobSeekerId);
        p[0].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_ShowAppliedJobDetailOfJobsseker", p);
        return ds;
    }
    public DataSet ShowRecruiterResponseDetail()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@JobSeekerId", this._JobSeekerId);
        p[0].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_ShowRecruiterResponseDetail",p);
        return ds;
    }
    public bool ShowJobOfferStatus()
    {
        int count;
        SqlParameter[] p = new SqlParameter[3];
        p[0] = new SqlParameter("@RecruiterName", this._RecruiterName);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@JobSeekerId", this._JobSeekerId);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@JobID", this._JobID);
        p[2].DbType = DbType.String;
        count = int.Parse(SqlHelper.ExecuteScalar(con, CommandType.StoredProcedure, "Sp_ShowJobOfferStatus", p).ToString());
        if (count > 0)
            return true;
        else

            return false;
    }
    public DataSet ShowRecruiterResponse()
    {
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_ShowRecruiterResponse");
        return ds;
    }
}
