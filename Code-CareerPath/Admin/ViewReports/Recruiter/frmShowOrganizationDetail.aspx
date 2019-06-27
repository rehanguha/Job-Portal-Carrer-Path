<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmShowOrganizationDetail.aspx.cs" Inherits="Admin_ViewReports_Recruiter_frmShowOrganizationDetail" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td align="right">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" ForeColor="#C000C0"
                    NavigateUrl="~/Admin/ViewReports/Recruiter/frmRecruiterResponseToJobSeeker.aspx">Back>></asp:HyperLink></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 86px">
                <asp:DetailsView ID="DetailsView1" runat="server" BorderColor="#E3E7E3" Font-Bold="True"
                    Font-Size="Medium" Height="64px" Width="331px">
                </asp:DetailsView>
            </td>
        </tr>
    </table>
</asp:Content>

