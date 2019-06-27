<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmJobSeekerResponseToRecruiter.aspx.cs" Inherits="Admin_ViewReports_Jobseeker_frmJobSeekerInfoAppliedJob" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" >
        <tr>
            <td align="center">
                <asp:Label ID="lblMsg" runat="server" Style="position: relative"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" style="height: 197px">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    EmptyDataText="No JobSeeker Found" Font-Size="Small" OnPageIndexChanging="GridView1_PageIndexChanging"
                    OnSelectedIndexChanging="GridView1_SelectedIndexChanging" PageSize="5" Width="617px">
                    <EmptyDataRowStyle Font-Bold="True" ForeColor="Red" />
                    <Columns>
                        <asp:CommandField ButtonType="Button" SelectText="Details" ShowSelectButton="True" />
                        <asp:TemplateField HeaderText="Jobseeker Name">
                            <ItemTemplate>
                                <asp:Literal ID="lblId" runat="server" Text='<%#Eval("JobseekerId") %>'>
                        </asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Recruiter Name">
                            <ItemTemplate>
                                <asp:Literal ID="lblRecruiterName" runat="server" Text='<%#Eval("RecruiterName") %>'>
                        </asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Job ID">
                            <ItemTemplate>
                                <asp:Literal ID="lblJobID" runat="server" Text='<%#Eval("JobID") %>'>
                        </asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Response Date">
                            <ItemTemplate>
                                <asp:Literal ID="lblDateOfResponse" runat="server" Text='<%#Eval("DateOfResponse") %>'>
                        </asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                       
                    </Columns>
                    <HeaderStyle BackColor="Purple" ForeColor="#E3C7DA" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

