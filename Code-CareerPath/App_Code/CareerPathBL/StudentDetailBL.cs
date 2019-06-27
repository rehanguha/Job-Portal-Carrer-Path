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
/// Summary description for StudentDetailBL
/// </summary>
public class StudentDetailBL:Connection
{
    public static DataSet ds;
	public StudentDetailBL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    string _RollNo, _Name, _PassingYear;
    public string RollNo
    {
        get { return _RollNo; }
        set { _RollNo = value; }
    }
    public string Name
    {
        get { return _Name; }
        set { _Name = value; }
    }
    public string PassingYear
    {
        get { return _PassingYear; }
        set { _PassingYear = value; }
    }
    private int _QualificationId;
    public int QualificationId
    {
        get { return _QualificationId; }
        set { _QualificationId = value; }
    }
    public void InsertStudentDetail()
    {
        SqlParameter[] p = new SqlParameter[4];
        p[0] = new SqlParameter("@RollNo", this._RollNo);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@Name", this._Name);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@QualificationId", this._QualificationId);
        p[2].DbType = DbType.Int16;
        p[3] = new SqlParameter("@PassingYear", this._PassingYear);
        p[3].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Insert_StudentDetail", p);
    }
}
