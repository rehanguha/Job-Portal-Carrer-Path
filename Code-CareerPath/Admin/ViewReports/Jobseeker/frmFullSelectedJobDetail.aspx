<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmFullSelectedJobDetail.aspx.cs" Inherits="Admin_ViewReports_Jobseeker_frmFullSelectedJobDetail" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 508px">
        <tr>
            <td align="center" colspan="3" style="font-size: 12pt; color: #ffffff">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td align="right" colspan="3" style="font-size: 12pt; color: #ffffff">
                <asp:Button ID="btnApply" runat="server" Font-Bold="True" Text="Apply Now" ValidationGroup="g1"
                    Width="79px" OnClick="btnApply_Click" />
                <asp:Button ID="btnBack" runat="server" Font-Bold="True" Text="Back" ValidationGroup="g1"
                    Width="79px" OnClick="btnBack_Click" /></td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="font-size: 12pt; color: #ffffff">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="height: 22px">
                <span style="font-size: 14pt; color: #006600"><strong>Job Opening Detail</strong></span></td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="font-size: 12pt; color: #ffffff">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff">
                <strong><span style="color: #006600">Company Name:</span></strong></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtCompName" runat="server" ValidationGroup="g1" Width="189px" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff">
                <strong><span style="color: #006600">JobId:<span></span></span></strong></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtJobId" runat="server" ValidationGroup="g1" Width="111px" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr style="font-weight: bold; font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff">
                <span style="color: #ffcc00"><span style="color: #006600">Job Category:</span><span></span></span></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtCategory" runat="server" ValidationGroup="g1" Width="189px" ReadOnly="True"></asp:TextBox>&nbsp;</td>
        </tr>
        <tr style="font-size: 12pt; color: #ffcc00">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff">
                <span style="color: #006600"><strong>Required Skills:<span style="color: #ffcc00"></span></strong></span></td>
            <td align="left" colspan="2" style="color: #ffcc00">
                <asp:TextBox ID="txtSkills" runat="server" ValidationGroup="g1" Width="189px" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr style="font-weight: bold; font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff;
                height: 22px">
                <span style="color: #006600">Job Title:</span></td>
            <td align="left" colspan="2" style="color: #ffcc00; height: 22px">
                <asp:TextBox ID="txtJobTitle" runat="server" ValidationGroup="g1" Width="189px" ReadOnly="True"></asp:TextBox>&nbsp;</td>
        </tr>
        <tr style="font-size: 12pt; color: #ffcc00">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff">
                <strong><span style="color: #006600">Min. Qualification:</span></strong></td>
            <td align="left" colspan="2">
                <strong> 
                    <asp:TextBox ID="txtMinQualification" runat="server" ValidationGroup="g1" Width="189px" ReadOnly="True"></asp:TextBox></strong></td>
        </tr>
        <tr style="font-size: 12pt; color: #ffcc00">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff;
                height: 19px">
                <strong><span style="color: #006600">Max. Age:</span></strong></td>
            <td align="left" colspan="2" style="height: 19px">
                <asp:TextBox ID="txtAge" runat="server" ValidationGroup="g1" Width="87px" ReadOnly="True"></asp:TextBox><strong>
                </strong>
            </td>
        </tr>
        <tr style="font-size: 12pt; color: #ffcc00">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff; height: 24px;">
                <strong><span style="color: #006600">Experience Years:</span></strong></td>
            <td align="left" colspan="2" style="color: #ffffff; height: 24px;">
                <asp:TextBox ID="txtExperience" runat="server" ValidationGroup="g1" Width="85px" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr style="font-weight: bold; font-size: 12pt; color: #000000">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff">
                <span style="color: #006600">Expected Salary:</span></td>
            <td align="left" colspan="2" style="color: #ff9900">
                <asp:TextBox ID="txtExpectedSalary" runat="server" ValidationGroup="g1" Width="81px" ReadOnly="True"></asp:TextBox>
                <span style="color: #006600">Lakh/Anum</span><span style="color: #ffcc00"> </span>
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff">
                <strong><span style="color: #006600">Job Location:</span></strong></td>
            <td align="left" colspan="2" style="color: #ffcc00">
                <asp:TextBox ID="txtJobLocation" runat="server" ValidationGroup="g1" Width="185px" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr style="font-size: 12pt; color: #ffcc00">
            <td align="left" colspan="1" style="font-size: 12pt;  color: #ffffff">
                <strong><span style="color: #006600">Job Opening Date:</span><span style="color: #ffcc00"></span></strong></td>
            <td align="left" colspan="2" style="color: #ffcc00">
                <span style="color: #ffcc00">
                    <asp:TextBox ID="txtOpeningDate" runat="server" ValidationGroup="g1" Width="185px" ReadOnly="True"></asp:TextBox></span></td>
        </tr>
        <tr style="font-size: 12pt; color: #000000">
            <td align="left" colspan="1">
                <strong><span style="color: #006600">Job Closing Date:</span></strong></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtClosingDate" runat="server" ValidationGroup="g1" Width="185px" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr style="font-weight: bold; font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff">
                <span style="color: #006600">Job Description:</span></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtDescription" runat="server" Height="56px" TextMode="MultiLine"
                    ValidationGroup="g1" Width="253px" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="3">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="3" style="font-size: 12pt; color: #ffffff">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="Red"
                    Width="382px"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

