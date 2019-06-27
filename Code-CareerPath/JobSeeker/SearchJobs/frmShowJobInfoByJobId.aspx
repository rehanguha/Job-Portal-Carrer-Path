<%@ Page Language="C#" MasterPageFile="~/JobSeeker/JobSeekerMasterPage.master" AutoEventWireup="true" CodeFile="frmShowJobInfoByJobId.aspx.cs" Inherits="JobSeeker_SearchJobs_frmShowJobInfoByJobId" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td align="right">
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" ForeColor="#C000C0"
                        NavigateUrl="~/JobSeeker/SearchJobs/frmRecruiterResponseToJobSeeker.aspx">Back>></asp:HyperLink></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 86px;">
                    <asp:DetailsView ID="DetailsView1" runat="server" Height="64px" Width="331px" BorderColor="#E3E7E3" Font-Bold="True" Font-Size="Medium">
                    </asp:DetailsView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

