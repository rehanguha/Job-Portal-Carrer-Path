<%@ Page Language="C#" MasterPageFile="~/HomeMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmFeedback.aspx.cs" Inherits="frmFeedback" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <table align="center" style="background-image:url(Images/img4.jpg); width: 446px; height: 333px;">
        <tr>
            <td align="left" colspan="2" style="font-weight: bolder; font-size: 8pt; font-family: Verdana;
                text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td  colspan="2" align="center">
                <strong><span style="font-size: 16pt; color: red; font-family: Verdana">FeedBack</span></strong></td>
        </tr>
        <tr>
            <td align="left" style="font-weight: bolder; font-size: 8pt; width: 100px; font-family: Verdana">
                <span style="color: white">
                User Name:</span></td>
            <td align="left" style="width: 100px">
                <asp:TextBox ID="txtActNo" runat="server" Width="201px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" style="font-weight: bolder; font-size: 8pt; width: 100px; font-family: Verdana">
                <span style="color: #ffffff">
                Email Id:</span></td>
            <td align="left" style="width: 100px">
                <asp:TextBox ID="txtMail" runat="server" MaxLength="50" Width="201px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" style="font-weight: bolder; font-size: 8pt; width: 100px; font-family: Verdana">
                <span style="color: #ffffff">
                Feedback:</span></td>
            <td align="left" style="width: 100px">
                <asp:TextBox ID="txtMsg" runat="server" Height="69px" MaxLength="200" TextMode="MultiLine"
                    Width="201px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td align="right" colspan="2" style="text-align: right">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                    Text="Submit" /></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Width="297px" ForeColor="White"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

