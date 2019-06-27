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
/// Summary description for FunctionalAreaBL
/// </summary>
public class FunctionalAreaBL:Connection
{
    public static DataSet ds;
	public FunctionalAreaBL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    string _FunctionalArea, _Description;
    public string FunctionalArea
    {
        get { return _FunctionalArea; }
        set { _FunctionalArea = value; }
    }
    public string Description
    {
        get { return _Description; }
        set { _Description = value; }
    }
    private int _FunctionalId;
    public int FunctionalId
    {
        get { return _FunctionalId; }
        set { _FunctionalId = value; }
    }
    public void InsertQualification()
    {
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@FunctionalArea", this._FunctionalArea);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@Description", this._Description);
        p[1].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Insert_FunctionalArea", p);
    }
    public DataSet ShowFunctionalArea()
    {
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_FunctionalArea");
        return ds;
    }
    public void DeleteFunctionalArea()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@FunctionalId", this._FunctionalId);
        p[0].DbType = DbType.Int16;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Delete_FunctionalArea", p);

    }
    public void UpdateFunctionalArea()
    {
        SqlParameter[] p = new SqlParameter[3];
        p[0] = new SqlParameter("@FunctionalId", this._FunctionalId);
        p[0].DbType = DbType.Int16;
        p[1] = new SqlParameter("@FunctionalArea", this._FunctionalArea);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@Description", this._Description);
        p[2].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Update_FunctionalArea", p);

    }
    public DataSet ShowFunctionInfoById()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@FunctionalId", this._FunctionalId);
        p[0].DbType = DbType.Int16;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_ShowFunctionInfoById", p);
        return ds;
    }
}
