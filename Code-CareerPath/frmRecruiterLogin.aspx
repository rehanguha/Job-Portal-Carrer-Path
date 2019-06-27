<%@ Page Language="C#" MasterPageFile="~/Recruiter/MasterPage.master" AutoEventWireup="true" CodeFile="frmRecruiterLogin.aspx.cs" Inherits="frmRecruiterLogin" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<br />




   <table border="1" bordercolor="#ffffff" cellpadding="0" cellspacing="0" align="right">
        <tr>
            <td style="width: 100px">
    <table align="right" border="0" cellpadding="0" cellspacing="0" style="width: 1px">
        <tr>
            <td align="center" colspan="1" rowspan="9" style="font-weight: bold; color: #ffffff">
                </td>
            <td align="right" colspan="1" rowspan="9" valign="middle">
                </td>
            <td align="center" colspan="1" rowspan="9" style="font-weight: bold; color: #ffffff">
                <img src="Images/RecruiterLogin1.bmp" style="height: 163px" /></td>
            <td align="center" colspan="3" style="font-weight: bold; color: #ffffff; height: 41px;">
                <span style="font-size: 14pt; color: darkblue; font-weight: bold;">Recruiter Login<br />
                    <span style="font-size: 12pt; color: #ff0000; font-weight: bold;">
                * Fields Are Mandatory</span></span></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-size: 12pt; color: #ffffff">
                <strong style="font-weight: bold; color: darkblue">
                User Name:</strong></td>
            <td align="left" style="font-size: 12pt; color: #ffffff">
                <span style="color: #ff0000">*</span></td>
            <td align="left">
                <asp:TextBox ID="txtUserName" runat="server" Width="163px" ValidationGroup="g1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-size: 12pt; color: #ffffff">
                <strong style="font-weight: bold; color: darkblue">
                Password:</strong></td>
            <td align="left" style="font-size: 12pt; color: #ffffff">
                <span style="color: #ff0000">*</span></td>
            <td align="left">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="163px" ValidationGroup="g1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="3">
                </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="3">
                &nbsp;<asp:Button ID="btnLogin" runat="server" Text="Sign Up" Width="56px" OnClick="btnLogin_Click" ValidationGroup="g1" />
                </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="3">
                <asp:LinkButton ID="lnkForgotPassword" runat="server" Font-Bold="True" ForeColor="#C000C0"
                    OnClick="lnkForgotPassword_Click">Forgot Password ? Click Here ! </asp:LinkButton></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="3">
                <asp:LinkButton ID="lnkRegsiter" runat="server" Font-Bold="True" ForeColor="#C000C0"
                    OnClick="lnkRegsiter_Click">Register Me !</asp:LinkButton></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="3">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="3" style="font-size: 12pt; color: #ffffff">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="13pt" Width="316px" ForeColor="#C000C0"></asp:Label></td>
        </tr>
    </table>  
            </td>
        </tr>
    </table>
     
</asp:Content>

