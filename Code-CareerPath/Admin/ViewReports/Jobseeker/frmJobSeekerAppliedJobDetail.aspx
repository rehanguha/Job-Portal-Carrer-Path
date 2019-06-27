<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmJobSeekerAppliedJobDetail.aspx.cs" Inherits="Admin_ViewReports_Jobseeker_frmJobSeekerAppliedJobDetail" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border="0" cellpadding="0" cellspacing="0" >
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; font-size: 14pt; color: #800080;
                height: 19px">
                Job Seeker Detail</td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="font-size: 12pt; color: #ffffff">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff">
                <strong style="color: #800080">Full Name:<span style="color: #ffcc00"></span></strong></td>
            <td align="left" colspan="2">
                <asp:Literal ID="lblName" runat="server"></asp:Literal><strong><span style="color: #00008b">&nbsp;</span></strong></td>
        </tr>
        <tr style="font-weight: bold; font-size: 12pt; color: #00008b">
            <td align="left" colspan="1" style="font-weight: bold; font-size: 12pt; 
                color: #800080; height: 19px">
                Date Of Birth:<span style="color: #ffcc00"></span></td>
            <td align="left" colspan="2" style="font-weight: normal">
                <asp:Literal ID="lblDOb" runat="server"></asp:Literal></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-weight: bold; font-size: 12pt; 
                color: #800080">
                Country:<span style="color: #ffcc00"></span></td>
            <td align="left" colspan="2">
                <span>
                    <asp:Literal ID="lblCountry" runat="server"></asp:Literal></span></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt;  color: #ffffff;
                height: 24px">
                <span style="color: #800080; font-weight: bold;">State:</span></td>
            <td align="left" colspan="2" style="height: 24px">
                <asp:Literal ID="lblState" runat="server"></asp:Literal></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-weight: bold; font-size: 12pt; 
                color: #800080">
                City:</td>
            <td align="left" colspan="2">
                <asp:Literal ID="lblCity" runat="server"></asp:Literal></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt;  color: #ffffff">
                <strong style="font-weight: bold; font-size: 12pt; color: #800080">Local Address:</strong></td>
            <td align="left" colspan="2">
                <asp:Literal ID="lblAddress" runat="server"></asp:Literal></td>
        </tr>
        <tr style="font-weight: bold; font-size: 12pt">
            <td align="left" colspan="1" style="font-weight: bold; font-size: 12pt; 
                color: #800080">
                Pin Code:</td>
            <td align="left" colspan="2" style="font-weight: normal">
                <asp:Literal ID="lblPin" runat="server"></asp:Literal></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-weight: bold; font-size: 12pt; 
                color: #800080">
                Mobile No.:</td>
            <td align="left" colspan="2">
                <asp:Literal ID="lblMobile" runat="server"></asp:Literal></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-weight: bold; font-size: 12pt; 
                color: #800080">
                Email Id:<span style="color: #ffcc00"></span></td>
            <td align="left" colspan="2">
                <span>
                    <asp:Literal ID="lblEmail" runat="server"></asp:Literal></span></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="3">
                <asp:LinkButton ID="lnkFullInfo" runat="server" Font-Bold="True" ForeColor="OrangeRed"
                    OnClick="lnkFullInfo_Click">Show Full Info About Jobseeker</asp:LinkButton>&nbsp;</td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="3" style="font-weight: bold; font-size: 14pt; color: #800080;
                background-color: #cccccc">
                JobSeeker Applied Jobs Detail</td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="3" style="font-size: 12pt; color: #ffffff; height: 19px">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="Purple"
                    Width="458px"></asp:Label></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="3">
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                EmptyDataText="No JobSeeker Found" Font-Size="Small" OnPageIndexChanging="GridView1_PageIndexChanging"
                                PageSize="5" Width="100%">
                                <EmptyDataRowStyle Font-Bold="True" ForeColor="Red" />
                                <HeaderStyle BackColor="Purple" ForeColor="#E3C7DA" />
                                <Columns>
                                    <asp:TemplateField HeaderText="Job Id">
                                        <ItemTemplate>
                                            <asp:Literal ID="lblId" runat="server" Text='<%#Eval("JobID") %>'>
                        </asp:Literal>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Job Category">
                                        <ItemTemplate>
                                            <asp:Literal ID="lblCategory" runat="server" Text='<%#Eval("JobCategory") %>'>
                        </asp:Literal>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Skills Required">
                                        <ItemTemplate>
                                            <asp:Literal ID="lblSkill" runat="server" Text='<%#Eval("SkillsRequired") %>'>
                        </asp:Literal>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Role">
                                        <ItemTemplate>
                                            <asp:Literal ID="lblRole" runat="server" Text='<%#Eval("Role") %>'>
                        </asp:Literal>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Min.Qualification">
                                        <ItemTemplate>
                                            <asp:Literal ID="lblQual" runat="server" Text='<%#Eval("MinimumQualification") %>'>
                        </asp:Literal>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Max. Age">
                                        <ItemTemplate>
                                            <asp:Literal ID="lblAge" runat="server" Text='<%#Eval("MaximumAge") %>'>
                        </asp:Literal>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Exp. Years">
                                        <ItemTemplate>
                                            <asp:Literal ID="lblExp" runat="server" Text='<%#Eval("ExperienceYears") %>'>
                        </asp:Literal>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Expected Salary">
                                        <ItemTemplate>
                                            <asp:Literal ID="lblSalary" runat="server" Text='<%#Eval("ExpectedSalary") %>'>
                        </asp:Literal>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Location">
                                        <ItemTemplate>
                                            <asp:Literal ID="lblLoc" runat="server" Text='<%#Eval("JobLocation") %>'>
                        </asp:Literal>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Opening Date">
                                        <ItemTemplate>
                                            <asp:Literal ID="lblopdate" runat="server" Text='<%#Eval("JobOpeningDate") %>'>
                        </asp:Literal>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Closing Date">
                                        <ItemTemplate>
                                            <asp:Literal ID="lblclosedate" runat="server" Text='<%#Eval("JobClosingDate") %>'>
                        </asp:Literal>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                              
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

