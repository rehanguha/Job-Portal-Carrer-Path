<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmViewJobSeekerResume.aspx.cs" Inherits="Admin_ViewReports_Jobseeker_frmModifyJobSeekerResume" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td colspan="3" align="center">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Width="390px"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; font-size: 14pt; color: #800080;
                text-decoration: underline">
                &nbsp;User Resume</td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <asp:TextBox ID="txtResume" runat="server" Height="196px" TextMode="MultiLine" Width="518px" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; color: #800080">
                OR</td>
        </tr>
        <tr>
            <td align="right" colspan="1">
                <strong><span style="color: #800080">DownLoad User Resume:</span></strong></td>
            <td align="left" colspan="2">
                <asp:HyperLink ID="hypResume" runat="server" ForeColor="DimGray" Width="393px" Font-Bold="True">[hypResume]</asp:HyperLink></td>
        </tr>
    </table>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="position: relative"
        Text="Back" />
</asp:Content>

