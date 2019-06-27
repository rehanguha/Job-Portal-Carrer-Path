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
/// Summary description for JobSeekerRegistrationBL
/// </summary>
public class JobSeekerRegistrationBL:Connection
{
    public static DataSet ds;
	public JobSeekerRegistrationBL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    //Registration Details
    private string _JobSeekerId, _Password, _HintQuestion, _Answer;
    public string JobSeekerId
    {
        get { return _JobSeekerId; }
        set { _JobSeekerId = value; }
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
    //Contact Information

    private string  _FirstName,_LastName,_Address,_City,_State,_PinCode,_Country,_EmailID,_Phone1,_Phone2,_FaxNo;
    public string FaxNo
    {
        get { return _FaxNo; }
        set { _FaxNo = value; }
    }
    public string FirstName
    {
        get { return _FirstName; }
        set { _FirstName = value; }
    }
    public string LastName
    {
        get { return _LastName; }
        set { _LastName = value; }
    }
   
    public string Address
    {
        get { return _Address; }
        set { _Address = value; }
    }
    public string City
    {
        get { return _City; }
        set { _City = value; }
    }
    public string State
    {
        get { return _State; }
        set { _State = value; }
    }
    public string PinCode
    {
        get { return _PinCode; }
        set { _PinCode = value; }
    }
    public string Country
    {
        get { return _Country; }
        set { _Country = value; }
    }
    public string EmailID
    {
        get { return _EmailID; }
        set { _EmailID = value; }
    }
    public string Phone1
    {
        get { return _Phone1; }
        set { _Phone1 = value; }
    }
    public string Phone2
    {
        get { return _Phone2; }
        set { _Phone2 = value; }
    }
    private DateTime _DOB;
    public DateTime DOB
    {
        get { return _DOB; }
        set { _DOB = value; }
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
    //BackGround Information

    private string _HighestDegree,_Specialisation,_University,_TechnicalExp,_WorkField;
    private int _PassingYear;
    private float _Percentage;
    public string HighestDegree
    {
        get { return _HighestDegree; }
        set { _HighestDegree = value; }
    }
    public string Specialisation
    {
        get { return _Specialisation; }
        set { _Specialisation = value; }
    }
    public int PassingYear
    {
        get { return _PassingYear; }
        set { _PassingYear = value; }
    }
    public float Percentage
    {
        get { return _Percentage; }
        set { _Percentage = value; }
    }
    public string University
    {
        get { return _University; }
        set { _University = value; }
    }
   
    public string TechnicalExp
    {
        get { return _TechnicalExp; }
        set { _TechnicalExp = value; }
    }
    public string WorkField
    {
        get { return _WorkField; }
        set { _WorkField = value; }
    }
   
    //JobDetail Information

    private string _JobTitle,_Location1,_State1,_Country1,_Location2,_State2,_Country2,_WillRelocate,_WillTelecommute,_WillTravel;
    public string JobTitle
    {
        get { return _JobTitle; }
        set { _JobTitle = value; }
    }
    public string Location1
    {
        get { return _Location1; }
        set { _Location1 = value; }
    }
    public string State1
    {
        get { return _State1; }
        set { _State1 = value; }
    }
    public string Country1
    {
        get { return _Country1; }
        set { _Country1 = value; }
    }
    public string Location2
    {
        get { return _Location2; }
        set { _Location2 = value; }
    }
    public string State2
    {
        get { return _State2; }
        set { _State2 = value; }
    }
    public string Country2
    {
        get { return _Country2; }
        set { _Country2 = value; }
    }
    public string WillRelocate
    {
        get { return _WillRelocate; }
        set { _WillRelocate = value; }
    }
    public string WillTelecommute
    {
        get { return _WillTelecommute; }
        set { _WillTelecommute = value; }
    }
    public string WillTravel
    {
        get { return _WillTravel; }
        set { _WillTravel = value; }
    }
  
    private string _FullTimeSalary, _HourlySalary, _TypeOfEmployment1, _TypeOfEmployment2, _TypeOfEmployment3;
    public string FullTimeSalary
    {
        get { return _FullTimeSalary; }
        set { _FullTimeSalary = value; }
    }
    public string HourlySalary
    {
        get { return _HourlySalary; }
        set { _HourlySalary = value; }
    }
    public string TypeOfEmployment1
    {
        get { return _TypeOfEmployment1; }
        set { _TypeOfEmployment1 = value; }
    }
    public string TypeOfEmployment2
    {
        get { return _TypeOfEmployment2; }
        set { _TypeOfEmployment2 = value; }
    }
    public string TypeOfEmployment3
    {
        get { return _TypeOfEmployment3; }
        set { _TypeOfEmployment3 = value; }
    }
    private DateTime _Date;
    public DateTime Date
    {
        get { return _Date; }
        set { _Date = value; }
    }
    public void InsertJobSeekerLoginInfo()
    {
        SqlParameter[] p = new SqlParameter[5];
        p[0] = new SqlParameter("@JobSeekerId", this._JobSeekerId);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@Password", this._Password);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@HintQuestion", this._HintQuestion);
        p[2].DbType = DbType.String;
        p[3] = new SqlParameter("@Answer", this._Answer);
        p[3].DbType = DbType.String;
        p[4] = new SqlParameter("@Date", this._Date);
        p[4].DbType = DbType.Date;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_InsertJobSeekerRegestration", p);

    }

    //Contact Information

    public void InsertJobSeekerContactInfo()
    {
        SqlParameter[] p = new SqlParameter[13];
        p[0] = new SqlParameter("@JobSeekerId", this._JobSeekerId);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@FirstName", this._FirstName);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@LastName", this._LastName);
        p[2].DbType = DbType.String;
        p[3] = new SqlParameter("@DOB", this._DOB);
        p[3].DbType = DbType.Date;
        p[4] = new SqlParameter("@Address", this._Address);
        p[4].DbType = DbType.String;
        p[5] = new SqlParameter("@City", this._City);
        p[5].DbType = DbType.String;
        p[6] = new SqlParameter("@State", this._State);
        p[6].DbType = DbType.String;
        p[7] = new SqlParameter("@PinCode", this._PinCode);
        p[7].DbType = DbType.String;
        p[8] = new SqlParameter("@Country", this._Country);
        p[8].DbType = DbType.String;
        p[9] = new SqlParameter("@EmailID", this._EmailID);
        p[9].DbType = DbType.String;
        p[10] = new SqlParameter("@Phone1", this._Phone1);
        p[10].DbType = DbType.String;
        p[11] = new SqlParameter("@Phone2", this._Phone2);
        p[11].DbType = DbType.String;
        p[12] = new SqlParameter("@Fax", this._FaxNo);
        p[12].DbType = DbType.String;
       SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_InsertJobSeekerContactDetails", p);

    }

