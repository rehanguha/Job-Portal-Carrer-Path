<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmAddLocation.aspx.cs" Inherits="Admin_frmLocation" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <table align="center" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td align="center" colspan="2" style="font-weight: bold; color: #ffffff">
                <span style="font-size: 14pt; font-weight: bold; color: purple;">Add Location</span></td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="font-weight: bold; color: #ffffff; text-align: left">
                &nbsp;<span style="font-size: 9pt; color: #ff0066">(* Mandetary)</span></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-size: 12pt; color: purple; font-weight: bold; height: 22px;">
                State Name: <span style="font-size: 14pt; color: red">*</span></td>
            <td align="left" style="width: 100px; height: 22px;">
                <asp:DropDownList ID="ddlStateName" runat="server" Width="124px">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlStateName"
                    ErrorMessage="RequiredFieldValidator" Style="position: relative" InitialValue="---Select---">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-size: 12pt; color: purple; font-weight: bold; height: 24px;">
                Location Name: <span style="font-size: 16pt; color: red">*</span></td>
            <td align="left" style="width: 100px; height: 24px;">
                <asp:TextBox ID="txtName" runat="server" Width="155px" ValidationGroup="g"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName"
                    ErrorMessage="RequiredFieldValidator" Style="position: relative" ValidationGroup="g">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-size: 12pt; color: purple; font-weight: bold; height: 38px;">
                Description: <span style="font-size: 16pt; color: red">*</span></td>
            <td align="left" style="width: 100px; height: 38px;">
                <asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine" Width="155px" ValidationGroup="g"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDesc"
                    ErrorMessage="RequiredFieldValidator" Style="position: relative"
                    ValidationGroup="g">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="2" style="font-size: 12pt; color: #ffffff">
                <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" Width="56px" ValidationGroup="g" />
                <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" Width="51px" /></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="2" style="font-size: 12pt; color: #ffffff">
                <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" Font-Bold="True"
                    ForeColor="Purple" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Location Info" />&nbsp;
                <span style="color: #663300">&nbsp;<strong><span style="font-size: 8pt">(Check The Check
                    Option To View Existed Data)</span></strong> </span>
                <asp:GridView
                        ID="GridView1" runat="server" AutoGenerateColumns="False" EmptyDataText="No Data Foud"
                        ForeColor="Purple" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCommand="GridView1_RowCommand"
                        Width="563px" >
                        <EmptyDataRowStyle Font-Bold="True" Font-Size="14pt" ForeColor="Red" />
                        <HeaderStyle BackColor="Purple" ForeColor="LavenderBlush" />
                        <Columns>
                            <asp:TemplateField HeaderText="Location">
                                <ItemTemplate>
                                    <asp:Literal ID="ltlname" runat="server" Text='<%#Eval("CityName") %>'></asp:Literal>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Description">
                                <ItemTemplate>
                                    <asp:Literal ID="ltldesc" runat="server" Text='<%#Eval("Description") %>'></asp:Literal>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Delete">
                                <ItemTemplate>
                                    <asp:Button ID="btndelete" runat="server" CommandArgument='<%#Eval("CityId") %>'
                                        CommandName="DeleteRec" Text="Delete ?" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Update">
                                <ItemTemplate>
                                    <asp:Button ID="btnupdate" runat="server" CommandArgument='<%#Eval("CityId") %>'
                                        CommandName="UpdateRec" Text="Update !" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="2" style="font-size: 12pt; color: #ffffff; height: 19px;">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="13pt" Width="316px" ForeColor="Purple"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

