<%@ Page Language="C#" MasterPageFile="~/JobSeeker/MasterPage.master" AutoEventWireup="true" CodeFile="frmJobSeekerLogin.aspx.cs" Inherits="frmJobSeekerLogin" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<br />
<br />
    <table border="1" cellpadding="0" cellspacing="0" align="center">
        <tr>
            <td style="width: 100px">
    <table align="right" border="0" cellpadding="0" cellspacing="0" style="width: 455px">
        <tr>
            <td align="center" colspan="1" rowspan="8" style="font-weight: bold; color: #ffffff">
            </td>
            <td align="right" colspan="1" rowspan="8" valign="middle">
            </td>
            <td align="center" colspan="1" rowspan="8" style="font-weight: bold; color: #ffffff">
            </td>
            <td align="center" colspan="3" style="font-weight: bold; color: #ffffff">
                <span style="font-size: 14pt; color: #006633">JobSeeker Login<br />
                    <span style="font-size: 12pt; color: #ff0000; font-weight: bold;">* Fields Are Mandatory</span></span></td>
            <td align="center" colspan="1" style="font-weight: bold; color: #ffffff; width: 9px;">
            </td>
            <td align="center" colspan="1" rowspan="8" style="font-weight: bold; color: #ffffff">
                <img src="Images/JobSeekerLogin.bmp" style="height: 172px" /></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-size: 12pt; color: #ffffff; width: 486px; text-align: left;">
                <strong style="color: #006633">User Name:</strong></td>
            <td align="left" style="font-size: 12pt; width: 159px; color: #ffffff; text-align: right">
                <span style="color: #ff0000; font-weight: bold; font-size: 12pt;">*</span></td>
            <td align="right">
                <asp:TextBox ID="txtUserName" runat="server" Width="163px" ValidationGroup="g1"></asp:TextBox></td>
            <td align="right" style="width: 9px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-size: 12pt; color: #ffffff; width: 486px; text-align: left;">
                <strong style="color: #006633">Password:</strong></td>
            <td align="left" style="font-size: 12pt; width: 159px; color: #ffffff; text-align: right">
                <span style="color: #ff0000; font-weight: bold; font-size: 12pt;">*</span></td>
            <td align="right">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="163px" ValidationGroup="g1"></asp:TextBox></td>
            <td align="right" style="width: 9px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4">
                &nbsp;<asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Sign Up"
                    Width="56px" ValidationGroup="g1" />
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4">
                <asp:LinkButton ID="lnkForgotPassword" runat="server" Font-Bold="True" ForeColor="#C000C0"
                    OnClick="lnkForgotPassword_Click">Forgot Password ? Click Here ! </asp:LinkButton></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4" style="font-size: 12pt; color: #ffffff" valign="middle">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" ForeColor="#C000C0"
                    NavigateUrl="~/JobSeeker/Registration/frmJobSeekerRegistration.aspx" Width="107px">Register Me !</asp:HyperLink></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4" style="font-size: 12pt; color: #ffffff" valign="middle">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4" style="font-size: 12pt; color: #ffffff" valign="middle">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="Red"
                    Width="274px"></asp:Label></td>
        </tr>
    </table>
            </td>
        </tr>
    </table>
</asp:Content>

