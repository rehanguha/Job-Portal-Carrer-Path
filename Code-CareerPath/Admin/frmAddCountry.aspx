<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmAddCountry.aspx.cs" Inherits="Admin_frmAddCountry" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <table align="center" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td align="center" colspan="2" style="font-weight: bold; color: #ffffff">
                <span style="font-size: 14pt; color: purple;">Add Country</span></td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="font-weight: bold; color: #ffffff; height: 19px; text-align: left;">
                 <span style="font-size: 9pt; color: #ff0066">(* Mandetary)</span>
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-size: 12pt; color: purple; font-weight: bold;">
                Country Name: <span style="font-size: 16pt; color: red">*</span></td>
            <td align="left" style="width: 100px">
                <asp:TextBox ID="txtName" runat="server" Width="155px" ValidationGroup="g"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                    ErrorMessage="RequiredFieldValidator" Style="position: relative" ValidationGroup="g">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-size: 12pt; color: purple; font-weight: bold;">
                Description:&nbsp; <span style="font-size: 16pt; color: red">*</span></td>
            <td align="left" style="width: 100px">
                <asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine" Width="155px" ValidationGroup="g"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDesc"
                    ErrorMessage="RequiredFieldValidator" Style="position: relative" ValidationGroup="g">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="2" style="font-size: 12pt; color: #ffffff">
                <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" Width="56px" ValidationGroup="g" />
                <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" Width="51px" /></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="2" style="font-size: 12pt; color: #ffffff">
                <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" Font-Bold="True"
                    ForeColor="Purple" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Country Info" />
                &nbsp; <span style="color: #663300">
                    <strong><span style="font-size: 8pt">(Check The Check
                    Option To View Existed Data)</span></strong> </span>
                    </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="2" style="font-size: 12pt; color: #ffffff">
                <asp:GridView ID="GridView1" runat="server" EmptyDataText="No Data Foud" ForeColor="Purple"
                    Width="563px" AutoGenerateColumns="False" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCommand="GridView1_RowCommand">
                    <EmptyDataRowStyle Font-Bold="True" Font-Size="14pt" ForeColor="Red" />
                    <HeaderStyle BackColor="Purple" ForeColor="LavenderBlush" />
                    <Columns>
                    <asp:TemplateField HeaderText="Country">
                    <ItemTemplate>
                    <asp:Literal ID="ltlname" Text='<%#Eval("CountryName") %>' runat="server"></asp:Literal>
                    </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Description">
                    <ItemTemplate>
                    <asp:Literal ID="ltldesc" Text='<%#Eval("Description") %>' runat="server"></asp:Literal>
                    </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                    <asp:Button ID="btndelete" CommandName="DeleteRec" CommandArgument='<%#Eval("CountryId") %>' Text="Delete ?" runat="server" />
                    </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Update">
                    <ItemTemplate>
                    <asp:Button ID="btnupdate" CommandName="UpdateRec" CommandArgument='<%#Eval("CountryId") %>' Text="Update !" runat="server" />
                    </ItemTemplate>
                    </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="2" style="font-size: 12pt; color: #ffffff">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="13pt" Width="316px" ForeColor="Purple"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

