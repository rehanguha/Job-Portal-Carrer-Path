<%@ Page Language="C#" MasterPageFile="~/HomeMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmLoginType.aspx.cs" Inherits="frmLoginType" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="1" cellpadding="0" cellspacing="0" style="height: 226px">
        <tr>
            <td valign="middle">
                <img src="JobSeeker/Images/THREE.JPG" />
                <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" BackColor="Red"
                    Font-Bold="True" ForeColor="White" GroupName="r1" OnCheckedChanged="RadioButton1_CheckedChanged"
                    Text="Job Seeker login" Width="170px" /></td>
            <td valign="middle">
            </td>
            <td valign="middle">
                &nbsp;<img src="JobSeeker/Images/ONE.JPG" />
                <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" BackColor="Red"
                    Font-Bold="True" ForeColor="White" GroupName="r1" OnCheckedChanged="RadioButton2_CheckedChanged"
                    Text="Recruiter Login" Width="130px" /></td>
        </tr>
    </table>
</asp:Content>

