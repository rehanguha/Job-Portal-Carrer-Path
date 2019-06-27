<%@ Control Language="C#" AutoEventWireup="true" CodeFile="JobseekerMenuUserControl.ascx.cs" Inherits="Admin_UserControl_JobseekerMenuUserControl" %>
<table bgcolor="#006600" border="0" cellpadding="0" cellspacing="0" style="font-weight: bold;
     color: #e3e7e3; background-color: #800080; width: 76%;">
    <tr>
        <td align="left">
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="Small"
                ForeColor="#E3E7E3" OnClick="LinkButton1_Click" Width="127px" Font-Names="Verdana">View Resume</asp:LinkButton></td>
        <td align="left">
            <asp:LinkButton ID="lnkProfileUpdate" runat="server" Font-Bold="True" Font-Size="Small"
                ForeColor="#E3E7E3" OnClick="lnkProfileUpdate_Click" Width="176px" Font-Names="Verdana">Update User Profile</asp:LinkButton></td>
        <td align="left">
            <asp:LinkButton ID="lnkTechnicalSkill" runat="server" Font-Bold="True" Font-Size="Small"
                ForeColor="#E3E7E3" OnClick="lnkTechnicalSkill_Click" Width="262px" Font-Names="Verdana">Update Technical Skills Profile</asp:LinkButton></td>
        <td align="left">
            <asp:LinkButton ID="lnkJob" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#E3E7E3"
                OnClick="lnkJob_Click" Width="166px" Font-Names="Verdana">Update Job Profile</asp:LinkButton></td>
    </tr>
</table>
