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
/// Summary description for ExperianceBL
/// </summary>
public class ExperianceBL:Connection
{
    public static DataSet ds;
	public ExperianceBL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    string _ExpType, _Duration;
    public string ExpType
    {
        get { return _ExpType; }
        set { _ExpType = value; }
    }
    public string Duration
    {
        get { return _Duration; }
        set { _Duration = value; }
    }
    private int _ExpId;
    public int ExpId
    {
        get { return _ExpId; }
        set { _ExpId = value; }
    }
    public void InsertExperiance()
    {
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@ExpType", this._ExpType);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@Duration", this._Duration);
        p[1].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Insert_Experiance", p);
    }
    public DataSet ShowExperience()
    {
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_Experience");
        return ds;
    }
    public void DeleteExperience()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@ExpId", this._ExpId);
        p[0].DbType = DbType.Int16;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Delete_Experience", p);

    }
    public void UpdateExperience()
    {
        SqlParameter[] p = new SqlParameter[3];
        p[0] = new SqlParameter("@ExpId", this._ExpId);
        p[0].DbType = DbType.Int16;
        p[1] = new SqlParameter("@ExpType", this._ExpType);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@Duration", this._Duration);
        p[2].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Update_Experience", p);

    }
    public DataSet ShowExperienceInfoById()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@ExpId", this._ExpId);
        p[0].DbType = DbType.Int16;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_ShowExperienceInfoById", p);
        return ds;
    }
}
