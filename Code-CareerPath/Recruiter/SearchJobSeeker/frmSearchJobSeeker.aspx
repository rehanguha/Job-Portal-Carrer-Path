<%@ Page Language="C#" MasterPageFile="~/Recruiter/RecruiterMasterPage.master" AutoEventWireup="true" CodeFile="frmSearchJobSeeker.aspx.cs" Inherits="Recruiter_SearchJobSeeker_frmSearchJobSeeker" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 285px; height: 177px" align="left">
        <tr>
            <td align="left" style="width: 351px">
                <asp:LinkButton ID="lnkAllSeekers" runat="server" Font-Bold="True" Font-Size="Medium"
                    ForeColor="#A1BAE3" Width="146px" OnClick="lnkAllSeekers_Click" BackColor="Navy">View All Jobseekers</asp:LinkButton></td>
        </tr>
        <tr>
            <td align="left" style="width: 351px; height: 19px;">
                <asp:LinkButton ID="lnkSeekersSalary" runat="server" Font-Bold="True" Font-Size="Medium"
                    ForeColor="#A1BAE3" Width="266px" OnClick="lnkSeekersSalary_Click" BackColor="Navy">Jobseekers Based on Expected Salary</asp:LinkButton></td>
        </tr>
        <tr>
            <td align="left" style="width: 351px">
                <asp:LinkButton ID="lnkLocation" runat="server" Font-Bold="True" Font-Size="Medium"
                    ForeColor="#A1BAE3" Width="216px" OnClick="lnkLocation_Click" BackColor="Navy">Jobseekers Based on Location</asp:LinkButton></td>
        </tr>
        <tr>
            <td align="left" style="width: 351px">
                <asp:LinkButton ID="lnkRole" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#A1BAE3"
                    Width="188px" OnClick="lnkRole_Click" BackColor="Navy">Jobseekers Based on Role</asp:LinkButton></td>
        </tr>
        <tr>
            <td align="left" style="width: 351px">
                <asp:LinkButton ID="lnkQualification" runat="server" Font-Bold="True" Font-Size="Medium"
                    ForeColor="#A1BAE3" Width="244px" OnClick="lnkQualification_Click" BackColor="Navy">Jobseekers Based on Qualification</asp:LinkButton></td>
        </tr>
        <tr>
            <td align="left" style="height: 22px; width: 351px;">
                <asp:LinkButton ID="lnkAllCondition" runat="server" Font-Bold="True" Font-Size="Medium"
                    ForeColor="#A1BAE3" Width="286px" OnClick="lnkAllCondition_Click" BackColor="Navy">Jobseekers Based on All Above Condition</asp:LinkButton></td>
        </tr>
    </table>
</asp:Content>

