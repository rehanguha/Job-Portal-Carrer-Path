<%@ Control Language="C#" AutoEventWireup="true" CodeFile="HeaderMenuUserControl.ascx.cs" Inherits="UserControl_HeaderMenuUserControl" %>
<table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
    <tr>
        <td valign="top">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/Home.bmp" OnClick="ImageButton1_Click" Width="103px" /></td>
        <td valign="top">
            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/AboutUs.bmp"
                OnClick="ImageButton2_Click" Width="124px" /></td>
        <td valign="top">
            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Images/ConatctUs.bmp" 
                OnClick="ImageButton3_Click" Height="31px" Width="105px" /></td>
        <td valign="middle">
            <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/Images/Feedback.bmp"
                OnClick="ImageButton4_Click" Height="28px" /></td>
        <td valign="middle">
            <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/Images/AdminLogin.bmp"
                OnClick="ImageButton5_Click" Width="99px" /></td>
        <td valign="middle">
            <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/Images/ExistingLogin.bmp"
                OnClick="ImageButton6_Click" Width="126px" /></td>
    </tr>
</table>
