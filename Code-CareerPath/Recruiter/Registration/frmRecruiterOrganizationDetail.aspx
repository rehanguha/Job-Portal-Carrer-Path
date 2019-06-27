<%@ Page Language="C#" MasterPageFile="~/Recruiter/MasterPage.master" AutoEventWireup="true" CodeFile="frmRecruiterOrganizationDetail.aspx.cs" Inherits="Recruiter_Registration_frmRecruiterOrganizationDetail" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="DarkBlue"
                    Width="316px" style="position: relative"></asp:Label><br />
    <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 508px">
        <tr>
            <td align="center" colspan="4" style="font-size: 12pt; color: #ffffff">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4" style="font-size: 12pt; color: #ffffff">
                <strong style="color: #ff0000; font-weight: bold;">* Fields Are Mandatory</strong></td>
        </tr>
        <tr>
            <td align="center" colspan="4" style="font-size: 12pt; color: #ffffff">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff">
                <strong style="color: darkblue">Organization Name:<span style="color: #ffcc00"></span></strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 7px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtOrgName" runat="server" ValidationGroup="g1" Width="189px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtOrgName"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff">
                <strong style="color: darkblue">Business Sector:<span style="color: #ffcc00"></span></strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 7px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtBusinessSector" runat="server" ValidationGroup="g1" Width="189px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtBusinessSector"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff">
                <strong style="color: darkblue">Certificate1:<span style="color: #ffcc00"></span></strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 7px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtCertificate1" runat="server" ValidationGroup="g1" Width="189px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtCertificate1"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff">
                <strong style="color: darkblue">Certificate2:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 7px; color: #ffffff">
                <span style="color: #ffcc00"></span>
            </td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtCertificate2" runat="server" ValidationGroup="g1" Width="189px"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff">
                <strong style="color: darkblue">Certificate3:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 7px; color: #ffffff">
                <span style="color: #ffcc00"></span>
            </td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtCertificate3" runat="server" ValidationGroup="g1" Width="189px"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff; height: 24px;">
                <strong style="color: darkblue">Website:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 7px; color: #ffffff; height: 24px;">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="2" style="height: 24px">
                <asp:TextBox ID="txtWebsite" runat="server" ValidationGroup="g1" Width="189px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtWebsite"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff">
                <strong style="color: darkblue">EmailId1:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 7px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtEmailId1" runat="server" ValidationGroup="g1" Width="189px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmailId1"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff">
                <strong style="color: darkblue">EmailId2:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 7px; color: #ffffff">
                <span style="color: #ffcc00"></span>
            </td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtEmailId2" runat="server" ValidationGroup="g1" Width="189px"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff">
                <strong style="color: darkblue">Address:<span style="color: #ffcc00"></span></strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 7px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtAddress" runat="server" Height="78px" TextMode="MultiLine" ValidationGroup="g1"
                    Width="249px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtAddress"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff;
                height: 38px">
                <strong style="color: darkblue">Organization Environment:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 7px; color: #ffffff;
                height: 38px">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtOrgEnv" runat="server" Height="68px" TextMode="MultiLine" ValidationGroup="g1"
                    Width="249px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtOrgEnv"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff">
                <strong style="color: darkblue">Terms &amp; Condition:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 7px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtTerms" runat="server" Height="56px" TextMode="MultiLine" ValidationGroup="g1"
                    Width="253px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtTerms"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff;
                height: 38px">
                <strong style="color: darkblue">Other:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 7px; color: #ffffff;
                height: 38px">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="2" style="height: 38px">
                <asp:TextBox ID="txtOthers" runat="server" Height="54px" TextMode="MultiLine" ValidationGroup="g1"
                    Width="233px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtOthers"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff">
                <strong style="color: darkblue">Size of Organization:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 7px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtOrgSize" runat="server" Width="207px" ValidationGroup="g1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtOrgSize"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4">
                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit"
                    ValidationGroup="g1" Width="79px" />
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4" style="font-size: 12pt; color: #ffffff; height: 18px;">
                </td>
        </tr>
    </table>
</asp:Content>

