<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmModifyRecruiterAccountDetail.aspx.cs" Inherits="Admin_ViewReports_Recruiter_frmModifyRecruiterAccountDetail" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 602px">
        <tr>
            <td align="center" colspan="3" style="font-size: 12pt; color: #ffffff">
                <strong style="color: red; font-weight: bold;">* Fields Are Mandatory</strong></td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; color: #ffffff; text-align: center">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; color: #ffffff; text-align: center">
                <span style="font-size: 14pt; color: #800080; text-decoration: underline">Login Information</span></td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; color: #ffffff; text-align: center">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-size: 12pt; width: 151px; color: #ffffff; height: 24px">
                <strong style="color: #800080">User ID:<span style="color: #ffcc00"></span></strong></td>
            <td align="left" style="font-size: 12pt; width: 36px; color: #ffffff; height: 24px">
                <span style="color: red; font-weight: bold;">*</span></td>
            <td align="left">
                <asp:TextBox ID="txtName" runat="server" ReadOnly="True" Width="191px"></asp:TextBox>
                &nbsp;<span style="color: #ffcc00"> </span>
            </td>
        </tr>
        <tr style="font-weight: bold; font-size: 12pt">
            <td align="left" style="color: #800080">
                <span style="color: #800080">Old Passw</span>ord:<span style="color: #ffcc00"></span></td>
            <td align="left" style="font-size: 12pt; width: 36px; color: #ffffff">
                <span style="color: red; font-weight: bold;">*</span></td>
            <td align="left">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" ValidationGroup="g1"
                    Width="191px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword"
                    ErrorMessage="*" ValidationGroup="g1" Width="16px"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-weight: bold; font-size: 12pt">
            <td align="left" style="color: #800080; height: 24px;">
                New Password:</td>
            <td align="left" style="font-size: 12pt; width: 36px; color: #ffffff; height: 24px;">
            </td>
            <td align="left" style="height: 24px">
                <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password" ValidationGroup="g1"
                    Width="191px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPassword"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-size: 12pt; width: 151px; color: #ffffff">
                <strong style="color: #800080"><span>Verify Pas</span>sword:<span style="color: #ffcc00"></span></strong></td>
            <td align="left" style="color: darkblue">
                <span style="color: #ffcc00"><strong style="color: red; font-weight: bold;">*</strong></span></td>
            <td align="left" style="font-weight: bold; color: #ffffff">
                <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" Width="191px" ValidationGroup="g1"></asp:TextBox><span
                    style="color: #ffcc00"> </span>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword"
                    ControlToValidate="txtConfirm" ErrorMessage="Password Mismatch" Font-Bold="True" Width="169px" ValidationGroup="g1"></asp:CompareValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-size: 12pt; width: 151px; color: #ffffff">
                <strong style="color: #800080">
                <span>Hint</span> Question:<span style="color: #ffcc00"></span></strong></td>
            <td align="left" style="color: darkblue">
                <span style="color: red; font-weight: bold;">*</span></td>
            <td align="left">
                <asp:DropDownList ID="ddlQuestion" runat="server" Width="161px">
                    <asp:ListItem>What Is Your Pet name</asp:ListItem>
                    <asp:ListItem>What Is Your Favourite Passtime</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-size: 12pt; width: 151px; color: #ffffff; height: 24px;">
                <strong style="color: #800080">Answer:<span style="color: #ffcc00"></span></strong></td>
            <td align="left" style="color: darkblue; height: 24px;">
                <span style="color: red; font-weight: bold;">*</span></td>
            <td align="left" style="height: 24px">
                <asp:TextBox ID="txtAnswer" runat="server" ValidationGroup="g1" Width="189px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAnswer"
                    ErrorMessage="*" ValidationGroup="g1" Width="14px"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4" style="height: 19px">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4">
                <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update"
                    ValidationGroup="g1" Width="79px" />
                <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back" /></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="3" style="font-size: 12pt; color: #ffffff; height: 19px;">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="DarkBlue"
                    Width="316px"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

