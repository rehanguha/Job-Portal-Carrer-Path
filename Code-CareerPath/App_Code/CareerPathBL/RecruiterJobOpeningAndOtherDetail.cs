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
/// Summary description for RecruiterJobOpeningAndOtherDetail
/// </summary>
public class RecruiterJobOpeningAndOtherDetail:Connection
{
    public static DataSet ds;
	public RecruiterJobOpeningAndOtherDetail()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    private string _UserName, _JobID, _JobCategory, _SkillsRequired, _Role, _MinimumQualification,    _JobLocation, _JobDescription;
    private int _MaximumAge, _ExperienceYears;
    private decimal _ExpectedSalary;
    private DateTime _JobOpeningDate, _JobClosingDate;
    public string UserName
    {
        get { return _UserName; }
        set { _UserName = value; }
    }
    public string JobID
    {
        get { return _JobID; }
        set { _JobID = value; }
    }
    public string JobCategory
    {
        get { return _JobCategory; }
        set { _JobCategory = value; }
    }
    public string SkillsRequired
    {
        get { return _SkillsRequired; }
        set { _SkillsRequired = value; }
    }
    public string Role
    {
        get { return _Role; }
        set { _Role = value; }
    }
    public string MinimumQualification
    {        get { return _MinimumQualification; }
        set { _MinimumQualification = value; }
    }
    public string JobLocation
    {
        get { return _JobLocation; }
        set { _JobLocation = value; }
    }
    public string JobDescription
    {
        get { return _JobDescription; }
        set { _JobDescription = value; }
    }

    public int MaximumAge
    {
        get { return _MaximumAge; }
        set { _MaximumAge = value; }
    }
    public int ExperienceYears
    {
        get { return _ExperienceYears; }
        set { _ExperienceYears = value; }
    }
    public decimal ExpectedSalary
    {
        get { return _ExpectedSalary; }
        set { _ExpectedSalary = value; }
    }
    public DateTime JobOpeningDate
    {
        get { return _JobOpeningDate; }
        set { _JobOpeningDate = value; }
    }
    public DateTime JobClosingDate
    {
        get { return _JobClosingDate; }
        set { _JobClosingDate = value; }
    }
    public void InsertJobOpeningDetails()
    {
        SqlParameter[] p = new SqlParameter[13];
        p[0] = new SqlParameter("@UserName", this._UserName);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@JobID", this._JobID);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@JobCategory", this._JobCategory);
        p[2].DbType = DbType.String;
        p[3] = new SqlParameter("@SkillsRequired", this._SkillsRequired);
        p[3].DbType = DbType.String;
        p[4] = new SqlParameter("@Role", this._Role);
        p[4].DbType = DbType.String;
        p[5] = new SqlParameter("@MinimumQualification", this._MinimumQualification);
        p[5].DbType = DbType.String;
        p[6] = new SqlParameter("@JobLocation", this._JobLocation);
        p[6].DbType = DbType.String;
        p[7] = new SqlParameter("@JobDescription", this._JobDescription);
        p[7].DbType = DbType.String;
        p[8] = new SqlParameter("@MaximumAge", this._MaximumAge);
        p[8].DbType = DbType.Int16;
        p[9] = new SqlParameter("@ExperienceYears", this._ExperienceYears);
        p[9].DbType = DbType.Int16;
        p[10] = new SqlParameter("@ExpectedSalary", this._ExpectedSalary);
        p[10].DbType = DbType.Decimal;
        p[11] = new SqlParameter("@JobOpeningDate", this._JobOpeningDate);
        p[11].DbType = DbType.String;
        p[12] = new SqlParameter("@JobClosingDate", this._JobClosingDate);
        p[12].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_InsertJobOpeningDetails", p);

    }
    public DataSet ShowAllJobs()
    {
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_AllJobs");
        return ds;
    }
    private string _OrgName;
    public string OrgName
    {
        get { return _OrgName; }
        set { _OrgName = value; }
    }
   //Job Search
    public DataSet ShowFullJobDetailByJobId()
    {
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@OrgName", this._OrgName);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@JobID", this._JobID);
        p[1].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_FullJobDetailByJobId",p);
        return ds;
    }
    //Job By Category
    public DataSet ShowAllJobByCategory()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@JobCategory", this._JobCategory);
        p[0].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_AllJobByCategory", p);
        return ds;
    }

    //Job By Location
    public DataSet ShowAllJobByLocation()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@JobLocation", this._JobLocation);
        p[0].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_AllJobByLocation", p);
        return ds;
    }
    //Job By Role
    public DataSet ShowAllJobByRole()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@Role", this._Role);
        p[0].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_AllJobByRole", p);
        return ds;
    }
    //Job By AnyCondition
    public DataSet ShowAllJobByAnyCondition()
    {
        SqlParameter[] p = new SqlParameter[4];
        p[0] = new SqlParameter("@JobCategory", this._JobCategory);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@JobLocation", this._JobLocation);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@Role", this._Role);
        p[2].DbType = DbType.String;
        p[3] = new SqlParameter("@ExpectedSalary", this._ExpectedSalary);
        p[3].DbType = DbType.Decimal;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_AllJobByAnyCondition", p);
        return ds;
    }
    public DataSet CompareDate()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@JobId", this._JobID);
        p[0].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_CompareDate", p);
        return ds;
    }

    //JobSeeker By Role
    public DataSet ShowAllJobSeekerByRole()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@Role", this._Role);
        p[0].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_AllJobSeekerByRole", p);
        return ds;
    }
    private string _JobSeekerId;
    public string JobSeekerId
    {
        get { return _JobSeekerId; }
        set { _JobSeekerId = value; }
    }
    public DataSet ShowAllSkills()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@JobSeekerId", this._JobSeekerId);
        p[0].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_AllSkills", p);
        return ds;
    }

    public DataSet ShowAllLocation()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@JobSeekerId", this._JobSeekerId);
        p[0].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_AllLocation", p);
        return ds;
    }
    //Jobseeker By Location
    public DataSet ShowAllJobSeekerByLocation()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@Location", this._JobLocation);
        p[0].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_AllJobSeekerByLocation", p);
        return ds;
    }
    private string _Qualification,_Salary;
    public string Qualification
    {
        get { return _Qualification; }
        set { _Qualification = value; }
    }
    public string Salary
    {
        get { return _Salary; }
        set { _Salary = value; }
    }
    //Jobseeker By Qualification
    public DataSet ShowAllJobSeekerByQualification()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@Qualification", this._Qualification);
        p[0].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_AllJobSeekerByQualification", p);
        return ds;
    }
    //Jobseeker By Salary
    public DataSet ShowAllJobSeekerBySalary()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@ExpectedSalary", this._Salary);
        p[0].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_AllJobSeekerBySalary", p);
        return ds;
    }
    
    //JobSeeker By AnyCondition
    public DataSet ShowAllJobSeekerByAnyCondition()
    {
        SqlParameter[] p = new SqlParameter[4];
        p[0] = new SqlParameter("@Role", this._Role);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@Qualification", this._Qualification);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@Location", this._JobLocation);
        p[2].DbType = DbType.String;
        p[3] = new SqlParameter("@ExpectedSalary", this._Salary);
        p[3].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_AllJobSeekerByAnyCondition", p);
        return ds;
    }
}
