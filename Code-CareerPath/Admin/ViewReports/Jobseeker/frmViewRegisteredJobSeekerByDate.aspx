<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmViewRegisteredJobSeekerByDate.aspx.cs" Inherits="Admin_ViewReports_Jobseeker_frmViewRegisteredJobSeekerByDate" Title="Untitled Page" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <table align="center" border="0" cellpadding="0" cellspacing="0" id="TABLE1" language="javascript" onclick="return TABLE1_onclick()">
        <tr style="font-size: 12pt">
            <td align="center" colspan="2" style="font-size: 12pt; color: purple">
                <strong>
                From Date:</strong>&nbsp;</td>
            <td align="center" colspan="1" style="font-size: 12pt; color:blue">
                <cc1:gmdatepicker id="GMDatePicker1" runat="server"></cc1:gmdatepicker>
            </td>
            <td align="center" colspan="1" style="font-size: 12pt; color:purple">
                <strong>
                To Date</strong>:</td>
            <td align="center" colspan="1" style="font-size: 12pt; color: blue">
                <cc1:gmdatepicker id="GMDatePicker2" runat="server"></cc1:gmdatepicker>
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="5" style="font-size: 12pt; color: purple">
                <br />
                <asp:Button ID="btnView" runat="server" Text="View" Width="75px" OnClick="btnView_Click" /></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="5" style="font-size: 12pt; color: #ffffff">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" EmptyDataText="No Data Foud"
                    ForeColor="Purple" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCommand="GridView1_RowCommand"
                    OnRowDeleting="GridView1_RowDeleting" Width="563px">
                    <EmptyDataRowStyle Font-Bold="True" Font-Size="14pt" ForeColor="Red" />
                    <HeaderStyle BackColor="Purple" ForeColor="LavenderBlush" />
                    <Columns>
                        <asp:TemplateField HeaderText="Jobseeker ID">
                            <ItemTemplate>
                                <asp:Literal ID="ltlid" runat="server" Text='<%#Eval("JobseekerID") %>'></asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email ID">
                            <ItemTemplate>
                                <asp:Literal ID="ltlmail" runat="server" Text='<%#Eval("EmailID") %>'></asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                          <asp:TemplateField HeaderText="Phone">
                            <ItemTemplate>
                                <asp:Literal ID="ltlphone" runat="server" Text='<%#Eval("Phone1") %>'></asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:Button ID="btndelete" runat="server" CommandArgument='<%#Eval("JobseekerID") %>'
                                    CommandName="Delete" Text="Delete ?" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Update">
                            <ItemTemplate>
                                <asp:Button ID="btnupdate" runat="server" CommandArgument='<%#Eval("JobseekerID") %>'
                                    CommandName="Update" Text="Update !" />
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

