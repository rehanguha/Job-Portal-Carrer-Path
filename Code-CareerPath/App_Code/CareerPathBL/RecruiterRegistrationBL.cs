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
/// Summary description for RecruiterRegistrationBL
/// </summary>
public class RecruiterRegistrationBL:Connection
{
    public static DataSet ds;
	public RecruiterRegistrationBL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    private string _UserName, _Password, _HintQuestion, _Answer;
    public string  UserName
    {
        get { return _UserName; }
        set { _UserName = value; }
    }
    public string Password
    {
        get { return _Password; }
        set { _Password = value; }
    }
    public string HintQuestion
    {
        get { return _HintQuestion; }
        set { _HintQuestion = value; }
    }
    public string Answer
    {
        get { return _Answer; }
        set { _Answer = value; }
    }
    private DateTime _Date;
    public DateTime Date
    {
        get { return _Date; }
        set { _Date = value; }
    }
    private DateTime _FromDate, _ToDate;
    public DateTime FromDate
    {
        get { return _FromDate; }
        set { _FromDate = value; }
    }
    public DateTime ToDate
    {
        get { return _ToDate; }
        set { _ToDate = value; }
    }
    public void InsertRecruiterAccountDetail()
    {
        SqlParameter[] p = new SqlParameter[5];
        p[0] = new SqlParameter("@UserName", this._UserName);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@Password", this._Password);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@HintQuestion", this._HintQuestion);
        p[2].DbType = DbType.String;
        p[3] = new SqlParameter("@Answer", this._Answer);
        p[3].DbType = DbType.String;
        p[4] = new SqlParameter("@Date", this._Date);
        p[4].DbType = DbType.Date;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_InsertRecruiterAccountDetail", p);

    }
    //Recruiter Organization Detail
    private string _OrganisationName ,_BusinessSector,_Certificate1 ,_Certificate2 ,_Certificate3 ,_Website ,_EmailID1 ,_EmailID2 ,_Address ,_OrganisationEnvironment ,_TermsAndCondition ,_Others;
    public string OrganisationName
    {
        get { return _OrganisationName; }
        set { _OrganisationName = value; }
    }
    public string BusinessSector
    {
        get { return _BusinessSector; }
        set { _BusinessSector = value; }
    }
    public string Certificate1
    {
        get { return _Certificate1; }
        set { _Certificate1 = value; }
    }
    public string Certificate2
    {
        get { return _Certificate2; }
        set { _Certificate2 = value; }
    }
    public string Certificate3
    {
        get { return _Certificate3; }
        set { _Certificate3 = value; }
    }
    public string Website
    {
        get { return _Website; }
        set { _Website = value; }
    }
    public string EmailID1
    {
        get { return _EmailID1; }
        set { _EmailID1 = value; }
    }
    public string EmailID2
    {
        get { return _EmailID2; }
        set { _EmailID2 = value; }
    }
    public string Address
    {        get { return _Address; }
        set { _Address = value; }
    }
    public string OrganisationEnvironment
    {
        get { return _OrganisationEnvironment; }
        set { _OrganisationEnvironment = value; }
    }
    public string TermsAndCondition
    {        get { return _TermsAndCondition; }
        set { _TermsAndCondition = value; }
    }
    public string Others
    {
        get { return _Others; }
        set { _Others = value; }
    }
   
    private int _SizeOfOrganisation;
    public int SizeOfOrganisation
    {
        get { return _SizeOfOrganisation; }
        set { _SizeOfOrganisation = value; }
    }
    public void InsertRecruiterOrganisationDetails()
    {
        SqlParameter[] p = new SqlParameter[14];
        p[0] = new SqlParameter("@UserName", this._UserName);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@OrganisationName", this._OrganisationName);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@BusinessSector", this._BusinessSector);
        p[2].DbType = DbType.String;
        p[3] = new SqlParameter("@Certificate1", this._Certificate1);
        p[3].DbType = DbType.String;
        p[4] = new SqlParameter("@Certificate2", this._Certificate2);
        p[4].DbType = DbType.String;
        p[5] = new SqlParameter("@Certificate3", this._Certificate3);
        p[5].DbType = DbType.String;
        p[6] = new SqlParameter("@Website", this._Website);
        p[6].DbType = DbType.String;
        p[7] = new SqlParameter("@EmailID1", this._EmailID1);
        p[7].DbType = DbType.String;
        p[8] = new SqlParameter("@EmailID2", this._EmailID2);
        p[8].DbType = DbType.String;
        p[9] = new SqlParameter("@Address", this._Address);
        p[9].DbType = DbType.String;
        p[10] = new SqlParameter("@OrganisationEnvironment", this._OrganisationEnvironment);
        p[10].DbType = DbType.String;
        p[11] = new SqlParameter("@TermsAndCondition", this._TermsAndCondition);
        p[11].DbType = DbType.String;
        p[12] = new SqlParameter("@Others", this._Others);
        p[12].DbType = DbType.String;
        p[13] = new SqlParameter("@SizeOfOrganisation", this._SizeOfOrganisation);
        p[13].DbType = DbType.Int16;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_InsertRecruiterOrganisationDetails", p);

    }

    public bool CheckReruiterAvailability()
    {
        int count;
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@UserName", this._UserName);
        p[0].DbType = DbType.String;
        count = int.Parse(SqlHelper.ExecuteScalar(con, CommandType.StoredProcedure, "SpCheckReruiterAvailability", p).ToString());
        if (count > 0)
            return true;
        else

            return false;
    }

     public bool RecruiterPasswordCheck()
    {
        int count;
        SqlParameter[] p = new SqlParameter[3];
        p[0] = new SqlParameter("@UserName", this._UserName);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@HintQuestion", this._HintQuestion);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@Answer", this._Answer);
        p[2].DbType = DbType.String;
        count = int.Parse(SqlHelper.ExecuteScalar(con, CommandType.StoredProcedure, "Sp_RecruiterPasswordCheck", p).ToString());
        if (count > 0)
            return true;
        else

            return false;
    }
    public DataSet ShowRecruiterForgotPassword()
    {
        SqlParameter[] p = new SqlParameter[3];
        p[0] = new SqlParameter("@UserName", this._UserName);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@HintQuestion", this._HintQuestion);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@Answer", this._Answer);
        p[2].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShow_RecruiterForgotPassword", p);
        return ds;
    }
    public DataSet ShowRecruiterLoginInfo()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@UserName", this._UserName);
        p[0].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_RecruiterLoginInfo", p);
        return ds;
    }
    public DataSet RecruiterPasswordVerify()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@UserName", this._UserName);
        p[0].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_RecruiterPasswordVerify", p);
        return ds;
    }
    public void ModifyRecruiterRegestration()
    {
        SqlParameter[] p = new SqlParameter[4];
        p[0] = new SqlParameter("@UserName", this._UserName);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@Password", this._Password);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@HintQuestion", this._HintQuestion);
        p[2].DbType = DbType.String;
        p[3] = new SqlParameter("@Answer", this._Answer);
        p[3].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Modify_RecruiterRegestration", p);
    }
    //Recruiter Organization Detail
    public DataSet ShowRecruiterProfile()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@UserName", this._UserName);
        p[0].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_RecruiterProfile", p);
        return ds;
    }
    public void ModifyRecruiterOrganisationDetails()
    {
        SqlParameter[] p = new SqlParameter[14];
        p[0] = new SqlParameter("@UserName", this._UserName);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@OrganisationName", this._OrganisationName);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@BusinessSector", this._BusinessSector);
        p[2].DbType = DbType.String;
        p[3] = new SqlParameter("@Certificate1", this._Certificate1);
        p[3].DbType = DbType.String;
        p[4] = new SqlParameter("@Certificate2", this._Certificate2);
        p[4].DbType = DbType.String;
        p[5] = new SqlParameter("@Certificate3", this._Certificate3);
        p[5].DbType = DbType.String;
        p[6] = new SqlParameter("@Website", this._Website);
        p[6].DbType = DbType.String;
        p[7] = new SqlParameter("@EmailID1", this._EmailID1);
        p[7].DbType = DbType.String;
        p[8] = new SqlParameter("@EmailID2", this._EmailID2);
        p[8].DbType = DbType.String;
        p[9] = new SqlParameter("@Address", this._Address);
        p[9].DbType = DbType.String;
        p[10] = new SqlParameter("@OrganisationEnvironment", this._OrganisationEnvironment);
        p[10].DbType = DbType.String;
        p[11] = new SqlParameter("@TermsAndCondition", this._TermsAndCondition);
        p[11].DbType = DbType.String;
        p[12] = new SqlParameter("@Others", this._Others);
        p[12].DbType = DbType.String;
        p[13] = new SqlParameter("@SizeOfOrganisation", this._SizeOfOrganisation);
        p[13].DbType = DbType.Int16;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Modify_RecruiterOrganisationDetails", p);

    }
    public bool CheckRecruiterLoginInfo()
    {
        int count;
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@UserName", this._UserName);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@Password", this._Password);
        p[1].DbType = DbType.String;
        count = int.Parse(SqlHelper.ExecuteScalar(con, CommandType.StoredProcedure, "Sp_CheckRecruiterLoginInfo", p).ToString());
        if (count > 0)
            return true;
        else

            return false;
    }
    public DataSet ShowOrganizationDetailByOrg()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@OrgName", this._OrganisationName);
        p[0].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_ShowOrganizationDetailByOrg", p);
        return ds;
    }
    public bool CheckAdminLoginInfo()
    {
        int count;
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@UserName", this._UserName);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@Password", this._Password);
        p[1].DbType = DbType.String;
        count = int.Parse(SqlHelper.ExecuteScalar(con, CommandType.StoredProcedure, "Sp_CheckAdminLoginInfo", p).ToString());
        if (count > 0)
            return true;
        else

            return false;
    }
    //View Recruiter

    public DataSet ShowAllRegisteredRecruiter()
    {
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@FromDate", this._FromDate);
        p[0].DbType = DbType.Date;
        p[1] = new SqlParameter("@ToDate", this._ToDate);
        p[1].DbType = DbType.Date;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_AllRegisteredRecruiter", p);
        return ds;
    }
    public void DeleteRegisterRecruiterInfo()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@UserName", this._UserName);
        p[0].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Delete_RegisterRecruiterInfo", p);
    }
}
