<%@ Page Language="C#" MasterPageFile="~/Recruiter/RecruiterMasterPage.master" AutoEventWireup="true" CodeFile="frmSearchJobseekerByExpectedSalary.aspx.cs" Inherits="Recruiter_SearchJobSeeker_frmSearchJobseekerByExpectedSalary" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblMsg" runat="server" ></asp:Label>
    <table id="TABLE1" border="0" cellpadding="0" cellspacing="0" language="javascript"
        onclick="return TABLE1_onclick()">
        <tr>
            <td colspan="2">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="height: 24px">
                <strong>Enter Salary To Search JobSeeker:<asp:TextBox ID="txtSalary" runat="server"
                    Width="111px"></asp:TextBox><asp:DropDownList ID="DropDownList1" runat="server" Width="88px">
                        <asp:ListItem>Lakh/Year</asp:ListItem>
                        <asp:ListItem>Thousand/Year</asp:ListItem>
                        <asp:ListItem>Rs/Hour</asp:ListItem>
                    </asp:DropDownList></strong></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                &nbsp; &nbsp;
                <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search"
                    Width="73px" /></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    EmptyDataText="No JobSeeker Found" OnPageIndexChanging="GridView1_PageIndexChanging"
                    OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanging="GridView1_SelectedIndexChanging"
                    PageSize="5" Width="757px" Font-Size="Small">
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
                                <asp:Literal ID="lblSkill" runat="server">
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
                                <asp:Literal ID="lblLoc" runat="server">
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

