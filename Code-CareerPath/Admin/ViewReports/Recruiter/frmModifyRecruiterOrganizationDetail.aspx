<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmModifyRecruiterOrganizationDetail.aspx.cs" Inherits="Admin_ViewReports_Recruiter_frmModifyRecruiterOrganizationDetail" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 508px">
        <tr>
            <td align="center" colspan="4" style="font-size: 12pt; color: #ffffff">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4" style="font-size: 12pt; color: #ffffff">
                <strong><span style="font-size: 16pt; color: #990066">Recruiter Organization Details</span></strong></td>
        </tr>
        <tr>
            <td align="center" colspan="4" style="font-size: 12pt; color: #ffffff">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff">
                <strong style="color: #800080">Organization Name:<span style="color: #ffcc00"></span></strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 36px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;"></span></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtOrgName" runat="server" ValidationGroup="g1" Width="189px" ReadOnly="True"></asp:TextBox>
                </td>
        </tr>
        <tr style="font-weight: bold; font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff">
                <span style="color: #ffcc00"><span style="color: #800080">Business Sector:</span><span></span></span></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 36px; color: #ffcc00">
                <span style="color: #ff0000; font-weight: bold;"></span></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtBusinessSector" runat="server" ValidationGroup="g1" Width="189px" ReadOnly="True"></asp:TextBox>
                </td>
        </tr>
        <tr style="font-size: 12pt; color: #ffcc00">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff">
                <strong style="color: #800080">Certificate1:<span style="color: #ffcc00"></span></strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 36px; color: #ffcc00">
                <span style="color: #ff0000; font-weight: bold;"></span></td>
            <td align="left" colspan="2" style="color: #ffcc00">
                <asp:TextBox ID="txtCertificate1" runat="server" ValidationGroup="g1" Width="189px" ReadOnly="True"></asp:TextBox>
                </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff">
                <strong style="color: #800080">Certificate2:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 36px; color: #ffcc00">
                <span></span>
            </td>
            <td align="left" colspan="2" style="color: #ffcc00">
                <asp:TextBox ID="txtCertificate2" runat="server" ValidationGroup="g1" Width="189px" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt; color: #ffcc00">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff">
                <strong style="color: #800080">Certificate3:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 36px; color: #ffffff">
                <span style="color: #ffcc00"></span>
            </td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtCertificate3" runat="server" ValidationGroup="g1" Width="189px" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff">
                <strong style="color: #800080">Website:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 36px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;"></span></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtWebsite" runat="server" ValidationGroup="g1" Width="189px" ReadOnly="True"></asp:TextBox>
                </td>
        </tr>
        <tr style="font-weight: bold; font-size: 12pt">
            <td align="left" colspan="1" style="color: #800080">
                EmailId1:</td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 36px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;"></span></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtEmailId1" runat="server" ValidationGroup="g1" Width="189px" ReadOnly="True"></asp:TextBox>
                </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff">
                <strong style="color: #800080">EmailId2:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 36px; color: #ffcc00">
                <span></span>
            </td>
            <td align="left" colspan="2" style="color: #ffcc00">
                <asp:TextBox ID="txtEmailId2" runat="server" ValidationGroup="g1" Width="189px" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt; color: #ffcc00">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff">
                <strong style="color: #800080">Address:<span style="color: #ffcc00"></span></strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 36px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;"></span></td>
            <td align="left" colspan="2" style="color: #ffffff">
                <asp:TextBox ID="txtAddress" runat="server" Height="78px" TextMode="MultiLine" ValidationGroup="g1"
                    Width="249px" ReadOnly="True"></asp:TextBox><span style="color: #ffcc00"> </span>
                </td>
        </tr>
        <tr style="font-size: 12pt; color: #000000">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff;
                height: 38px">
                <strong style="color: #800080">Organization Environment:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 36px; color: #ffffff;
                height: 38px">
                <span style="color: #ff0000; font-weight: bold;"></span></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtOrgEnv" runat="server" Height="68px" TextMode="MultiLine" ValidationGroup="g1"
                    Width="249px" ReadOnly="True"></asp:TextBox>
                </td>
        </tr>
        <tr style="font-weight: bold; font-size: 12pt">
            <td align="left" colspan="1" style="color: #800080">
                Terms &amp; Condition:</td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 36px; color: #ffcc00">
                <span style="color: #ff0000; font-weight: bold;"></span></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtTerms" runat="server" Height="56px" TextMode="MultiLine" ValidationGroup="g1"
                    Width="253px" ReadOnly="True"></asp:TextBox>
                </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff;
                height: 38px">
                <strong style="color: #800080">Other:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 36px; color: #ffffff;
                height: 38px">
                <span style="color: #ff0000; font-weight: bold;"></span></td>
            <td align="left" colspan="2" style="height: 38px">
                <asp:TextBox ID="txtOthers" runat="server" Height="54px" TextMode="MultiLine" ValidationGroup="g1"
                    Width="233px" ReadOnly="True"></asp:TextBox>
                </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 191px; color: #ffffff">
                <strong style="color: #800080">Size of Organization:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 36px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;"></span></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtOrgSize" runat="server" Width="207px" ValidationGroup="g1" ReadOnly="True"></asp:TextBox>
                </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4">
                &nbsp;<asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back" /></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4" style="font-size: 12pt; color: #ffffff">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="DarkBlue"
                    Width="316px"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

