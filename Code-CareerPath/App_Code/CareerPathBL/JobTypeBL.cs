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
/// Summary description for JobTypeBL
/// </summary>
public class JobTypeBL:Connection
{
    public static DataSet ds;
	public JobTypeBL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    string _JobType, _Description;
    public string JobType
    {
        get { return _JobType; }
        set { _JobType = value; }
    }
    public string Description
    {
        get { return _Description; }
        set { _Description = value; }
    }
    private int _JobId;
    public int JobId
    {
        get { return _JobId; }
        set { _JobId = value; }
    }
    public void InsertJobType()
    {
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@JobType", this._JobType);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@Description", this._Description);
        p[1].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Insert_JobType", p);
    }
    public DataSet ShowJobType()
    {
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_JobType");
        return ds;
    }
    public void DeleteJobType()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@JobId", this._JobId);
        p[0].DbType = DbType.Int16;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Delete_JobType", p);

    }
    public void UpdateJobType()
    {
        SqlParameter[] p = new SqlParameter[3];
        p[0] = new SqlParameter("@JobId", this._JobId);
        p[0].DbType = DbType.Int16;
        p[1] = new SqlParameter("@JobType", this._JobType);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@Description", this._Description);
        p[2].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Update_JobType", p);

    }
    public DataSet ShowJobTypeInfoById()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@JobId", this._JobId);
        p[0].DbType = DbType.Int16;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_ShowJobTypeInfoById", p);
        return ds;
    }
}
