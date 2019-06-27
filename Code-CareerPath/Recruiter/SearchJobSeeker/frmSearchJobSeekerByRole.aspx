<%@ Page Language="C#" MasterPageFile="~/Recruiter/RecruiterMasterPage.master" AutoEventWireup="true" CodeFile="frmSearchJobSeekerByRole.aspx.cs" Inherits="Recruiter_SearchJobSeeker_frmSearchJobSeekerByRole" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <asp:Label ID="lblMsg" runat="server" ></asp:Label>
    <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td colspan="2">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="height: 24px">
                <strong>Select Role To Search JobSeeker:</strong><asp:DropDownList ID="ddlRole"
                    runat="server" Width="122px" AutoPostBack="True" OnSelectedIndexChanged="ddlRole_SelectedIndexChanged">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    EmptyDataText="No JobSeeker Found" OnPageIndexChanging="GridView1_PageIndexChanging"
                    OnSelectedIndexChanging="GridView1_SelectedIndexChanging" PageSize="5" Width="741px" OnRowDataBound="GridView1_RowDataBound" Font-Size="Small">
                    <EmptyDataRowStyle Font-Bold="True" ForeColor="Red" />
                    <HeaderStyle BackColor="DarkBlue" ForeColor="#80FFFF" />
                    <Columns>
                        <asp:CommandField ButtonType="Button" SelectText="Details" ShowSelectButton="True" />
                        <asp:TemplateField HeaderText="Jobseeker Name">
                            <ItemTemplate>
                                <asp:Literal ID="lblId" runat="server" Text='<%#Eval("JobseekerID") %>'>
                        </asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Role">
                            <ItemTemplate>
                                <asp:Literal ID="lblRole" runat="server" Text='<%#Eval("WorkField") %>'>
                        </asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Qualification">
                            <ItemTemplate>
                                <asp:Literal ID="lblQual" runat="server" Text='<%#Eval("HighestDegree") %>'>
                        </asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Skill Area">
                            <ItemTemplate>
                                <asp:Literal ID="lblSkill" runat="server" >
                        </asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Exp. Years">
                            <ItemTemplate>
                                <asp:Literal ID="lblExp" runat="server" Text='<%#Eval("TechnicalExp") %>'>
                        </asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Location">
                         <ItemTemplate>
                                <asp:Literal ID="lblLoc" runat="server" >
                        </asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Expected Salary">
                            <ItemTemplate>
                                <asp:Literal ID="lblSalary" runat="server" Text='<%#Eval("FullTimeSalary") %>'>
                        </asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

