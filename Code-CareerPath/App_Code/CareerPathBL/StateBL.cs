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
/// Summary description for StateBL
/// </summary>
public class StateBL:Connection
{
    public static DataSet ds;
	public StateBL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    string _Name, _Description;
    int countryId,_StateId;
    public int StateId
    {
        get { return _StateId; }
        set { _StateId = value; }
    }
    public int CountryId
    {
        get { return countryId; }
        set { countryId = value; }
    }
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


    public void InsertState()
    {
        SqlParameter[] p = new SqlParameter[3];
        p[0] = new SqlParameter("@Name", this._Name);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@Description", this._Description);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@CountryId", this.countryId);
        p[2].DbType = DbType.Int16;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Insert_State", p);

    }
    public DataSet ShowAllState()
    {   ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_State");
        return ds;
    }
    public DataSet GetStateByCountryId()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@countryid", this.countryId);
        p[0].DbType = DbType.Int16;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpGetStateByCountryId", p);
        return ds;
    }
    public void DeleteState()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@StateId", this._StateId);
        p[0].DbType = DbType.Int16;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Delete_State", p);

    }
    public void UpdateState()
    {
        SqlParameter[] p = new SqlParameter[3];
        p[0] = new SqlParameter("@StateId", this._StateId);
        p[0].DbType = DbType.Int16;
        p[1] = new SqlParameter("@StateName", this._Name);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@Description", this._Description);
        p[2].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Update_State", p);

    }
    public DataSet ShowStateInfoById()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@StateId", this._StateId);
        p[0].DbType = DbType.Int16;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_ShowStateInfoById", p);
        return ds;
    }
}
