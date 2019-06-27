<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmModifyJobSeekerProfile.aspx.cs" Inherits="Admin_ViewReports_Jobseeker_frmModifyJobSeekerProfile" Title="Untitled Page" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager id="ScriptManager1" runat="server">
    </asp:ScriptManager>
    &nbsp;
    <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 328px">
        <tr>
            <td align="center" colspan="4" style="font-size: 12pt; color: #ffffff; height: 19px">
                </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="4" style="font-size: 12pt; color: #ffffff">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="4" style="font-size: 14pt; text-align: center">
                <span style="font-size: 14pt; color: #006600; text-decoration: underline"><strong style="color: #800080">Personal Information</strong></span></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="4" style="font-size: 14pt">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 151px; color: #ffffff; height: 24px;">
                <strong style="color: #800080">First Name:<span style="color: #ffcc00"></span></strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; width: 13px; height: 24px;">
                <span style="color: #ff0000; font-weight: bold;"></span></td>
            <td align="left" colspan="2" style="height: 24px">
                <asp:TextBox ID="txtFName" runat="server" ValidationGroup="g1" Width="189px" ReadOnly="True"></asp:TextBox>
                </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 151px; color: #ffffff;
                height: 24px">
            </td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 13px; color: #ffffff;
                height: 24px">
            </td>
            <td align="left" colspan="2" style="height: 24px">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 151px; color: #ffffff">
                <strong style="color: #800080">Last Name:<span style="color: #ffcc00"></span></strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; width: 13px;">
                <span style="color: #ff0000; font-weight: bold;"></span></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtLName" runat="server" ValidationGroup="g1" Width="189px" ReadOnly="True"></asp:TextBox>
                </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 151px; color: #ffffff">
            </td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 13px; color: #ffffff">
            </td>
            <td align="left" colspan="2">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 151px; color: #ffffff; height: 24px;">
                <strong style="color: #800080">Date of Birth:<span style="color: #ffcc00"></span></strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; width: 13px; height: 24px;">
                <span style="color: #ff0000; font-weight: bold;"></span></td>
            <td align="left" colspan="2" style="height: 24px">
                <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" Style="position: relative"
                    Width="189px"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 151px; color: #ffffff;
                height: 24px">
            </td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 13px; color: #ffffff;
                height: 24px">
            </td>
            <td align="left" colspan="2" style="height: 24px">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 151px; color: #ffffff; height: 79px;">
                <strong style="color: #800080">Address:<span style="color: #ffcc00"></span></strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; height: 79px; width: 13px;">
                <span style="color: #ff0000; font-weight: bold;"></span></td>
            <td align="left" colspan="2" style="height: 79px">
                <asp:TextBox ID="txtAddress" runat="server" Height="71px" TextMode="MultiLine" ValidationGroup="g1"
                    Width="189px" ReadOnly="True"></asp:TextBox>
                </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 151px; color: #ffffff;
                height: 7px">
                <strong><span style="color: #800080">Country:</span></strong><span style="color: #ffcc00"><br />
                    </span>
            </td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 13px; color: #ffffff;
                height: 7px">
            </td>
            <td align="left" colspan="2" style="height: 7px">
                <asp:TextBox ID="txtContri" runat="server" Style="position: relative" Width="203px" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 151px; color: #ffffff;
                height: 7px">
                <strong><span style="color: #800080">State:</span></strong><span style="color: #ffcc00"><br />
                        </span>
            </td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 13px; color: #ffffff;
                height: 7px">
            </td>
            <td align="left" colspan="2" style="height: 7px">
                <asp:TextBox ID="txtState" runat="server" Style="position: relative" ReadOnly="True" Width="207px"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 151px; color: #ffffff;
                height: 7px">
                <strong><span style="color: #800080">City:</span></strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 13px; color: #ffffff;
                height: 7px">
            </td>
            <td align="left" colspan="2" style="height: 7px">
                <asp:TextBox ID="txtCity" runat="server" Style="position: relative" ReadOnly="True" Width="208px"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 151px; color: #ffffff;
                height: 7px">
            </td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 13px; color: #ffffff;
                height: 7px">
            </td>
            <td align="left" colspan="2" style="height: 7px">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 151px; color: #ffffff">
                <strong style="color: #800080">Postal Code:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; width: 13px;">
                <span style="color: #ff0000; font-weight: bold;"></span></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtPinCode" runat="server" ValidationGroup="g1" Width="207px" ReadOnly="True"></asp:TextBox>
                </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 151px; color: #ffffff">
            </td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 13px; color: #ffffff">
            </td>
            <td align="left" colspan="2">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 151px; color: #ffffff; height: 24px;">
                <strong style="color: #800080">Email:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; width: 13px; height: 24px;">
                <span style="color: #ff0000; font-weight: bold;"></span></td>
            <td align="left" colspan="2" style="height: 24px">
                <asp:TextBox ID="txtEmail" runat="server" ValidationGroup="g1" Width="207px" ReadOnly="True"></asp:TextBox>
                </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 151px; color: #ffffff;
                height: 8px">
            </td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 13px; color: #ffffff;
                height: 8px">
            </td>
            <td align="left" colspan="2" style="height: 8px">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 151px; color: #ffffff">
                <strong style="color: #800080">Phone1:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; width: 13px;">
                <span style="color: #ff0000; font-weight: bold;"></span></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtPhone1" runat="server" ValidationGroup="g1" Width="207px" ReadOnly="True"></asp:TextBox>
                </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 151px; color: #ffffff">
            </td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 13px; color: #ffffff">
            </td>
            <td align="left" colspan="2">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 151px; color: #ffffff">
                <strong style="color: #800080">Phone2:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; width: 13px;">
            </td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtPhone2" runat="server" Width="207px" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 151px; color: #ffffff">
            </td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 13px; color: #ffffff">
            </td>
            <td align="left" colspan="2">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 151px; color: #ffffff">
                <strong style="color: #800080">Fax No.:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; width: 13px;">
            </td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtFaxNo" runat="server" Width="207px" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4">
                &nbsp;<asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back" Width="37px" /></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="5" style="font-size: 12pt; color: #ffffff">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#C000C0"
                    Width="484px"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