    //BackGround Information

    public void InsertJobSeekerBackgroundDetails()
    {
        SqlParameter[] p = new SqlParameter[9];
        p[0] = new SqlParameter("@JobSeekerId", this._JobSeekerId);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@HighestDegree", this._HighestDegree);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@Specialisation", this._Specialisation);
        p[2].DbType = DbType.String;
        p[3] = new SqlParameter("@PassingYear", this._PassingYear);
        p[3].DbType = DbType.Int16;
        p[4] = new SqlParameter("@Percentage", this._Percentage);
        p[4].DbType = DbType.Double;
        p[5] = new SqlParameter("@University", this._University);
        p[5].DbType = DbType.String;
        p[6] = new SqlParameter("@Country", this._Country);
        p[6].DbType = DbType.String;
        p[7] = new SqlParameter("@TechnicalExp", this._TechnicalExp);
        p[7].DbType = DbType.String;
        p[8] = new SqlParameter("@WorkField", this._WorkField);
        p[8].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_InsertJobSeekerBackgroundDetails", p);

    }
    //JobDetails Information

    public void InsertJobSeekerJobDetails()
    {
        SqlParameter[] p = new SqlParameter[16];
        p[0] = new SqlParameter("@JobSeekerId", this._JobSeekerId);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@JobTitle", this._JobTitle);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@Location1", this._Location1);
        p[2].DbType = DbType.String;
        p[3] = new SqlParameter("@State1", this._State1);
        p[3].DbType = DbType.String;
        p[4] = new SqlParameter("@Country1", this._Country1);
        p[4].DbType = DbType.String;
        p[5] = new SqlParameter("@Location2", this._Location2);
        p[5].DbType = DbType.String;
        p[6] = new SqlParameter("@State2", this._State2);
        p[6].DbType = DbType.String;
        p[7] = new SqlParameter("@Country2", this._Country2);
        p[7].DbType = DbType.String;
        p[8] = new SqlParameter("@WillRelocate", this._WillRelocate);
        p[8].DbType = DbType.String;
        p[9] = new SqlParameter("@WillTelecommute", this._WillTelecommute);
        p[9].DbType = DbType.String;
        p[10] = new SqlParameter("@WillTravel", this._WillTravel);
        p[10].DbType = DbType.String;
        p[11] = new SqlParameter("@FullTimeSalary", this._FullTimeSalary);
        p[11].DbType = DbType.String;
        p[12] = new SqlParameter("@HourlySalary", this._HourlySalary);
        p[12].DbType = DbType.String;
        p[13] = new SqlParameter("@TypeOfEmployment1", this._TypeOfEmployment1);
        p[13].DbType = DbType.String;
        p[14] = new SqlParameter("@TypeOfEmployment2", this._TypeOfEmployment2);
        p[14].DbType = DbType.String;
        p[15] = new SqlParameter("@TypeOfEmployment3", this._TypeOfEmployment3);
        p[15].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_InsertJobSeekerJobDetails", p);

    }
    //Technical skills Details
    private string _Skill1, _Skill2, _Skill3, _Skill4;
    public string Skill1
    {
        get { return _Skill1; }
        set { _Skill1 = value; }
    }
    public string Skill2
    {
        get { return _Skill2; }
        set { _Skill2 = value; }
    }
    public string Skill3
    {
        get { return _Skill3; }
        set { _Skill3 = value; }
    }
    public string Skill4
    {
        get { return _Skill4; }
        set { _Skill4 = value; }
    }
    private int  _Skill1Year, _Skill1Lastused, _Skill2Year, _Skill2Lastused ,_Skill3Year, _Skill3Lastused, _Skill4Year, _Skill4Lastused;
     public int Skill1Year
    {
        get { return _Skill1Year; }
        set { _Skill1Year = value; }
    }
     public int Skill2Year
    {
        get { return _Skill2Year; }
        set { _Skill2Year = value; }
    }
     public int Skill3Year
    {
        get { return _Skill3Year; }
        set { _Skill3Year = value; }
    }
     public int Skill4Year
    {
        get { return _Skill4Year; }
        set { _Skill4Year = value; }
    }
    public int Skill1Lastused
    {
        get { return _Skill1Lastused; }
        set { _Skill1Lastused = value; }
    }
    public int Skill2Lastused
    {
        get { return _Skill2Lastused; }
        set { _Skill2Lastused = value; }
    }
    public int Skill3Lastused
    {
        get { return _Skill3Lastused; }
        set { _Skill3Lastused = value; }
    }
    public int Skill4Lastused
    {
        get { return _Skill4Lastused; }
        set { _Skill4Lastused = value; }
    }
    public void InsertJobSeekertechnicalSkills()
    {
        SqlParameter[] p = new SqlParameter[13];
        p[0] = new SqlParameter("@JobSeekerId", this._JobSeekerId);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@Skill1", this._Skill1);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@Skill1Year", this._Skill1Year);
        p[2].DbType = DbType.Int16;
        p[3] = new SqlParameter("@Skill1Lastused", this._Skill1Lastused);
        p[3].DbType = DbType.Int16;
        p[4] = new SqlParameter("@Skill2", this._Skill2);
        p[4].DbType = DbType.String;
        p[5] = new SqlParameter("@Skill2Year", this._Skill2Year);
        p[5].DbType = DbType.Int16;
        p[6] = new SqlParameter("@Skill2Lastused", this._Skill2Lastused);
        p[6].DbType = DbType.Int16;
        p[7] = new SqlParameter("@Skill3", this._Skill3);
        p[7].DbType = DbType.String;
        p[8] = new SqlParameter("@Skill3Year", this._Skill3Year);
        p[8].DbType = DbType.Int16;
        p[9] = new SqlParameter("@Skill3Lastused", this._Skill3Lastused);
        p[9].DbType = DbType.Int16;
        p[10] = new SqlParameter("@Skill4", this._Skill4);
        p[10].DbType = DbType.String;
        p[11] = new SqlParameter("@Skill4Year", this._Skill4Year);
        p[11].DbType = DbType.Int16;
        p[12] = new SqlParameter("@Skill4Lastused", this._Skill4Lastused);
        p[12].DbType = DbType.Int16;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_InsertJobSeekertechnicalSkills", p);

    }

    //ResumeDetails Information
