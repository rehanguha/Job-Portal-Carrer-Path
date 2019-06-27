<%@ Page Language="C#" MasterPageFile="~/Recruiter/MasterPage.master" AutoEventWireup="true" CodeFile="frmRecruiterAccountDetail.aspx.cs" Inherits="Recruiter_Registration_frmRecruiterAccountDetail" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager id="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 602px">
        <tr>
            <td align="center" colspan="3" style="font-size: 12pt; color: #ffffff">
                <strong style="color: #ff0000; font-weight: bold;">* Fields Are Mandatory</strong></td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; color: #ffffff; text-align: center">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; color: #ffffff; text-align: center">
                <span style="font-size: 14pt; color: darkblue; text-decoration: underline">Login Information</span></td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; color: #ffffff; text-align: center">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-size: 12pt; width: 151px; color: #ffffff; height: 24px">
                <strong style="color: darkblue">User ID:<span style="color: #ffcc00"></span></strong></td>
            <td align="left" style="font-size: 12pt; width: 36px; color: #ffffff; height: 24px">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left">
                <asp:TextBox ID="txtName" runat="server" Width="191px" ValidationGroup="g1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator>&nbsp;
                <asp:UpdatePanel id="UpdatePanel1" runat="server">
                    <contenttemplate>
<asp:LinkButton id="lnkCheckAvailability" onclick="lnkCheckAvailability_Click" runat="server" Font-Bold="True" ForeColor="DarkBlue" __designer:wfdid="w4">Check Availability</asp:LinkButton> <asp:Label id="Label1" runat="server" Width="262px" Font-Bold="True" ForeColor="DarkBlue" Font-Size="13pt" __designer:wfdid="w5"></asp:Label> <cc1:popupcontrolextender id="PopupControlExtender1" runat="server" __designer:wfdid="w6" PopupControlID="Label1" OffsetY="20" OffsetX="30" targetcontrolid="lnkCheckAvailability"></cc1:popupcontrolextender> 
</contenttemplate>
                </asp:UpdatePanel>&nbsp;<span style="color: #ffcc00">&nbsp;</span><span
                            style="color: #ffcc00"> </span>
            </td>
        </tr>
        <tr style="font-size: 12pt; color: #ffcc00">
            <td align="left" style="color: darkblue">
                <strong>Password:<span style="color: #ffcc00"></span></strong></td>
            <td align="left" style="font-size: 12pt; width: 36px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" ValidationGroup="g1"
                    Width="191px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-weight: bold; font-size: 12pt">
            <td align="left" style="font-size: 12pt; width: 151px; color: #ffffff">
                <span style="color: darkblue">Verify Pass</span><span style="color: darkblue">word:<span></span></span></td>
            <td align="left" style="font-size: 12pt; width: 36px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" style="color: #ffffff">
                <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" Width="191px" ValidationGroup="g1"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword"
                    ControlToValidate="txtConfirm" ErrorMessage="Password Mismatch" Font-Bold="True" Width="137px" ValidationGroup="g1"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtConfirm"
                    ErrorMessage="*" Style="position: relative" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-size: 12pt; width: 151px; color: #ffffff">
                <strong style="color: darkblue">Hint Question:<span style="color: #ffcc00"></span></strong></td>
            <td align="left" style="font-size: 12pt; width: 36px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left">
                <asp:DropDownList ID="ddlQuestion" runat="server" Width="161px">
                    <asp:ListItem>What Is Your Pet name</asp:ListItem>
                    <asp:ListItem>What Is Your Favourite Passtime</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-size: 12pt; width: 151px; color: #ffffff">
                <strong style="color: darkblue">Answer:<span style="color: #ffcc00"></span></strong></td>
            <td align="left" style="font-size: 12pt; width: 36px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left">
                <asp:TextBox ID="txtAnswer" runat="server" ValidationGroup="g1" Width="189px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAnswer"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="3" style="font-size: 12pt; color: #ffffff">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4">
                <asp:Button ID="btnNext" runat="server" OnClick="btnNext_Click" Text="Next" ValidationGroup="g1"
                    Width="79px" />
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="3" style="font-size: 12pt; color: #ffffff; height: 11px;">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="DarkBlue"
                    Width="316px"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

