<%@ Page Language="C#" MasterPageFile="~/JobSeeker/MasterPage.master" AutoEventWireup="true" CodeFile="frmReviewResume.aspx.cs" Inherits="JobSeeker_Registration_frmReviewResume" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <strong><span style="font-size: 16pt; color: #ff66ff; font-weight: bold;">You Have Successfully Registered.........<br />
        <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#006600" Height="9px" OnClick="LinkButton1_Click">Review My Details</asp:LinkButton><br />
        <br />
        <asp:Panel ID="Panel1" runat="server" Height="50px" Width="125px">
    <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 472px">
        <tr style="font-size: 12pt">
            <td align="center" colspan="3">
                <strong><span style="font-size: 16pt; color: #ffffff"></span></strong>
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="3" style="font-size: 12pt; color: #ffffff">
                <strong><span style="font-size: 14pt; color: #006600; text-decoration: underline; font-weight: bold;">Contact
                    Details</span></strong></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="3" style="font-size: 12pt; color: #ffffff">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 230px; color: #ffffff">
                <strong style="font-weight: bold; color: #006600">JobSeeker Name:<span style="color: #ffcc00"></span></strong></td>
            <td align="left" colspan="2">
                <asp:Label ID="lblFName" runat="server" Font-Bold="True" ForeColor="Black" Width="212px"></asp:Label>&nbsp;</td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 230px; color: #ffffff">
                <strong style="font-weight: bold; color: #006600">Email:</strong></td>
            <td align="left" colspan="2">
                <asp:Label ID="lblEmail" runat="server" Font-Bold="True" ForeColor="Black" Width="212px"></asp:Label>&nbsp;</td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 230px; color: #ffffff">
                <strong style="font-weight: bold; color: #006600">Phone:</strong></td>
            <td align="left" colspan="2">
                <asp:Label ID="lblPhone" runat="server" Font-Bold="True" ForeColor="Black" Width="212px"></asp:Label>&nbsp;</td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="3" style="height: 19px">
                &nbsp; &nbsp; &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="3" style="font-size: 14pt">
                <span style="font-size: 14pt; color: gold; text-decoration: underline"><strong style="font-weight: bold; font-size: 14pt; color: #006600; text-decoration: underline">BackGround
                    Details</strong></span></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="3">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="width: 230px; height: 19px">
                <strong><span style="color: #006600; font-weight: bold;">Education Level:</span></strong></td>
            <td align="left" colspan="3" style="height: 19px">
                <asp:Label ID="lblEducation" runat="server" Font-Bold="True" ForeColor="Black" Width="212px"></asp:Label></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="color: #ffffff; width: 230px;">
                <strong style="font-weight: bold; color: #006600">Industrial Experience:</strong></td>
            <td align="left" colspan="3" style="height: 19px">
                <asp:Label ID="lblIndustryExp" runat="server" Font-Bold="True" ForeColor="Black" Width="212px"></asp:Label></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="color: #ffffff; width: 230px;">
                <strong style="font-weight: bold; color: #006600">Years of Technical Experience:</strong></td>
            <td align="left" colspan="3" style="height: 19px">
                &nbsp;<asp:Label ID="lblTechExp" runat="server" Font-Bold="True" ForeColor="Black"
                    Width="208px"></asp:Label></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="4" style="color: #ffffff">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="4" style="color: #ffffff; height: 19px">
                <strong><span style="font-size: 14pt; color: #006600; text-decoration: underline; font-weight: bold;">Position
                    Details</span></strong></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="color: #ffffff; height: 19px; width: 230px;">
                <strong style="font-weight: bold; color: #006600">Desired Position:</strong></td>
            <td align="left" colspan="3" style="height: 19px">
                <asp:Label ID="lblPosiotion" runat="server" Font-Bold="True" ForeColor="Black" Width="212px"></asp:Label></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="color: #ffffff; width: 230px;">
                <strong style="font-weight: bold; color: #006600">First Choice Location:</strong></td>
            <td align="left" colspan="3" style="height: 19px">
                <asp:Label ID="lblLocation" runat="server" Font-Bold="True" ForeColor="Black" Width="212px"></asp:Label></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="color: #ffffff; width: 230px;">
                <strong style="font-weight: bold; color: #006600">Relocate:</strong></td>
            <td align="left" colspan="3" style="height: 19px">
                <asp:Label ID="lblRelocate" runat="server" Font-Bold="True" ForeColor="Black" Width="212px"></asp:Label></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="color: #ffffff; width: 230px;">
                <strong style="font-weight: bold; color: #006600">Telecommute:</strong></td>
            <td align="left" colspan="3" style="height: 19px">
                <asp:Label ID="lblTelecommute" runat="server" Font-Bold="True" ForeColor="Black" Width="212px"></asp:Label></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="color: #ffffff; width: 230px;">
                <strong style="font-weight: bold; color: #006600">Travel:</strong></td>
            <td align="left" colspan="3" style="height: 19px">
                <asp:Label ID="lblTravel" runat="server" Font-Bold="True" ForeColor="Black" Width="212px"></asp:Label></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="color: #ffffff; width: 230px;">
                <strong style="font-weight: bold; color: #006600">Desired Annual Salary:</strong></td>
            <td align="left" colspan="3" style="height: 19px">
                <asp:Label ID="lblSalary" runat="server" Font-Bold="True" ForeColor="Black" Width="212px"></asp:Label></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="color: #ffffff; height: 19px; width: 230px;">
                <strong style="font-weight: bold; color: #006600">Employment Type:</strong></td>
            <td align="left" colspan="3" style="height: 19px">
                <asp:Label ID="lblEmployment" runat="server" Font-Bold="True" ForeColor="Black" Width="212px"></asp:Label></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4" style="color: #ffffff">
                &nbsp;<asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="14pt" OnClick="Button1_Click"
                    Text="OK" Width="39px" /></td>
        </tr>
    </table>
        </asp:Panel>
        <br />
    </span></strong>
</asp:Content>

