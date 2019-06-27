<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LoginLogoutWebUserControl.ascx.cs" Inherits="Recruiter_User_Control_LoginLogoutWebUserControl" %>
<table>
    <tr>
        <td style="width: 59px; height: 21px">
            <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="White"
                Width="113px" BackColor="#A1BAE3"></asp:Label></td>
        <td style="width: 59px; height: 21px">
            &nbsp;<asp:LinkButton ID="lnkLogout" runat="server" Font-Bold="True" ForeColor="White"
                Width="81px" OnClick="lnkLogout_Click" BackColor="#A1BAE3">LogOut</asp:LinkButton></td>
    </tr>
</table>
