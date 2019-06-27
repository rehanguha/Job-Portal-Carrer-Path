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
/// Summary description for AdminAddingBusinessLayer
/// </summary>


    public class CountryBusinessLayer:Connection
    {
        public static DataSet ds;
        public CountryBusinessLayer()
        {
            //
            // TODO: Add constructor logic here
            //
        }
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

        private int _CountryId;
        public int CountryId
        {
            get { return _CountryId; }
            set { _CountryId = value; }
        }
        public void InsertCountry()
        {
            SqlParameter[] p = new SqlParameter[2];
            p[0] = new SqlParameter("@Name", this._Name);
            p[0].DbType = DbType.String;
            p[1] = new SqlParameter("@Description", this._Description);
            p[1].DbType = DbType.String;
            SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Insert_Country", p);

        }
        public DataSet ShowCountry()
        {
            ds = new DataSet();
            ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_Country");
            return ds;
        }
        public DataSet GetStateByCountry()
        {
            SqlParameter[] p = new SqlParameter[1];
            p[0] = new SqlParameter("@countryid", this._CountryId);
            p[0].DbType = DbType.Int16;
            ds = new DataSet();
            ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpGetStateByCountry", p);
            return ds;
        }
        public DataSet GetCountryIdByName()
        {
            SqlParameter[] p = new SqlParameter[1];
            p[0] = new SqlParameter("@name", this._Name);
            p[0].DbType = DbType.Int16;
            ds = new DataSet();
            ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowCountryId", p);
            return ds;
        }
        public void DeleteCountry()
        {
            SqlParameter[] p = new SqlParameter[1];
            p[0] = new SqlParameter("@CountryId", this._CountryId);
            p[0].DbType = DbType.Int16;
            SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Delete_Country", p);

        }
        public void UpdateCountry()
        {
            SqlParameter[] p = new SqlParameter[3];
            p[0] = new SqlParameter("@CountryId", this._CountryId);
            p[0].DbType = DbType.Int16;
            p[1] = new SqlParameter("@CountryName", this._Name);
            p[1].DbType = DbType.String;
            p[2] = new SqlParameter("@Description", this._Description);
            p[2].DbType = DbType.String;
            SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Update_Country", p);

        }
        public DataSet ShowCountryInfoById()
        {
            SqlParameter[] p = new SqlParameter[1];
            p[0] = new SqlParameter("@CountryId", this._CountryId);
            p[0].DbType = DbType.Int16;
            ds = new DataSet();
            ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_ShowCountryInfoById", p);
            return ds;
        }
}
