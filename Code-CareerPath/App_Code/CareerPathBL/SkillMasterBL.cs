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
/// Summary description for SkillMasterBL
/// </summary>
public class SkillMasterBL:Connection
{
    public static DataSet ds;
	public SkillMasterBL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    string _Type, _Description;
    public string Type
    {
        get { return _Type; }
        set { _Type = value; }
    }
    public string Description
    {
        get { return _Description; }
        set { _Description = value; }
    }
    private int _SkillId;
    public int SkillId
    {
        get { return _SkillId; }
        set { _SkillId = value; }
    }
    public void InsertSkills()
    {
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@Type", this._Type);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@Description", this._Description);
        p[1].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Insert_Skills", p);
    }
    public DataSet ShowSkills()
    {
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_Skills");
        return ds;
    }
    public void DeleteSkill()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@SkillId", this._SkillId);
        p[0].DbType = DbType.Int16;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Delete_Skill", p);

    }
    public void UpdateSkill()
    {
        SqlParameter[] p = new SqlParameter[3];
        p[0] = new SqlParameter("@SkillId", this._SkillId);
        p[0].DbType = DbType.Int16;
        p[1] = new SqlParameter("@SkillType", this._Type);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@Description", this._Description);
        p[2].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Update_Skill", p);

    }
    public DataSet ShowSkillInfoById()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@SkillId", this._SkillId);
        p[0].DbType = DbType.Int16;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_ShowSkillInfoById", p);
        return ds;
    }
}
