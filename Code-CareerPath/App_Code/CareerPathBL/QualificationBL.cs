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
/// Summary description for QualificationBL
/// </summary>
public class QualificationBL:Connection
{
    public static DataSet ds;
	public QualificationBL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    string _Qualification, _Description;
    private int _QualificationLevel,_QualificationId;
    public string Qualification
    {
        get { return _Qualification; }
        set { _Qualification = value; }
    }
    public string Description
    {
        get { return _Description; }
        set { _Description = value; }
    }
    public int QualificationLevel
    {
        get { return _QualificationLevel; }
        set { _QualificationLevel = value; }
    }
    public int QualificationId
    {
        get { return _QualificationId; }
        set { _QualificationId = value; }
    }
    public void InsertQualification()
    {
        SqlParameter[] p = new SqlParameter[3];
        p[0] = new SqlParameter("@Qualification", this._Qualification);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@Description", this._Description);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@QualificationLevel", this._QualificationLevel);
        p[2].DbType = DbType.Int16;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Insert_Qualification", p);
    }
    public DataSet ShowQualification()
    {
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_Qualification");
        return ds;
    }
    public void DeleteQualification()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@QualificationId", this._QualificationId);
        p[0].DbType = DbType.Int16;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Delete_Qualification", p);

    }
    public void UpdateQualification()
    {
        SqlParameter[] p = new SqlParameter[3];
        p[0] = new SqlParameter("@QualificationId", this._QualificationId);
        p[0].DbType = DbType.Int16;
        p[1] = new SqlParameter("@Qualification", this._Qualification);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@Description", this._Description);
        p[2].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Update_Qualification", p);

    }
    public DataSet ShowQualificationInfoById()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@QualificationId", this._QualificationId);
        p[0].DbType = DbType.Int16;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_ShowQualificationInfoById", p);
        return ds;
    }
}
