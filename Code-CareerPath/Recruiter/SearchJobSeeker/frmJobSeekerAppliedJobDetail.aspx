<%@ Page Language="C#" MasterPageFile="~/Recruiter/RecruiterMasterPage.master" AutoEventWireup="true" CodeFile="frmJobSeekerAppliedJobDetail.aspx.cs" Inherits="Recruiter_SearchJobSeeker_frmJobSeekerAppliedJobDetail" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 294px">
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; font-size: 14pt; color: darkblue;
                height: 19px">
                Job Seeker Detail</td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="font-size: 12pt; color: #ffffff">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 176px; color: #ffffff">
                <strong style="color: darkblue">Full Name:<span style="color: #ffcc00"></span></strong></td>
            <td align="left" colspan="2">
                <asp:Literal ID="lblName" runat="server"></asp:Literal><strong><span style="color: #00008b">&nbsp;</span></strong></td>
        </tr>
        <tr style="font-weight: bold; font-size: 12pt; color: #00008b">
            <td align="left" colspan="1" style="font-weight: bold; font-size: 12pt; width: 176px;
                color: darkblue; height: 19px">
                Date Of Birth:<span style="color: #ffcc00"></span></td>
            <td align="left" colspan="2" style="font-weight: normal">
                <asp:Literal ID="lblDOb" runat="server"></asp:Literal></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-weight: bold; font-size: 12pt; width: 176px;
                color: darkblue">
                Country:<span style="color: #ffcc00"></span></td>
            <td align="left" colspan="2">
                <span>
                    <asp:Literal ID="lblCountry" runat="server"></asp:Literal></span></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 176px; color: #ffffff;
                height: 24px">
                <span style="color: darkblue">State:</span></td>
            <td align="left" colspan="2" style="height: 24px">
                <asp:Literal ID="lblState" runat="server"></asp:Literal></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-weight: bold; font-size: 12pt; width: 176px;
                color: darkblue">
                City:</td>
            <td align="left" colspan="2">
                <asp:Literal ID="lblCity" runat="server"></asp:Literal></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 176px; color: #ffffff">
                <strong style="font-weight: bold; font-size: 12pt; color: darkblue">Local Address:</strong></td>
            <td align="left" colspan="2">
                <asp:Literal ID="lblAddress" runat="server"></asp:Literal></td>
        </tr>
        <tr style="font-weight: bold; font-size: 12pt">
            <td align="left" colspan="1" style="font-weight: bold; font-size: 12pt; width: 176px;
                color: darkblue">
                Pin Code:</td>
            <td align="left" colspan="2" style="font-weight: normal">
                <asp:Literal ID="lblPin" runat="server"></asp:Literal></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-weight: bold; font-size: 12pt; width: 176px;
                color: darkblue">
                Mobile No.:</td>
            <td align="left" colspan="2">
                <asp:Literal ID="lblMobile" runat="server"></asp:Literal></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-weight: bold; font-size: 12pt; width: 176px;
                color: darkblue">
                Email Id:<span style="color: #ffcc00"></span></td>
            <td align="left" colspan="2">
                <span>
                    <asp:Label ID="lblEmail" runat="server"></asp:Label></span></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="3">
                <asp:LinkButton ID="lnkFullInfo" runat="server" Font-Bold="True" ForeColor="OrangeRed"
                    OnClick="lnkFullInfo_Click">Show Full Info About Jobseeker</asp:LinkButton>&nbsp;</td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="3" style="font-weight: bold; font-size: 14pt; color: darkblue;
                background-color: #cccccc">
                JobSeeker Applied Jobs Detail</td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="3" style="font-size: 12pt; color: #ffffff; height: 19px">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="DarkBlue"
                    Width="458px"></asp:Label></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="3">
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                EmptyDataText="No JobSeeker Found" Font-Size="Small" OnPageIndexChanging="GridView1_PageIndexChanging"
                                PageSize="5" Width="761px" OnRowCommand="GridView1_RowCommand">
                                <EmptyDataRowStyle Font-Bold="True" ForeColor="Red" />
                                <HeaderStyle BackColor="DarkBlue" ForeColor="#80FFFF" />
                                <Columns>
                                    <asp:TemplateField HeaderText="Job Type">
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
                                    
                               <asp:TemplateField HeaderText="Send Email !">
                                <ItemTemplate>
                                <asp:Button ID="btnMail" CommandName="SendMail"   Text="Send Mail !"  runat="server" />
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

