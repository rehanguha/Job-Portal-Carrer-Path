<%@ Page Language="C#" MasterPageFile="~/JobSeeker/JobSeekerMasterPage.master" AutoEventWireup="true" CodeFile="frmModifyJobSeekerProfile.aspx.cs" Inherits="JobSeeker_Modification_frmModifyJobSeekerProfile" Title="Untitled Page" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager id="ScriptManager1" runat="server">
    </asp:ScriptManager>
    &nbsp;
    <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 602px">
        <tr>
            <td align="center" colspan="4" style="font-size: 12pt; color: #ffffff; height: 19px">
                <strong style="font-weight: bold; color: #ff0000">* Fields Are Mandatory</strong></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="4" style="font-size: 12pt; color: #ffffff">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="4" style="font-size: 14pt; text-align: center">
                <span style="font-size: 14pt; color: #006600; text-decoration: underline"><strong>Personal Information</strong></span></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="4" style="font-size: 14pt">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 151px; color: #ffffff">
                <strong style="color: #006600">First Name:<span style="color: #ffcc00"></span></strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 36px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtFName" runat="server" ValidationGroup="g1" Width="189px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtFName"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 151px; color: #ffffff">
                <strong style="color: #006600">Last Name:<span style="color: #ffcc00"></span></strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 36px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtLName" runat="server" ValidationGroup="g1" Width="189px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtLName"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 151px; color: #ffffff">
                <strong style="color: #006600">Date Of Birth:<span style="color: #ffcc00"></span></strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 36px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="2">
                <cc1:GMDatePicker ID="GMDatePicker1" runat="server">
                </cc1:GMDatePicker>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="GMDatePicker1"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 151px; color: #ffffff">
                <strong style="color: #006600">Address:<span style="color: #ffcc00"></span></strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 36px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtAddress" runat="server" Height="71px" TextMode="MultiLine" ValidationGroup="g1"
                    Width="229px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtAddress"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 151px; color: #ffffff">
                <strong style="color: #006600">Country:</strong><span style="color: #ffcc00"><br />
                    <span style="color: #ffffff"><strong style="color: #006600">State:</strong></span><span style="color: #ffcc00"><br />
                        <span style="color: #ffffff"><strong style="color: #006600">City:</strong></span></span></span></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 36px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="2">
                <asp:UpdatePanel id="UpdatePanel1" runat="server">
                    <contenttemplate>
<asp:DropDownList id="ddlCountry" runat="server" Width="161px" ValidationGroup="g1" AutoPostBack="True" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged"></asp:DropDownList><BR /><asp:DropDownList id="ddlState" runat="server" Width="161px" ValidationGroup="g1" AutoPostBack="True" OnSelectedIndexChanged="ddlState_SelectedIndexChanged"></asp:DropDownList><BR /><asp:DropDownList id="ddlCity" runat="server" Width="161px" ValidationGroup="g1"></asp:DropDownList> <asp:RequiredFieldValidator id="RequiredFieldValidator9" runat="server" Width="1px" ValidationGroup="g1" ErrorMessage="*" ControlToValidate="ddlCountry" InitialValue="---Select---">*</asp:RequiredFieldValidator> <asp:RequiredFieldValidator style="POSITION: relative" id="RequiredFieldValidator1" runat="server" Width="1px" ValidationGroup="g1" ErrorMessage="*" ControlToValidate="ddlState" InitialValue="---Select---" __designer:wfdid="w2">*</asp:RequiredFieldValidator> <asp:RequiredFieldValidator style="POSITION: relative" id="RequiredFieldValidator2" runat="server" Width="1px" ValidationGroup="g1" ErrorMessage="*" ControlToValidate="ddlCity" InitialValue="---Select---" __designer:wfdid="w3">*</asp:RequiredFieldValidator> 
</contenttemplate>
                </asp:UpdatePanel>&nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 151px; color: #ffffff">
                <strong style="color: #006600">Postal Code:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 36px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtPinCode" runat="server" ValidationGroup="g1" Width="207px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtPinCode"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 151px; color: #ffffff">
                <strong style="color: #006600">Email:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 36px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtEmail" runat="server" ValidationGroup="g1" Width="207px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 151px; color: #ffffff">
                <strong style="color: #006600">Phone1:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 36px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtPhone1" runat="server" ValidationGroup="g1" Width="207px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtPhone1"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 151px; color: #ffffff">
                <strong style="color: #006600">Phone2:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 36px; color: #ffffff">
            </td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtPhone2" runat="server" Width="207px"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 151px; color: #ffffff">
                <strong style="color: #006600">Fax No.:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 36px; color: #ffffff">
            </td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtFaxNo" runat="server" Width="207px"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4">
                <asp:Button ID="btnModify" runat="server" Text="Modify" ValidationGroup="g1" Width="79px" OnClick="btnModify_Click" />
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="5" style="font-size: 12pt; color: #ffffff">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#C000C0"
                    Width="484px"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

