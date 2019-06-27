<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmUpdateExperience.aspx.cs" Inherits="Admin_Update_frmUpdateExperience" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td align="center" colspan="2" style="font-weight: bold; color: #ffffff">
                <span style="font-weight: bold; font-size: 14pt; color: purple">Update Experiance</span></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-weight: bold; font-size: 12pt; color: purple">
                Experiance:</td>
            <td align="left" style="width: 100px; height: 24px">
                <asp:TextBox ID="txtExp" runat="server" Width="107px"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-weight: bold; font-size: 12pt; color: purple">
                Duration:</td>
            <td align="left" style="width: 100px">
                <asp:DropDownList ID="ddlDuration" runat="server" Width="112px">
                    <asp:ListItem>Month</asp:ListItem>
                    <asp:ListItem>Year</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="2" style="font-size: 12pt; color: #ffffff">
                <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" Width="56px" />
                <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back" Width="51px" /></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="2" style="font-size: 12pt; color: #ffffff">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="Purple"
                    Width="316px"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

