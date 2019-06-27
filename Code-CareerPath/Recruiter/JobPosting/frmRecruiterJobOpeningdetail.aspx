<%@ Page Language="C#" MasterPageFile="~/Recruiter/RecruiterMasterPage.master" AutoEventWireup="true" CodeFile="frmRecruiterJobOpeningdetail.aspx.cs" Inherits="Recruiter_JobPosting_frmRecruiterJobOpeningdetail" Title="Untitled Page" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 508px">
        <tr>
            <td align="center" colspan="4" style="font-size: 12pt; color: #ffffff">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4" style="font-size: 12pt; color: #ffffff">
                <strong><span style="color: red; font-weight: bold;">* Fields Are Mandatory</span></strong></td>
        </tr>
        <tr>
            <td align="center" colspan="4" style="font-size: 12pt; color: #ffffff">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                <span style="font-size: 14pt; color: #ffcc00"><strong style="color: darkblue">Job Opening Detail</strong></span></td>
        </tr>
        <tr>
            <td align="center" colspan="4" style="font-size: 12pt; color: #ffffff">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff">
                <strong><span style="color: darkblue">Job Name:</span><span style="color: #ffcc00"></span></strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 11px; color: #ffffff">
                <span style="color: red; font-weight: bold;">*</span></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtJobId" runat="server" ValidationGroup="g1" Width="89px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtJobId"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-weight: bold; font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff">
                <span style="color: #ffcc00"><span style="color: darkblue">Job Category:</span><span></span></span></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 11px; color: #ffcc00">
                <span style="color: red; font-weight: bold;">*</span></td>
            <td align="left" colspan="2" style="text-align: left">
                <asp:DropDownList ID="ddlFunctionalArea" runat="server" Width="166px" ValidationGroup="g1" style="position: relative">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlFunctionalArea"
                    ErrorMessage="*" ValidationGroup="g1" InitialValue="---Select---" style="position: relative"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt; color: #ffcc00">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff">
                <strong style="color: darkblue">Required Skills:<span style="color: #ffcc00"></span></strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 11px; color: #ffcc00">
                <span style="color: red; font-weight: bold;">*</span></td>
            <td align="left" colspan="2" style="color: #ffcc00">
                <asp:TextBox ID="txtSkills" runat="server" ValidationGroup="g1" Width="189px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtSkills"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff; height: 22px;">
                <strong style="color: darkblue">Role:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 11px; color: #ffcc00; height: 22px;">
                <span style="color: red; font-weight: bold;">*</span></td>
            <td align="left" colspan="2" style="color: #ffcc00; height: 22px;">
                <asp:DropDownList ID="ddlJobType" runat="server" Width="166px" ValidationGroup="g1" style="position: relative">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlJobType"
                    ErrorMessage="*" ValidationGroup="g1" InitialValue="---Select---"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt; color: #ffcc00">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff">
                <strong style="color: darkblue">Min. Qualification:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 11px; color: #ffffff">
                <span style="color: red; font-weight: bold;">*</span></td>
            <td align="left" colspan="2">
                <asp:DropDownList ID="ddlQualification" runat="server" Width="166px" ValidationGroup="g1">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlQualification"
                    ErrorMessage="*" ValidationGroup="g1" InitialValue="---Select---"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt; color: #ffcc00">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff;
                height: 19px">
                <strong style="color: darkblue">Max. Age:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 11px; color: #ffffff;
                height: 19px">
                <span style="color: red; font-weight: bold;">*</span></td>
            <td align="left" colspan="2" style="height: 19px">
                <asp:TextBox ID="txtAge" runat="server" ValidationGroup="g1" Width="65px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtAge"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff">
                <strong style="color: darkblue">Experience Years:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 11px; color: #ffffff">
                <span style="color: red; font-weight: bold;">*</span></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtExperience" runat="server" ValidationGroup="g1" Width="67px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtExperience"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-weight: bold; font-size: 12pt">
            <td align="left" colspan="1" style="color: darkblue">
                Expected Salary:</td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 11px; color: #ffffff">
                <span style="color: red; font-weight: bold;">*</span></td>
            <td align="left" colspan="2" style="color: #ff9900">
                <asp:TextBox ID="txtExpectedSalary" runat="server" ValidationGroup="g1" Width="81px"></asp:TextBox>
                <span style="color: darkblue">Lakh/Anum(Give in Numbers Only)</span><span
                    style="color: #ffcc00"> </span>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtExpectedSalary"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff">
                <strong style="color: darkblue">Job Location:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 11px; color: #ffcc00">
                <span></span>
            </td>
            <td align="left" colspan="2" style="color: #ffcc00">
                &nbsp;<asp:DropDownList ID="ddlLocation" runat="server" Style="position: relative"
                    ValidationGroup="g1">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ddlLocation"
                    ErrorMessage="*" ValidationGroup="g1" InitialValue="---Select---"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt; color: #ffcc00">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff">
                <strong style="color: darkblue">Job Opening Date:<span style="color: #ffcc00"></span></strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 11px; color: #ffcc00">
                <span style="color: red; font-weight: bold;">*</span></td>
            <td align="left" colspan="2" style="color: #ffcc00">
                <span style="color: #ffcc00"> 
                    <cc1:GMDatePicker ID="GMDatePicker1" runat="server">
                    </cc1:GMDatePicker>
                </span>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="GMDatePicker1"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt; color: #000000">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff;
                height: 38px">
                <strong style="color: darkblue">Job Closing Date:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 11px; color: #ffffff;
                height: 38px">
                <span style="color: red; font-weight: bold;">*</span></td>
            <td align="left" colspan="2">
                <cc1:GMDatePicker ID="GMDatePicker2" runat="server">
                </cc1:GMDatePicker>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="GMDatePicker2"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-weight: bold; font-size: 12pt">
            <td align="left" colspan="1" style="color: darkblue">
                Job Description:</td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 11px; color: #ffcc00">
                <span style="color: #ffcc00"></span></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtDescription" runat="server" Height="56px" TextMode="MultiLine" ValidationGroup="g1"
                    Width="253px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtDescription"
                    ErrorMessage="RequiredFieldValidator" Style="position: relative" ValidationGroup="g1">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit"
                    ValidationGroup="g1" Width="79px" Font-Bold="True" OnClick="btnSubmit_Click" />
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4" style="font-size: 12pt; color: #ffffff">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="DarkBlue"
                    Width="316px"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

