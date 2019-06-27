<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmAddSkills.aspx.cs" Inherits="Admin_frmAddSkills" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <br />
        <br />
        <br />
        <table border="0" cellpadding="0" cellspacing="0" style="width: 244px">
            <tr>
                <td align="center" colspan="2" style="font-weight: bold; color: #ffffff">
                    <span style="font-size: 14pt; font-weight: bold; color: purple;">Add Skills</span></td>
            </tr>
            <tr>
                <td align="center" colspan="2" style="font-weight: bold; color: #ffffff; text-align: left">
                    &nbsp;<span style="font-size: 9pt; color: #ff0066">(* Mandetary)</span></td>
            </tr>
            <tr style="font-size: 12pt">
                <td align="left" style="font-size: 12pt; color: purple; font-weight: bold;">
                    Skill Type:</td>
                <td align="left" style="width: 100px">
                    <asp:TextBox ID="txtType" runat="server" Width="175px" ValidationGroup="g"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtType"
                        ErrorMessage="RequiredFieldValidator" Style="position: relative" ValidationGroup="g">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr style="font-size: 12pt">
                <td align="left" style="font-size: 12pt; color: purple; font-weight: bold;">
                    Description:</td>
                <td align="left" style="width: 100px">
                    <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" ValidationGroup="g"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDescription"
                        ErrorMessage="RequiredFieldValidator" Style="position: relative" ValidationGroup="g">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr style="font-size: 12pt">
                <td align="center" colspan="2" style="font-size: 12pt; color: #ffffff">
                    <asp:Button ID="btnAdd" runat="server" Text="Add" Width="56px" OnClick="btnAdd_Click" ValidationGroup="g" />
                    <asp:Button ID="btnClear" runat="server" Text="Clear" Width="51px" OnClick="btnClear_Click" /></td>
            </tr>
            <tr style="font-size: 12pt">
                <td align="center" colspan="2" style="font-size: 12pt; color: #ffffff">
                    <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" Font-Bold="True"
                        ForeColor="Purple" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Show All" /><span
                            style="color: #663300">&nbsp; <strong><span style="font-size: 8pt">(Check The Check
                                Option To View Existed Data)</span></strong> </span>
                    <asp:GridView
                            ID="GridView1" runat="server" AutoGenerateColumns="False" EmptyDataText="No Data Foud"
                            ForeColor="Purple" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCommand="GridView1_RowCommand"
                            Width="563px">
                            <EmptyDataRowStyle Font-Bold="True" Font-Size="14pt" ForeColor="Red" />
                            <HeaderStyle BackColor="Purple" ForeColor="LavenderBlush" />
                            <Columns>
                                <asp:TemplateField HeaderText="Skill Type">
                                    <ItemTemplate>
                                        <asp:Literal ID="ltlname" runat="server" Text='<%#Eval("SkillType") %>'></asp:Literal>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Description">
                                    <ItemTemplate>
                                        <asp:Literal ID="ltldesc" runat="server" Text='<%#Eval("Description") %>'></asp:Literal>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Delete">
                                    <ItemTemplate>
                                        <asp:Button ID="btndelete" runat="server" CommandArgument='<%#Eval("SkillId") %>'
                                            CommandName="DeleteRec" Text="Delete ?" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Update">
                                    <ItemTemplate>
                                        <asp:Button ID="btnupdate" runat="server" CommandArgument='<%#Eval("SkillId") %>'
                                            CommandName="UpdateRec" Text="Update !" />
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
    </div>
</asp:Content>

