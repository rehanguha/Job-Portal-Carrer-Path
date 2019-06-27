<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmUpdateSkill.aspx.cs" Inherits="Admin_Update_frmUpdateSkill" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" align="center">
        <tr>
            <td align="center" colspan="2" style="font-weight: bold; color: #ffffff">
                <span style="font-weight: bold; font-size: 14pt; color: purple">Update Skills</span></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-weight: bold; font-size: 12pt; color: purple">
                Skill Type:</td>
            <td align="left" style="width: 100px">
                <asp:TextBox ID="txtType" runat="server" Width="175px"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-weight: bold; font-size: 12pt; color: purple">
                Description:</td>
            <td align="left" style="width: 100px">
                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="2" style="font-size: 12pt; color: #ffffff">
                <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" Width="56px" />
                <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Bcak" Width="51px" /></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="2" style="font-size: 12pt; color: #ffffff">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="Purple"
                    Width="316px"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

