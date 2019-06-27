<%@ Page Language="C#" MasterPageFile="~/Recruiter/RecruiterMasterPage.master" AutoEventWireup="true" CodeFile="frmViewAllJobSeeker.aspx.cs" Inherits="Recruiter_SearchJobSeeker_frmViewAllJobSeeker" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblMsg" runat="server" ></asp:Label>
    <div style="text-align: center">
        <table border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td>
                    &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td align="center" style="height: 24px">
                    <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" /></td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" Width="723px" EmptyDataText="No JobSeeker Found" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" PageSize="5" Font-Size="Small">
                        <EmptyDataRowStyle Font-Bold="True" ForeColor="Red" />
                        <HeaderStyle BackColor="DarkBlue" ForeColor="#80FFFF" />
                        <Columns>
                        <asp:CommandField ShowSelectButton="True" ButtonType="Button" SelectText="Details" />
                        
                        <asp:TemplateField HeaderText="Jobseeker Name">
                        <ItemTemplate>
                        <asp:Literal ID="lblId" Text='<%#Eval("JobseekerID") %>' runat="server">
                        </asp:Literal>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                         <asp:TemplateField HeaderText="Role">
                        <ItemTemplate>
                        <asp:Literal ID="lblRole" Text='<%#Eval("JobTitle") %>' runat="server">
                        </asp:Literal>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                         <asp:TemplateField HeaderText="Qualification">
                        <ItemTemplate>
                        <asp:Literal ID="lblQual" Text='<%#Eval("HighestDegree") %>' runat="server">
                        </asp:Literal>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                          <asp:TemplateField HeaderText="Skill Area">
                        <ItemTemplate>
                        <asp:Literal ID="lblSkill" Text='<%#Eval("WorkField") %>' runat="server">
                        </asp:Literal>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                          <asp:TemplateField HeaderText="Exp. Years">
                        <ItemTemplate>
                        <asp:Literal ID="lblExp" Text='<%#Eval("TechnicalExp") %>' runat="server">
                        </asp:Literal>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                          <asp:TemplateField HeaderText="Location">
                        <ItemTemplate>
                        <asp:Literal ID="lblLoc" Text='<%#Eval("Location1") %>' runat="server">
                        </asp:Literal>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                          <asp:TemplateField HeaderText="Expected Salary">
                        <ItemTemplate>
                        <asp:Literal ID="lblSalary" Text='<%#Eval("FullTimeSalary") %>' runat="server">
                        </asp:Literal>
                        </ItemTemplate>
                        </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

