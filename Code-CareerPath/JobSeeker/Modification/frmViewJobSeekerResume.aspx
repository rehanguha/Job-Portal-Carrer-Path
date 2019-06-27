<%@ Page Language="C#" MasterPageFile="~/JobSeeker/JobSeekerMasterPage.master" AutoEventWireup="true" CodeFile="frmViewJobSeekerResume.aspx.cs" Inherits="JobSeeker_Modification_frmModifyJobSeekerResume" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td colspan="3" align="center">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Label" Width="390px"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; font-size: 14pt; color: #006600;
                text-decoration: underline">
                &nbsp;Your Resume:</td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <asp:TextBox ID="txtResume" runat="server" Height="196px" TextMode="MultiLine" Width="518px" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; color: #006600">
                OR</td>
        </tr>
        <tr>
            <td align="right" colspan="1">
                <strong><span style="color: #006600">DownLoad Your Resume:</span></strong></td>
            <td align="left" colspan="2">
                <asp:HyperLink ID="hypResume" runat="server" ForeColor="DimGray" Width="393px" Font-Bold="True">[hypResume]</asp:HyperLink></td>
        </tr>
    </table>
</asp:Content>

