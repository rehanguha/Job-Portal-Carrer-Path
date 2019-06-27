<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmAddQualification.aspx.cs" Inherits="Admin_frmAddQualification" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="13pt" Width="316px" ForeColor="Purple" style="position: relative"></asp:Label><br />
    <br />
    <table border="0" cellpadding="0" cellspacing="0" align="center">
        <tr>
            <td align="center" colspan="2" style="font-weight: bold; color: #ffffff">
                <span style="font-size: 14pt; font-weight: bold; color: purple;">Add Qualification</span></td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="font-weight: bold; color: #ffffff; text-align: left">
                <span style="font-size: 9pt; color: #ff0066">(* Mandetary)</span></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-size: 12pt; color: purple; font-weight: bold; height: 24px;">
                Qualification:</td>
            <td align="left" style="width: 100px; height: 24px;">
                <asp:TextBox ID="txtQualification" runat="server" Width="175px" ValidationGroup="g"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtQualification"
                    ErrorMessage="RequiredFieldValidator" Style="position: relative" ValidationGroup="g">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-size: 12pt; color: purple; font-weight: bold;">
                Description:</td>
            <td align="left" style="width: 100px">
                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" ValidationGroup="g"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDescription"
                    ErrorMessage="RequiredFieldValidator" Style="position: relative" ValidationGroup="g">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-size: 12pt; color: purple; font-weight: bold; height: 24px;">
                Qualification Level:</td>
            <td align="left" style="width: 100px; height: 24px;">
                <asp:TextBox ID="txtQualificationLevel" runat="server" Width="55px" ValidationGroup="g"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtQualificationLevel"
                    ErrorMessage="RequiredFieldValidator" Style="position: relative" ValidationGroup="g">*</asp:RequiredFieldValidator><strong><span
                        style="font-size: 8pt; color: #660066">(Give Integer Ex. 1 /2 /3 /)</span></strong></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="2" style="font-size: 12pt; color: #ffffff; height: 24px;">
                <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" Width="56px" ValidationGroup="g" />
                <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" Width="51px" /></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="2" style="font-size: 12pt; color: #ffffff">
                <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" Font-Bold="True"
                    ForeColor="Purple" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Show All" /><span
                        style="color: #663300"> &nbsp; <strong><span style="font-size: 8pt">(Check The Check
                            Option To View Existed Data)</span></strong> </span>
                <asp:GridView
                        ID="GridView1" runat="server" AutoGenerateColumns="False" EmptyDataText="No Data Foud"
                        ForeColor="Purple" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCommand="GridView1_RowCommand"
                        Width="563px" OnRowDeleting="GridView1_RowDeleting" >
                        <EmptyDataRowStyle Font-Bold="True" Font-Size="14pt" ForeColor="Red" />
                        <HeaderStyle BackColor="Purple" ForeColor="LavenderBlush" />
                        <Columns>
                            <asp:TemplateField HeaderText="Qualification">
                                <ItemTemplate>
                                    <asp:Literal ID="ltlname" runat="server" Text='<%#Eval("Qualification") %>'></asp:Literal>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Description">
                                <ItemTemplate>
                                    <asp:Literal ID="ltldesc" runat="server" Text='<%#Eval("Description") %>'></asp:Literal>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Delete">
                                <ItemTemplate>
                                    <asp:Button ID="btndelete" runat="server" CommandArgument='<%#Eval("QualificationId") %>' CommandName="DeleteRec"
                                        Text="Delete ?" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Update">
                                <ItemTemplate>
                                    <asp:Button ID="btnupdate" runat="server" CommandArgument='<%#Eval("QualificationId") %>' CommandName="UpdateRec"
                                        Text="Update !" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="2" style="font-size: 12pt; color: #ffffff">
                </td>
        </tr>
    </table>
</asp:Content>

