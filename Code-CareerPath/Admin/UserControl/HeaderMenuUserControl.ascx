<%@ Control Language="C#" AutoEventWireup="true" CodeFile="HeaderMenuUserControl.ascx.cs" Inherits="Admin_UserControl_HeaderMenuUserControl" %>
<table  cellpadding="0" cellspacing="0" style="width: 100%; border:1px; border-top-color:Purple;border-bottom-color:Purple; border-top-style:solid; border-bottom-style:solid">
    <tr>
        <td align="center">
            <asp:Menu ID="Menu1" runat="server" Font-Bold="True" ForeColor="Purple" Orientation="Horizontal"
                Width="466px">
                <Items>
                    <asp:MenuItem Text="111" Value="111"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Admin/frmAdminHome.aspx" Text="Home" Value="Home"></asp:MenuItem>
                    <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                    <asp:MenuItem Text="Add" Value="Add">
                        <asp:MenuItem NavigateUrl="~/Admin/frmAddCountry.aspx" Text="Country" Value="Country">
                        </asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Admin/frmAddState.aspx" Text="State" Value="State"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Admin/frmAddLocation.aspx" Text="Location" Value="Location">
                        </asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Admin/frmAddExperience.aspx" Text="Experience" Value="Experience">
                        </asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Admin/frmAddFunctionalArea.aspx" Text="Functional Area"
                            Value="Functional Area"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Admin/frmAddJobPost.aspx" Text="Job Type" Value="Job Type">
                        </asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Admin/frmAddQualification.aspx" Text="Qualification"
                            Value="Qualification"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Admin/frmAddSkills.aspx" Text="Skills" Value="Skills"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                    <asp:MenuItem Text="Jobseeker Reports" Value="View Reports">
                        <asp:MenuItem NavigateUrl="~/Admin/ViewReports/Jobseeker/frmViewRegisteredJobSeekerByDate.aspx"
                            Text="Registered Jobseeker" Value="Registered Jobseeker"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Admin/ViewReports/Jobseeker/frmJobSeekerResponseToRecruiter.aspx"
                            Text="Jobseeker Applied Jobs" Value="Jobseeker Applied Jobs"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                    <asp:MenuItem Text="Recruiter Reports" Value="Recruiter Reports">
                        <asp:MenuItem NavigateUrl="~/Admin/ViewReports/Recruiter/frmViewRegisteredRecruiterByDate.aspx"
                            Text="Registered Recruiter" Value="Registered Recruiter"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Admin/ViewReports/Recruiter/frmRecruiterResponseToJobSeeker.aspx"
                            Text="Recruiter Offered Jobs" Value="Recruiter Offered Jobs"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="111" Value="111"></asp:MenuItem>
                </Items>
                <DynamicHoverStyle BackColor="Pink" />
                <StaticHoverStyle BackColor="White" />
            </asp:Menu>
        </td>
    </tr>
</table>
