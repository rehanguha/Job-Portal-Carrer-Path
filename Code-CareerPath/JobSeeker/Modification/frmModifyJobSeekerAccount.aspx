<%@ Page Language="C#" MasterPageFile="~/JobSeeker/JobSeekerMasterPage.master" AutoEventWireup="true" CodeFile="frmModifyJobSeekerAccount.aspx.cs" Inherits="JobSeeker_Modification_frmModifyJobSeekerAccount" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 562px">
        <tr>
            <td align="center" colspan="3" style="font-size: 12pt; color: #ffffff; text-align: left;">
                <strong><span style="color: #ff0000; font-weight: bold;">* Fields Are Mandatory</span></strong></td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; color: #ffffff; text-align: center">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; color: #ffffff; text-align: center">
                <span style="font-size: 14pt; color: #006600; text-decoration: underline; font-weight: bold;">Login Information</span></td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; color: #ffffff; text-align: center">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-size: 12pt; width: 151px; color: #ffffff; height: 24px">
                <strong style="color: #006600">User ID:<span style="color: #ffcc00"></span></strong></td>
            <td align="left" style="font-size: 12pt; color: #ffffff; height: 24px">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left">
                <asp:TextBox ID="txtName" runat="server" Width="191px" ReadOnly="True"></asp:TextBox>
                &nbsp;<span style="color: #ffcc00"> </span>
            </td>
        </tr>
        <tr style="font-weight: bold; font-size: 12pt">
            <td align="left" style="font-size: 12pt; width: 151px; color: #ffffff; height: 24px;">
                <span style="color: #006600">Old Password:<span style="color: #color: #006600"></span></td>
            <td align="left" style="font-size: 12pt; color: #ffffff; height: 24px;">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" style="height: 24px">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" ValidationGroup="g1"
                    Width="191px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword"
                    ErrorMessage="*" ValidationGroup="g1" Width="16px"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-weight: bold; font-size: 12pt">
            <td align="left" style="font-size: 12pt; width: 151px; color: #ffffff">
                <span style="color: #006600">
                New Password:</span></td>
            <td align="left" style="font-size: 12pt; color: #ffffff">
            </td>
            <td align="left">
                <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password" ValidationGroup="g1"
                    Width="191px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNewPassword"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-size: 12pt; width: 151px; color: #ffffff">
                <strong><span style="color: #006600">
                <span>Verify Pas</span>sword:<span></span></span></strong></td>
            <td align="left" style="font-size: 12pt; color: #ffffff">
                <span style="color: #ffffff"><strong style="font-weight: bold; color: #ff0000">*</strong></span></td>
            <td align="left" style="font-weight: bold; color: #ffffff">
                <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" Width="191px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtNewPassword"
                    ControlToValidate="txtConfirm" ErrorMessage="Password Mismatch" Font-Bold="True" Width="139px"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtConfirm"
                    ErrorMessage="*" Style="position: relative" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-size: 12pt; width: 151px; color: #ffffff; height: 22px;">
                <strong><span style="color: #006600">Hint Question:<span></span></span></strong></td>
            <td align="left" style="font-size: 12pt; color: #ffffff; height: 22px;">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" style="height: 22px">
                <asp:DropDownList ID="ddlQuestion" runat="server" Width="161px">
                    <asp:ListItem>What Is Your Pet name</asp:ListItem>
                    <asp:ListItem>What Is Your Favourite Passtime</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-size: 12pt; width: 151px; color: #ffffff">
                <strong><span style="color: #006600">Answer:<span></span></span></strong></td>
            <td align="left" style="font-size: 12pt; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left">
                <asp:TextBox ID="txtAnswer" runat="server" ValidationGroup="g1" Width="189px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAnswer"
                    ErrorMessage="*" ValidationGroup="g1" Width="14px">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4" style="height: 19px">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4">
                <asp:Button ID="btnUpdate" runat="server" Text="Update" ValidationGroup="g1" Width="79px" OnClick="btnUpdate_Click" />
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="3" style="font-size: 12pt; color: #ffffff">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#C000C0"
                    Width="316px"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

