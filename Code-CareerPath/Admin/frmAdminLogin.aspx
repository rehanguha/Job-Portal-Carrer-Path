<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="frmAdminLogin.aspx.cs" Inherits="Admin_frmAdminLogin" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <br />
        <br />
        <br />
        <table border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td align="center" style="width: 100px">
                    &nbsp; &nbsp; &nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Panel ID="Panel1" runat="server" BorderColor="Purple" BorderStyle="Solid" Height="50px"
                        Width="125px">
    <table align="center" border="1" cellpadding="0" cellspacing="0" style="width: 303px">
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; color: #ffffff">
                <span style="font-size: 14pt; color: #800080">Admin Login<br />
                    <span style="font-size: 12pt; color: #ff0000; font-weight: bold;">* Fields Are Mandatory</span></span></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-size: 12pt; width: 94px; color: #ffffff; text-align: left">
                <strong style="color: #800080">User Name:</strong></td>
            <td align="left" style="font-size: 12pt; width: 12px; color: #ffffff; text-align: right">
                <span style="color: #ff0000; font-weight: bold; font-size: 12pt;">*</span></td>
            <td align="left">
                <asp:TextBox ID="txtUserName" runat="server" ValidationGroup="g1" Width="163px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName"
                    ErrorMessage="*" ForeColor="Purple" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-weight: bold; font-size: 12pt">
            <td align="left" style="font-size: 12pt; width: 94px; color: #ffffff; text-align: left">
                <span style="color: #800080">Password:</span></td>
            <td align="left" style="font-size: 12pt; width: 12px; color: #ffcc00; text-align: right">
                <span style="color: #ff0000; font-weight: bold; font-size: 12pt;">*</span></td>
            <td align="left">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" ValidationGroup="g1"
                    Width="163px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword"
                    ErrorMessage="*" ForeColor="Purple" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="3">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Font-Bold="True" Font-Names="Verdana" Font-Size="Small">Home</asp:LinkButton>
                &nbsp;<asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Log In"
                    ValidationGroup="g1" Width="50px" />
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="3" style="font-size: 12pt; color: #ffffff" valign="middle">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="Purple"
                    Width="274px"></asp:Label></td>
        </tr>
    </table>
                    </asp:Panel>
                </td>
            </tr>
        </table>
    </div>
    <br />
    <br />
</asp:Content>

