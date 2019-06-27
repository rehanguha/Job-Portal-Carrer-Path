<%@ Page Language="C#" MasterPageFile="~/Recruiter/RecruiterMasterPage.master" AutoEventWireup="true"
    CodeFile="frmSendMail.aspx.cs" Inherits="Recruiter_SearchJobSeeker_frmSendMail"
    Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <table>
            <tr>
                <td style="width: 139px; text-align: left" valign="top">
                    <strong><span style="color: #660066">To</span></strong></td>
                <td style="width: 6px">
                </td>
                <td style="text-align: left; width: 266px;">
                    <asp:Label ID="lblUserName" runat="server" Style="position: relative" Width="79px"></asp:Label></td>
            </tr>
            <tr>
                <td valign="top" style="width: 139px" >
                    <strong><span style="color: #990066">
                    Type Your Message</span></strong></td>
                <td style="width: 6px">
                    </td>
                <td style="width: 266px">
                    <asp:TextBox ID="txtMsg" runat="server" TextMode="MultiLine" Height="150px" Width="347px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 139px" valign="top">
                </td>
                <td style="width: 6px">
                </td>
                <td style="width: 266px">
                    &nbsp;<asp:Button ID="btnSend" runat="server" OnClick="btnSend_Click" Style="position: relative"
                        Text="Send" />
                    <asp:Button ID="Button1" runat="server" PostBackUrl="~/Recruiter/SearchJobSeeker/frmJobSeekerAppliedJobDetail.aspx"
                        Style="position: relative" Text="Back" /></td>
            </tr>
        </table>
    </center>
    <asp:Label ID="lblMsg" runat="server" Style="position: relative"></asp:Label>
</asp:Content>
