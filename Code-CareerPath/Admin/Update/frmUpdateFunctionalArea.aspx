<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmUpdateFunctionalArea.aspx.cs" Inherits="Admin_Update_frmUpdateFunctionalArea" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td align="center" colspan="2" style="font-weight: bold; color: #ffffff">
                <span style="font-weight: bold; font-size: 14pt; color: purple">Add Functional Area</span></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-weight: bold; font-size: 12pt; color: purple">
                Functional Area:</td>
            <td align="left" style="width: 100px">
                <asp:TextBox ID="txtFunction" runat="server" Width="165px"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-weight: bold; font-size: 12pt; color: purple">
                Description:</td>
            <td align="left" style="width: 100px">
                <asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine" Width="165px"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="2" style="font-size: 12pt; color: #ffffff">
                <asp:Button ID="btnUpdate" runat="server" Text="Update" Width="56px" OnClick="btnUpdate_Click" />
                <asp:Button ID="btnBack" runat="server" Text="Back" Width="51px" OnClick="btnBack_Click" /></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="2" style="font-size: 12pt; color: #ffffff">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="Purple"
                    Width="316px"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

