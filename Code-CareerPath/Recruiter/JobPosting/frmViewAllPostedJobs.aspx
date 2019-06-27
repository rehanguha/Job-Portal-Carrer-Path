<%@ Page Language="C#" MasterPageFile="~/Recruiter/RecruiterMasterPage.master" AutoEventWireup="true"
    CodeFile="frmViewAllPostedJobs.aspx.cs" Inherits="Recruiter_JobPosting_frmViewAllPostedJobs"
    Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <strong><span style="font-size: 14pt">
        <br />
        All Posted Jobs From Your Organization</span></strong><br />
    <br />
    <br />
    <asp:GridView ID="GridView1" AutoGenerateColumns="False" runat="server" EmptyDataText="No Data Found"
        DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" Width="756px"
        Font-Size="Small" DataKeyNames="Sno">
        <Columns>
            <asp:CommandField ShowSelectButton="True" ShowDeleteButton="True" />
            <asp:BoundField DataField="Sno" HeaderText="S.No" />
            <asp:BoundField DataField="JobId" HeaderText="Job Type" />
            <asp:BoundField DataField="JobCategory" HeaderText="Job Category" />
            <asp:BoundField DataField="JobOpeningDate" HeaderText="Opening Date" />
            <asp:BoundField DataField="JobClosingDate" HeaderText="Closing Date" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CareerPathConnectionString %>"
        SelectCommand="SELECT [UserName], [JobID], [JobCategory], [JobOpeningDate], [JobClosingDate], [Sno] FROM [tbl_JobOpeningDetails] WHERE ([UserName] = @UserName)"
        DeleteCommand="DELETE FROM [tbl_JobOpeningDetails] WHERE [Sno] = @original_Sno"
        InsertCommand="INSERT INTO [tbl_JobOpeningDetails] ([UserName], [JobID], [JobCategory], [JobOpeningDate], [JobClosingDate]) VALUES (@UserName, @JobID, @JobCategory, @JobOpeningDate, @JobClosingDate)"
        OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [tbl_JobOpeningDetails] SET [UserName] = @UserName, [JobID] = @JobID, [JobCategory] = @JobCategory, [JobOpeningDate] = @JobOpeningDate, [JobClosingDate] = @JobClosingDate WHERE [Sno] = @original_Sno">
        <SelectParameters>
            <asp:SessionParameter Name="UserName" SessionField="UserName" Type="String" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="original_Sno" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="JobID" Type="String" />
            <asp:Parameter Name="JobCategory" Type="String" />
            <asp:Parameter Name="JobOpeningDate" Type="DateTime" />
            <asp:Parameter Name="JobClosingDate" Type="DateTime" />
            <asp:Parameter Name="original_Sno" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="JobID" Type="String" />
            <asp:Parameter Name="JobCategory" Type="String" />
            <asp:Parameter Name="JobOpeningDate" Type="DateTime" />
            <asp:Parameter Name="JobClosingDate" Type="DateTime" />
        </InsertParameters>
    </asp:SqlDataSource>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Sno"
        DataSourceID="SqlDataSource2" Height="50px" Width="380px" Font-Size="Small" OnItemCommand="DetailsView1_ItemCommand">
        <Fields>
            <asp:BoundField DataField="UserName" HeaderText="User Name" />
            <asp:BoundField DataField="JobID" HeaderText="Job Name" />
            <asp:BoundField DataField="JobCategory" HeaderText="Job Category" />
            <asp:BoundField DataField="SkillsRequired" HeaderText="Skills Required" />
            <asp:BoundField DataField="Role" HeaderText="Role" />
            <asp:BoundField DataField="MinimumQualification" HeaderText="Qualification" />
            <asp:BoundField DataField="MaximumAge" HeaderText="Age Limit" />
            <asp:BoundField DataField="ExperienceYears" HeaderText="Experience" />
            <asp:BoundField DataField="ExpectedSalary" HeaderText="Salary" />
            <asp:BoundField DataField="JobLocation" HeaderText="Job Location" />
            <asp:BoundField DataField="JobDescription" HeaderText="Job Description" />
            <asp:BoundField DataField="JobOpeningDate" HeaderText="Opening Date" />
            <asp:BoundField DataField="JobClosingDate" HeaderText="Closing Date" />
        </Fields>
        <FooterTemplate>
            <asp:LinkButton ID="lnkClose" runat="server" CommandName="Close">Close</asp:LinkButton>
        </FooterTemplate>
        <Fields>
            <asp:CommandField ShowEditButton="True" />
        </Fields>
    </asp:DetailsView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CareerPathConnectionString %>"
        DeleteCommand="DELETE FROM [tbl_JobOpeningDetails] WHERE [Sno] = @original_Sno"
        InsertCommand="INSERT INTO [tbl_JobOpeningDetails] ([UserName], [JobID], [JobCategory], [SkillsRequired], [Role], [MinimumQualification], [MaximumAge], [ExperienceYears], [ExpectedSalary], [JobLocation], [JobOpeningDate], [JobClosingDate], [JobDescription]) VALUES (@UserName, @JobID, @JobCategory, @SkillsRequired, @Role, @MinimumQualification, @MaximumAge, @ExperienceYears, @ExpectedSalary, @JobLocation, @JobOpeningDate, @JobClosingDate, @JobDescription)"
        OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tbl_JobOpeningDetails] WHERE ([Sno] = @Sno2)"
        UpdateCommand="UPDATE [tbl_JobOpeningDetails] SET [UserName] = @UserName, [JobID] = @JobID, [JobCategory] = @JobCategory, [SkillsRequired] = @SkillsRequired, [Role] = @Role, [MinimumQualification] = @MinimumQualification, [MaximumAge] = @MaximumAge, [ExperienceYears] = @ExperienceYears, [ExpectedSalary] = @ExpectedSalary, [JobLocation] = @JobLocation, [JobOpeningDate] = @JobOpeningDate, [JobClosingDate] = @JobClosingDate, [JobDescription] = @JobDescription WHERE [Sno] = @original_Sno">
        <DeleteParameters>
            <asp:Parameter Name="original_Sno" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="JobID" Type="String" />
            <asp:Parameter Name="JobCategory" Type="String" />
            <asp:Parameter Name="SkillsRequired" Type="String" />
            <asp:Parameter Name="Role" Type="String" />
            <asp:Parameter Name="MinimumQualification" Type="String" />
            <asp:Parameter Name="MaximumAge" Type="Byte" />
            <asp:Parameter Name="ExperienceYears" Type="Byte" />
            <asp:Parameter Name="ExpectedSalary" Type="Decimal" />
            <asp:Parameter Name="JobLocation" Type="String" />
            <asp:Parameter Name="JobOpeningDate" Type="DateTime" />
            <asp:Parameter Name="JobClosingDate" Type="DateTime" />
            <asp:Parameter Name="JobDescription" Type="String" />
            <asp:Parameter Name="original_Sno" Type="Int32" />
        </UpdateParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="Sno2" PropertyName="SelectedValue"
                Type="Int32" />
        </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="JobID" Type="String" />
            <asp:Parameter Name="JobCategory" Type="String" />
            <asp:Parameter Name="SkillsRequired" Type="String" />
            <asp:Parameter Name="Role" Type="String" />
            <asp:Parameter Name="MinimumQualification" Type="String" />
            <asp:Parameter Name="MaximumAge" Type="Byte" />
            <asp:Parameter Name="ExperienceYears" Type="Byte" />
            <asp:Parameter Name="ExpectedSalary" Type="Decimal" />
            <asp:Parameter Name="JobLocation" Type="String" />
            <asp:Parameter Name="JobOpeningDate" Type="DateTime" />
            <asp:Parameter Name="JobClosingDate" Type="DateTime" />
            <asp:Parameter Name="JobDescription" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    &nbsp;&nbsp;<br />
    <br />
</asp:Content>
