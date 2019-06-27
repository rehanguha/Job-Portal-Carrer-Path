<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmRecruiterResponseToJobSeeker.aspx.cs" Inherits="Admin_ViewReports_Recruiter_frmRecruiterResponseToJobSeeker" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table id="TABLE1" border="0" cellpadding="0" cellspacing="0" language="javascript"
        onclick="return TABLE1_onclick()">
        <tr>
            <td colspan="2" style="height: 19px">
            </td>
        </tr>
        <tr>
            <td id=" " align="center" colspan="2">
                &nbsp; &nbsp; &nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:GridView ID="GridView1" runat="server" EmptyDataText="No Job Found" OnPageIndexChanging="GridView1_PageIndexChanging" Width="669px" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" Font-Size="Small" ForeColor="Black">
                    <EmptyDataRowStyle Font-Bold="True" ForeColor="#006600" />
                    <HeaderStyle BackColor="Purple" Font-Bold="True" ForeColor="#B5BDAC" />
                    <Columns>
                    
                     <asp:TemplateField HeaderText="JobSeeker ID">
                    <ItemTemplate>
                    <asp:Literal ID="ltlName" Text='<%#Eval("JobSeekerName") %>' runat="server" ></asp:Literal>
                    </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Job Type">
                    <ItemTemplate>
                    <asp:LinkButton ID="lnkId" Text='<%#Eval("JobID") %>' CommandArgument='<%#Eval("JobID") %>' CommandName="JobId" runat="server"   ForeColor="#800080"></asp:LinkButton>                    </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Organisation Name">
                    <ItemTemplate>
                    <asp:LinkButton ID="lnkOrgName" Text='<%#Eval("OrganisationName") %>' CommandArgument='<%#Eval("OrganisationName") %>' runat="server" ForeColor="#800080" CommandName="OrgName"></asp:LinkButton>
                    </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Date Of Response">
                    <ItemTemplate>
                    <asp:Label ID="lblDate" Text='<%#Eval("DateOfResponse") %>' runat="server"></asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

