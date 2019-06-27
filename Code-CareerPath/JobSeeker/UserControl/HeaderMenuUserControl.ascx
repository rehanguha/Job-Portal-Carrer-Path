<%@ Control Language="C#" AutoEventWireup="true" CodeFile="HeaderMenuUserControl.ascx.cs" Inherits="JobSeeker_UserControl_HeaderMenuUserControl" %>
<table bgcolor="#006600" border="0" cellpadding="0" cellspacing="0" style="font-weight: bold;
     color: #e3e7e3" width="100%">
    <tr>
        <td align="left">
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="Medium"
                ForeColor="#E3E7E3" OnClick="LinkButton1_Click" Width="108px">View Resume</asp:LinkButton></td>
        <td align="left">
            <asp:LinkButton ID="lnkProfileUpdate" runat="server" Font-Bold="True" Font-Size="Medium"
                ForeColor="#E3E7E3" OnClick="lnkProfileUpdate_Click" Width="128px">Update Your Profile</asp:LinkButton></td>
        <td align="left" style="width: 100px">
            <asp:LinkButton ID="lnkAccountUpdate" runat="server" Font-Bold="True" Font-Size="Medium"
                ForeColor="#E3E7E3" OnClick="lnkAccountUpdate_Click" Width="127px">Update Account Profile</asp:LinkButton></td>
        <td align="left" style="width: 100px">
            <asp:LinkButton ID="lnkTechnicalSkill" runat="server" Font-Bold="True" Font-Size="Medium"
                ForeColor="#E3E7E3" OnClick="lnkTechnicalSkill_Click" Width="162px">Update Technical Skills Profile</asp:LinkButton></td>
        <td align="left">
            <asp:LinkButton ID="lnkJob" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#E3E7E3"
                OnClick="lnkJob_Click" Width="98px">Update Job Profile</asp:LinkButton></td>
        <td align="left">
            <asp:LinkButton ID="lnkEducation" runat="server" Font-Bold="True" Font-Size="Medium"
                ForeColor="#E3E7E3" OnClick="lnkEducation_Click" Width="140px">Update Education Profile</asp:LinkButton></td>
        <td align="left">
            <asp:LinkButton ID="lnkSearchJob" runat="server" Font-Bold="True" Font-Size="Medium"
                ForeColor="#E3E7E3" OnClick="lnkSearchJob_Click" Width="64px">Search Jobs</asp:LinkButton></td>
        <td align="left">
            <asp:LinkButton ID="lnkResponse" runat="server" Font-Bold="True" Font-Size="Medium"
                ForeColor="#E3E7E3" OnClick="lnkResponse_Click" Width="104px">Response Detail</asp:LinkButton></td>
        
    </tr>
</table>
