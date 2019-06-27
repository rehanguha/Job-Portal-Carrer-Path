<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmAddExperience.aspx.cs" Inherits="Admin_frmAddExperience" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <table align="center" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td align="center" colspan="2" style="font-weight: bold; color: #ffffff; height: 22px;">
                <span style="font-size: 14pt; font-weight: bold; color: purple;">Add Experience</span></td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="font-weight: bold; color: #ffffff; height: 22px;
                text-align: left">
                <span style="font-size: 9pt; color: #ff0066">(* Mandetary)</span></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-size: 12pt; color: purple; font-weight: bold; height: 24px;">
                Experiance: <span style="color: red">*</span></td>
            <td align="left" style="width: 100px; height: 24px;">
                <asp:TextBox ID="txtExp" runat="server" Width="81px" ValidationGroup="g"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtExp"
                    ErrorMessage="RequiredFieldValidator" Style="position: relative" ValidationGroup="g">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-size: 12pt; color: purple; font-weight: bold;">
                Duration:&nbsp; <span style="color: red">*</span></td>
            <td align="left" style="width: 100px">
                <asp:DropDownList ID="ddlDuration" runat="server" Width="86px" ValidationGroup="g">
                    <asp:ListItem Value="--Select--" >--Select--</asp:ListItem>
                    <asp:ListItem>Month</asp:ListItem>
                    <asp:ListItem>Year</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlDuration"
                    ErrorMessage="RequiredFieldValidator" InitialValue="--Select--" Style="position: relative"
                    ValidationGroup="g">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="2" style="font-size: 12pt; color: #ffffff">
                <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" Width="56px" ValidationGroup="g" />&nbsp;
                <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" Width="51px" /></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="2" style="font-size: 12pt; color: #ffffff">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="13pt" Width="62px" ForeColor="Purple" style="position: relative"></asp:Label></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="2" style="font-size: 12pt; color: #ffffff">
                <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" Font-Bold="True"
                    ForeColor="Purple" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Show All" Width="81px" />&nbsp;
                <span style="color: #990099">&nbsp;<strong><span style="font-size: 8pt">(Check The Check
                    Option To View Existed Data)</span></strong></span><asp:GridView
                        ID="GridView1" runat="server" AutoGenerateColumns="False" EmptyDataText="No Data Foud"
                        ForeColor="Purple" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCommand="GridView1_RowCommand"
                        Width="563px" >
                        <EmptyDataRowStyle Font-Bold="True" Font-Size="14pt" ForeColor="Red" />
                        <HeaderStyle BackColor="Purple" ForeColor="LavenderBlush" />
                        <Columns>
                            <asp:TemplateField HeaderText="Exp. Type">
                                <ItemTemplate>
                                    <asp:Literal ID="ltlname" runat="server" Text='<%#Eval("ExpType") %>'></asp:Literal>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Duration">
                                <ItemTemplate>
                                    <asp:Literal ID="ltldesc" runat="server" Text='<%#Eval("Duration") %>'></asp:Literal>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Delete">
                                <ItemTemplate>
                                    <asp:Button ID="btndelete" runat="server" CommandArgument='<%#Eval("ExpId") %>'
                                        CommandName="DeleteRec" Text="Delete ?" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Update">
                                <ItemTemplate>
                                    <asp:Button ID="btnupdate" runat="server" CommandArgument='<%#Eval("ExpId") %>'
                                        CommandName="UpdateRec" Text="Update !" />
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

