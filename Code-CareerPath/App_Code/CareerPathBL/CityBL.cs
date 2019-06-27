using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using CareerPath.DAL;
using System.Data.SqlClient;
/// <summary>
/// Summary description for CityBL
/// </summary>
public class CityBL:Connection
{
	public CityBL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    
    public static DataSet ds;

    string _Name, _Description;
      public string Name
    {
        get { return _Name; }
        set { _Name = value; }
    }

    public string Description
    {
        get { return _Description; }
        set { _Description = value; }
    }

    int _StateId,_CityId;
    public int StateId
    {
        get { return _StateId; }
        set { _StateId = value; }
    }
    public int CityId
    {
        get { return _CityId; }
        set { _CityId = value; }
    }
    public  void InsertCity()
    {

        SqlParameter[] p = new SqlParameter[3];
        p[0] = new SqlParameter("@Name", this._Name);
        p[0].DbType =DbType.String;
        p[1] = new SqlParameter("@Description", this._Description);
        p[1].DbType =DbType.String;
        p[2] = new SqlParameter("@StateId", this._StateId);
        p[2].DbType = DbType.Int16;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Insert_City", p);

    }
    public  DataSet ShowAllCity()
    {
        DataSet ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_City");
        return ds;
    }
    public  DataSet GetCityByState()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("stateid", this.StateId);
        p[0].DbType = DbType.Int16;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "spGetCityByStateId", p);
        return ds;
    }
    public void DeleteCity()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@CityId", this._CityId);
        p[0].DbType = DbType.Int16;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Delete_City", p);

    }
    public void UpdateCity()
    {
        SqlParameter[] p = new SqlParameter[3];
        p[0] = new SqlParameter("@CityId", this._CityId);
        p[0].DbType = DbType.Int16;
        p[1] = new SqlParameter("@CityName", this._Name);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@Description", this._Description);
        p[2].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Update_City", p);

    }
    public DataSet ShowCityInfoById()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@CityId", this._CityId);
        p[0].DbType = DbType.Int16;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_ShowCityInfoById", p);
        return ds;
    }
}
