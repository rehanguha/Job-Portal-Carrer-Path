<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LoginLogoutWebUserControl.ascx.cs" Inherits="JobSeeker_User_Control_LoginLogoutWebUserControl" %>
<table>
    <tr>
        <td style="width: 59px; height: 21px">
            <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="#006600"
                Width="113px"></asp:Label></td>
        <td style="width: 59px; height: 21px">
            &nbsp;<asp:LinkButton ID="lnkLogout" runat="server" Font-Bold="True" ForeColor="#006600"
                Width="81px" OnClick="lnkLogout_Click">LogOut</asp:LinkButton></td>
    </tr>
</table>
