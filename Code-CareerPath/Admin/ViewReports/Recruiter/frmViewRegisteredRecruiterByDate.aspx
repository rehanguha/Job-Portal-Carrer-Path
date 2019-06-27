<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmViewRegisteredRecruiterByDate.aspx.cs" Inherits="Admin_ViewReports_Recruiter_frmViewRegisteredRecruiterByDate" Title="Untitled Page" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <table id="TABLE1" align="center" border="0" cellpadding="0" cellspacing="0" >
        <tr style="font-size: 12pt">
            <td align="center" colspan="2" style="font-size: 12pt; color: purple">
                <strong>
                From Date</strong>:&nbsp;</td>
            <td align="center" colspan="1" style="font-size: 12pt; color: blue">
                <cc1:gmdatepicker id="GMDatePicker1" runat="server"></cc1:gmdatepicker>
            </td>
            <td align="center" colspan="1" style="font-size: 12pt; color: purple; width: 66px;">
                <strong>
                To Date</strong>:</td>
            <td align="center" colspan="1" style="font-size: 12pt; color:blue">
                <cc1:gmdatepicker id="GMDatePicker2" runat="server"></cc1:gmdatepicker>
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="5" style="font-size: 12pt; color: purple">
                <asp:Button ID="btnView" runat="server" OnClick="btnView_Click" Text="View" Width="75px" /></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="5" style="font-size: 12pt; color: #ffffff">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" EmptyDataText="No Data Foud"
                    ForeColor="Purple" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCommand="GridView1_RowCommand"
                    OnRowDeleting="GridView1_RowDeleting" Width="421px" OnRowDataBound="GridView1_RowDataBound">
                    <EmptyDataRowStyle Font-Bold="True" Font-Size="14pt" ForeColor="Red" />
                    <HeaderStyle BackColor="Purple" ForeColor="LavenderBlush" />
                    <Columns>
                        <asp:TemplateField HeaderText="User Name">
                            <ItemTemplate>
                                <asp:Literal ID="ltlid" runat="server" Text='<%#Eval("UserName") %>'></asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="WebSite">
                            <ItemTemplate>
                                <asp:HyperLink ID="ltlWebSite" runat="server" Text='<%#Eval("WebSite") %>' ></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email ID">
                            <ItemTemplate>
                                <asp:Label ID="ltlEmailId" runat="server" Text='<%#Eval("EmailID1") %>'></asp:Label>
                              
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:Button ID="btndelete" runat="server" CommandArgument='<%#Eval("UserName") %>'
                                    CommandName="Delete" Text="Delete ?" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Details">
                            <ItemTemplate>
                                <asp:Button ID="btnupdate" runat="server" CommandArgument='<%#Eval("UserName") %>'
                                    CommandName="Update" Text="Show Details" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="5" style="font-size: 12pt; color: #ffffff">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="Purple"
                    Width="316px"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

