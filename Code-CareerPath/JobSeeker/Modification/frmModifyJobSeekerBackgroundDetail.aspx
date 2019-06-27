<%@ Page Language="C#" MasterPageFile="~/JobSeeker/JobSeekerMasterPage.master" AutoEventWireup="true" CodeFile="frmModifyJobSeekerBackgroundDetail.aspx.cs" Inherits="JobSeeker_Modification_frmModifyJobSeekerBackgroundDetail" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 674px">
        <tr style="font-size: 12pt">
            <td align="center" colspan="4">
                <strong><span style="color: #ff0000; font-weight: bold;">* Fields Are Mandatory</span></strong></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="13pt" Width="316px" ForeColor="#C000C0"></asp:Label>
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4" style="font-size: 14pt; color: #006600; text-decoration: underline; font-weight: bold;">
                Academic Details</td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4" style="font-size: 12pt; color: #ffffff">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #006600; font-weight: bold;">
                <strong>Highest Degree Atained:</strong>&nbsp;</td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 33px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="2">
                <asp:ListBox ID="lstDegree" runat="server" Height="85px" ValidationGroup="g1" Width="195px">
                </asp:ListBox><span style="color: #ffcc00"> </span>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="lstDegree"
                    ErrorMessage="Plz Select Degree" ValidationGroup="g1" Width="113px"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-weight: bold; font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #006600; font-weight: bold;">
                Specialization:</td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 33px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtSpecialization" runat="server" ValidationGroup="g1" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSpecialization"
                    ErrorMessage="*" ValidationGroup="g1">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff">
                <strong style="font-weight: bold; font-size: 12pt; color: #006600">Year of Passing:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 33px; color: #ffcc00">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="2">
                <asp:DropDownList ID="ddlPassingYear" runat="server" ValidationGroup="g1" Width="123px">
                </asp:DropDownList><span style="color: #ffcc00"> </span>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddlPassingYear"
                    ErrorMessage="*" ValidationGroup="g1" InitialValue="---Select---">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff">
                <strong style="font-weight: bold; font-size: 12pt; color: #006600">Percentage:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 33px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtPercentage" runat="server" ValidationGroup="g1" Width="148px"></asp:TextBox><strong>
                </strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtPercentage"
                    ErrorMessage="*" ValidationGroup="g1" Width="14px">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt; color: #ffcc00">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff">
                <strong style="font-weight: bold; font-size: 12pt; color: #006600">University:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 33px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="2">
                <asp:ListBox ID="lstUniversity" runat="server" AutoPostBack="True" Height="59px"
                    OnSelectedIndexChanged="lstUniversity_SelectedIndexChanged" ValidationGroup="g1"
                    Width="195px">
                    <asp:ListItem Value="---Select---">---Select---</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                    <asp:ListItem>Osmania University</asp:ListItem>
                    <asp:ListItem>JNT University</asp:ListItem>
                    <asp:ListItem>Rajasthan University</asp:ListItem>
                    <asp:ListItem>DAV University</asp:ListItem>
                </asp:ListBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" InitialValue="---Select---" runat="server" ControlToValidate="lstUniversity"
                    ErrorMessage="*" ValidationGroup="g1" Width="1px"></asp:RequiredFieldValidator><br />
                <span style="color: #006600; font-weight: normal; font-size: 12pt;">(If Other University)<br />
                </span>
                <asp:TextBox ID="txtUniversity" runat="server" ReadOnly="true" Width="142px"></asp:TextBox><br />
                <strong><span style="color: #ffffff"></span></strong>
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff">
                <strong style="font-weight: bold; font-size: 12pt; color: #006600">Country:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 33px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="2">
                <asp:DropDownList ID="ddlCountryName" runat="server" ValidationGroup="g1" Width="123px">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlCountryName"
                    ErrorMessage="*" ValidationGroup="g1" Width="1px" InitialValue="---Select---">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4" style="font-size: 12pt; color: #ffffff">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4" style="font-size: 14pt; color: #006600; text-decoration: underline; font-weight: bold;">
                Experience Detail</td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4" style="height: 19px">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff">
                <strong style="font-weight: bold; font-size: 12pt; color: #006600">Technical Experience:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 33px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="2">
                <asp:DropDownList ID="ddlTotExp" runat="server" ValidationGroup="g1" Width="127px">
                </asp:DropDownList>
                <asp:DropDownList ID="ddlDuration" runat="server" Width="61px" ValidationGroup="g1">
                    <asp:ListItem>Year</asp:ListItem>
                    <asp:ListItem>Month</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlTotExp"
                    ErrorMessage="*" ValidationGroup="g1" Width="1px" InitialValue="---Select---">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; height: 22px;">
                <strong style="font-weight: bold; font-size: 12pt; color: #006600">Work Field:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 33px; color: #ffffff; height: 22px;">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="2" style="height: 22px">
                <asp:DropDownList ID="ddlWorkField" runat="server" ValidationGroup="g1" Width="127px">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlWorkField"
                    ErrorMessage="*" ValidationGroup="g1" Width="1px" InitialValue="---Select---">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4" style="font-size: 12pt; color: #ffffff">
                &nbsp;
                <asp:Button ID="btnModify" runat="server" Text="Modify" Width="54px" Font-Bold="True" OnClick="btnModify_Click" ValidationGroup="g1" />
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4" style="font-size: 12pt; color: #ffffff">
                </td>
        </tr>
    </table>
</asp:Content>

