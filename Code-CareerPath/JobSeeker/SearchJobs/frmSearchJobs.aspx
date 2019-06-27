<%@ Page Language="C#" MasterPageFile="~/JobSeeker/JobSeekerMasterPage.master" AutoEventWireup="true" CodeFile="frmSearchJobs.aspx.cs" Inherits="JobSeeker_SearchJobs_frmSearchJobs" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table border="1" bordercolor="#003300" bordercolorlight="#669933" cellpadding="0" cellspacing="0" align="left">
        <tr>
            <td style="width: 100px; height: 226px">
                <table cellpadding="0" cellspacing="0">
                    <tr>
                        <td align="left">
                            <asp:LinkButton ID="lnkAllJobs" runat="server" Font-Bold="True" Font-Size="Medium"
                                ForeColor="#E3E7E3" Width="92px" OnClick="lnkAllJobs_Click" BackColor="Green">View All Jobs</asp:LinkButton></td>
                    </tr>
                    <tr>
                       
                    </tr>
                    <tr>
                        <td align="left" >
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:LinkButton ID="lnkCategory" runat="server" Font-Bold="True" Font-Size="Medium"
                               ForeColor="#E3E7E3" Width="184px" OnClick="lnkCategory_Click" BackColor="Green">Job Based on Category</asp:LinkButton></td>
                    </tr>
                    <tr>
                        <td align="left" >
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:LinkButton ID="lnkJob" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#E3E7E3"
                                Width="134px" OnClick="lnkJob_Click" BackColor="Green">Job Based on Role</asp:LinkButton></td>
                    </tr>
                    <tr>
                        <td style="width: 100px" align="left">
                            </td>
                    </tr>
                    <tr>
                        <td colspan="1" align="left">
                            <asp:LinkButton ID="lnkLocation" runat="server" Font-Bold="True" Font-Size="Medium"
                                ForeColor="#E3E7E3" Width="154px" OnClick="lnkLocation_Click" BackColor="Green">Job Based on Location</asp:LinkButton>
                          
                        </td>
                    </tr>
                    <tr>
                        <td colspan="1" align="left">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="1" align="left">
                            <asp:LinkButton ID="lnkAllCondition" runat="server" Font-Bold="True" Font-Size="Medium"
                                ForeColor="#E3E7E3" Width="242px" OnClick="lnkAllCondition_Click" BackColor="Green">Job Based on All Above Condition</asp:LinkButton></td>
                    </tr>
                    <tr>
                        <td colspan="1" align="left">
                            &nbsp;&nbsp;
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