private string  _Resume,_ResumePath;
    public string Resume
    {
        get { return _Resume; }
        set { _Resume = value; }
    }
    public string ResumePath
    {
        get { return _ResumePath; }
        set { _ResumePath = value; }
    }
    private DateTime _ResumeUpLoadDate,_LastModifiedDate;
    public DateTime ResumeUpLoadDate
    {
        get { return _ResumeUpLoadDate; }
        set { _ResumeUpLoadDate = value; }
    }
    public DateTime LastModifiedDate
    {
        get { return _LastModifiedDate; }
        set { _LastModifiedDate = value; }
    }
    public void InsertJobSeekerResume()
    {
        SqlParameter[] p = new SqlParameter[5];
        p[0] = new SqlParameter("@JobSeekerId", this._JobSeekerId);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@Resume", this._Resume);
        p[1].SqlDbType = SqlDbType.NText;
        p[2] = new SqlParameter("@ResumeUpLoadDate", this._ResumeUpLoadDate);
        p[2].DbType = DbType.Date;
        p[3] = new SqlParameter("@LastModifiedDate", this._LastModifiedDate);
        p[3].DbType = DbType.Date;
        p[4] = new SqlParameter("@ResumePath", this._ResumePath);
        p[4].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_InsertJobSeekerResume", p);
   }
    public bool CheckUserAvailability()
    {
        int count;
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@JobSeekerId", this._JobSeekerId);
        p[0].DbType = DbType.String;
        count = int.Parse(SqlHelper.ExecuteScalar(con, CommandType.StoredProcedure, "SpCheckUserAvailability", p).ToString());
        if (count > 0)
            return true;
        else
       
            return false;

    }
    public DataSet ShowJobSeekerDetail()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@JobseekerId", this.JobSeekerId);
        p[0].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_ShowJobSeekerContactDetail", p);
        return ds;
    }
    public bool ForgotPasswordCheck()
    {
        int count;
        SqlParameter[] p = new SqlParameter[3];
        p[0] = new SqlParameter("@JobSeekerId", this._JobSeekerId);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@HintQuestion", this._HintQuestion);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@Answer", this._Answer);
        p[2].DbType = DbType.String;
        count = int.Parse(SqlHelper.ExecuteScalar(con, CommandType.StoredProcedure, "Sp_ForgotPasswordCheck", p).ToString());
        if (count > 0)
            return true;
        else

            return false;
    }
    public DataSet ShowForgotPassword()
    {
        SqlParameter[] p = new SqlParameter[3];
        p[0] = new SqlParameter("@JobSeekerId", this._JobSeekerId);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@HintQuestion", this._HintQuestion);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@Answer", this._Answer);
        p[2].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShow_ForgotPassword", p);
        return ds;
    }
    public DataSet ShowLoginInfo()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@JobSeekerId", this._JobSeekerId);
        p[0].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_LoginInfo", p);
        return ds;
    }
    public DataSet PasswordCheck()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@JobSeekerId", this._JobSeekerId);
        p[0].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_PasswordCheck", p);
        return ds;
    }
    public void ModifyJobseekerRegestration()
    {
        SqlParameter[] p = new SqlParameter[4];
        p[0] = new SqlParameter("@JobSeekerId", this._JobSeekerId);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@Password", this._Password);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@HintQuestion", this._HintQuestion);
        p[2].DbType = DbType.String;
        p[3] = new SqlParameter("@Answer", this._Answer);
        p[3].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Modify_JobseekerRegestration", p);
    }
    public DataSet ShowContactDetail()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@JobSeekerId", this.JobSeekerId);
        p[0].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShow_ContactDetail", p);
        return ds;
    }
    public void ModifyJobseekerContactDetails()
    {
        SqlParameter[] p = new SqlParameter[13];
        p[0] = new SqlParameter("@JobSeekerId", this._JobSeekerId);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@FirstName", this._FirstName);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@LastName", this._LastName);
        p[2].DbType = DbType.String;
        p[3] = new SqlParameter("@DOB", this._DOB);
        p[3].DbType = DbType.Date;
        p[4] = new SqlParameter("@Address", this._Address);
        p[4].DbType = DbType.String;
        p[5] = new SqlParameter("@City", this._City);
        p[5].DbType = DbType.String;
        p[6] = new SqlParameter("@State", this._State);
        p[6].DbType = DbType.String;
        p[7] = new SqlParameter("@PinCode", this._PinCode);
        p[7].DbType = DbType.String;
        p[8] = new SqlParameter("@Country", this._Country);
        p[8].DbType = DbType.String;
        p[9] = new SqlParameter("@EmailID", this._EmailID);
        p[9].DbType = DbType.String;
        p[10] = new SqlParameter("@Phone1", this._Phone1);
        p[10].DbType = DbType.String;
        p[11] = new SqlParameter("@Phone2", this._Phone2);
        p[11].DbType = DbType.String;
        p[12] = new SqlParameter("@FaxNo", this._FaxNo);
        p[12].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Modify_JobseekerContactDetails", p);

    }
    
    //BackGround Information

    public DataSet ShowJobseekerBackgroundDetail()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@JobSeekerId", this.JobSeekerId);
        p[0].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_JobseekerBackgroundDetail", p);
        return ds;
    }


    public void ModifyJobseekerBackgroundDetails()
    {
        SqlParameter[] p = new SqlParameter[9];
        p[0] = new SqlParameter("@JobSeekerId", this._JobSeekerId);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@HighestDegree", this._HighestDegree);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@Specialisation", this._Specialisation);
        p[2].DbType = DbType.String;
        p[3] = new SqlParameter("@PassingYear", this._PassingYear);
        p[3].DbType = DbType.Int16;
        p[4] = new SqlParameter("@Percentage", this._Percentage);
        p[4].DbType = DbType.Double;
        p[5] = new SqlParameter("@University", this._University);
        p[5].DbType = DbType.String;
        p[6] = new SqlParameter("@Country", this._Country);
        p[6].DbType = DbType.String;
        p[7] = new SqlParameter("@TechnicalExp", this._TechnicalExp);
        p[7].DbType = DbType.String;
        p[8] = new SqlParameter("@WorkField", this._WorkField);
        p[8].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Modify_JobseekerBackgroundDetails", p);

    }

    //JobDetails Information

    public DataSet ShowJobseekerJobDetail()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@JobSeekerId", this.JobSeekerId);
        p[0].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_JobseekerJobDetail", p);
        return ds;
    }

    public void ModifyJobseekerJobDetails()
    {
        SqlParameter[] p = new SqlParameter[16];
        p[0] = new SqlParameter("@JobSeekerId", this._JobSeekerId);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@JobTitle", this._JobTitle);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@Location1", this._Location1);
        p[2].DbType = DbType.String;
        p[3] = new SqlParameter("@State1", this._State1);
        p[3].DbType = DbType.String;
        p[4] = new SqlParameter("@Country1", this._Country1);
        p[4].DbType = DbType.String;
        p[5] = new SqlParameter("@Location2", this._Location2);
        p[5].DbType = DbType.String;
        p[6] = new SqlParameter("@State2", this._State2);
        p[6].DbType = DbType.String;
        p[7] = new SqlParameter("@Country2", this._Country2);
        p[7].DbType = DbType.String;
        p[8] = new SqlParameter("@WillRelocate", this._WillRelocate);
        p[8].DbType = DbType.String;
        p[9] = new SqlParameter("@WillTelecommute", this._WillTelecommute);
        p[9].DbType = DbType.String;
        p[10] = new SqlParameter("@WillTravel", this._WillTravel);
        p[10].DbType = DbType.String;
        p[11] = new SqlParameter("@FullTimeSalary", this._FullTimeSalary);
        p[11].DbType = DbType.String;
        p[12] = new SqlParameter("@HourlySalary", this._HourlySalary);
        p[12].DbType = DbType.String;
        p[13] = new SqlParameter("@TypeOfEmployment1", this._TypeOfEmployment1);
        p[13].DbType = DbType.String;
        p[14] = new SqlParameter("@TypeOfEmployment2", this._TypeOfEmployment2);
        p[14].DbType = DbType.String;
        p[15] = new SqlParameter("@TypeOfEmployment3", this._TypeOfEmployment3);
        p[15].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Modify_JobseekerJobDetails", p);

    }
 
    //TechnicalSkillDetail
    public DataSet ShowJobSeekerTechnicalSkillDetail()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@JobSeekerId", this.JobSeekerId);
        p[0].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_JobSeekerTechnicalSkillDetail", p);
        return ds;
    }
    public void ModifyJobseekerTechnicalSkills()
    {
        SqlParameter[] p = new SqlParameter[13];
        p[0] = new SqlParameter("@JobSeekerId", this._JobSeekerId);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@Skill1", this._Skill1);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@Skill1Year", this._Skill1Year);
        p[2].DbType = DbType.Int16;
        p[3] = new SqlParameter("@Skill1Lastused", this._Skill1Lastused);
        p[3].DbType = DbType.Int16;
        p[4] = new SqlParameter("@Skill2", this._Skill2);
        p[4].DbType = DbType.String;
        p[5] = new SqlParameter("@Skill2Year", this._Skill2Year);
        p[5].DbType = DbType.Int16;
        p[6] = new SqlParameter("@Skill2Lastused", this._Skill2Lastused);
        p[6].DbType = DbType.Int16;
        p[7] = new SqlParameter("@Skill3", this._Skill3);
        p[7].DbType = DbType.String;
        p[8] = new SqlParameter("@Skill3Year", this._Skill3Year);
        p[8].DbType = DbType.Int16;
        p[9] = new SqlParameter("@Skill3Lastused", this._Skill3Lastused);
        p[9].DbType = DbType.Int16;
        p[10] = new SqlParameter("@Skill4", this._Skill4);
        p[10].DbType = DbType.String;
        p[11] = new SqlParameter("@Skill4Year", this._Skill4Year);
        p[11].DbType = DbType.Int16;
        p[12] = new SqlParameter("@Skill4Lastused", this._Skill4Lastused);
        p[12].DbType = DbType.Int16;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Modify_JobseekerTechnicalSkills", p);

    }

    //JobSeeker resume Detail
    public DataSet ShowJobSeekerResumeDetail()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@JobSeekerId", this.JobSeekerId);
        p[0].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_JobSeekerResumeDetail", p);
        return ds;
    }
    public void ModifyJobseekerResumeDetail()
    {
        SqlParameter[] p = new SqlParameter[4];
        p[0] = new SqlParameter("@JobSeekerId", this._JobSeekerId);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@Resume", this._Resume);
        p[1].SqlDbType = SqlDbType.NText;
        p[2] = new SqlParameter("@LastModifiedDate", this._LastModifiedDate);
        p[2].DbType = DbType.Date;
        p[3] = new SqlParameter("@ResumePath", this._ResumePath);
        p[3].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Modify_JobseekerResumeDetail", p);
    }
    public bool CheckJobSeekerLoginInfo()
    {
        int count;
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@JobSeekerId", this._JobSeekerId);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@Password", this._Password);
        p[1].DbType = DbType.String;
        count = int.Parse(SqlHelper.ExecuteScalar(con, CommandType.StoredProcedure, "Sp_CheckJobSeekerLoginInfo", p).ToString());
        if (count > 0)
            return true;
        else

            return false;
    }

    //View JobSeeker

    public DataSet ShowAllRegisteredJobSeekerByDate()
    {
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@FromDate", this._FromDate);
        p[0].DbType = DbType.Date;
        p[1] = new SqlParameter("@ToDate", this._ToDate);
        p[1].DbType = DbType.Date;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_AllRegisteredJobSeeker", p);
        return ds;
    }
    public void DeleteRegisterJobseekerInfo()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@JobSeekerId", this._JobSeekerId);
        p[0].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Delete_RegisterJobseekerInfo", p);
    }
}
