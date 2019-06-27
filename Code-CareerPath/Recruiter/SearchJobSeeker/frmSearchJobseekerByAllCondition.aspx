<%@ Page Language="C#" MasterPageFile="~/Recruiter/RecruiterMasterPage.master" AutoEventWireup="true" CodeFile="frmSearchJobseekerByAllCondition.aspx.cs" Inherits="Recruiter_SearchJobSeeker_frmSearchJobseekerByAllCondition" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table id="TABLE1" border="0" cellpadding="0" cellspacing="0" language="javascript"
        onclick="return TABLE1_onclick()">
        <tr>
            <td colspan="3" style="height: 19px">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="text-align: right">
                <strong><span>Select Location: </span></strong>
            </td>
            <td align="left" colspan="1" style="color: #000000">
                <asp:DropDownList ID="ddlLocation" runat="server" Width="180px">
                </asp:DropDownList></td>
        </tr>
        <tr style="color: #000000">
            <td align="center" colspan="2" style="text-align: right">
                <strong><span>Select Role:</span></strong></td>
            <td align="left" colspan="1">
                <asp:DropDownList ID="ddlRole" runat="server" Width="180px">
                </asp:DropDownList></td>
        </tr>
        <tr style="color: #000000">
            <td align="center" colspan="2" style="text-align: right">
                <strong><span>Select Qualification:</span></strong></td>
            <td align="left" colspan="1">
                <asp:DropDownList ID="ddlQualification" runat="server" Width="180px">
                </asp:DropDownList></td>
        </tr>
        <tr style="color: #000000">
            <td align="center" colspan="2" style="height: 24px; text-align: right">
                <strong><span>Enter Expected Salary:</span></strong></td>
            <td align="left" colspan="1" style="height: 24px">
                <asp:TextBox ID="txtSalary" runat="server" Width="173px"></asp:TextBox><asp:DropDownList
                    ID="DropDownList1" runat="server" Width="82px">
                    <asp:ListItem>Lakh/Year</asp:ListItem>
                    <asp:ListItem>Thousand/Year</asp:ListItem>
                    <asp:ListItem>Rs/Hour</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td id=" " align="right" colspan="3" style="height: 24px">
                &nbsp;
                <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" />&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 183px">
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
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

