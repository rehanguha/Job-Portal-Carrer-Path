<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmModifyJobseekerJobDetails.aspx.cs" Inherits="Admin_ViewReports_Jobseeker_frmModifyJobseekerJobDetails" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager id="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 438px">
        <tr style="font-size: 12pt">
            <td align="center" colspan="4" style="height: 19px">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4">
                <span style="color: #ffffff"><strong style="font-weight: bold; color: #ff0000">* Fields Are Mandatory</strong></span></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4" style="font-size: 14pt; color: #800080; text-decoration: underline; font-weight: bold;">
                General Information</td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="4" style="font-size: 12pt; color: #ffffff">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; width: 119px;">
                <strong style="font-weight: bold; color: #800080">Job Category:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 6px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="2">
                <asp:DropDownList ID="ddlJobType" runat="server" ValidationGroup="g1" Width="122px">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlJobType"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-weight: bold; font-size: 14pt">
            <td align="center" colspan="4">
                <span style="color: #ffffff">&nbsp; &nbsp; </span>
            </td>
        </tr>
        <tr style="font-weight: bold; font-size: 12pt; color: #ffffff">
            <td align="center" colspan="4" style="font-size: 14pt; color: #800080; text-decoration: underline; font-weight: bold;">
                Job Location</td>
        </tr>
        <tr style="font-weight: bold; font-size: 12pt">
            <td align="center" colspan="4">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-weight: bold; font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; text-align: center; width: 119px;">
                <span style="font-weight: bold; color: #800080; font-size: 14pt;">First Choice</span></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 6px; color: #ffffff;
                text-align: center">
            </td>
            <td align="left" colspan="2" style="font-size: 14pt; text-align: center">
                <span style="color: #800080; font-weight: bold;">Second Choice</span></td>
        </tr>
        <tr style="font-size: 12pt; color: #ffcc33">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; width: 119px;">
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td align="left" style="width: 100px">
                            <strong style="font-weight: bold; color: #800080">Country:<br />
                                State:<br />
                                City:</strong></td>
                        <td style="width: 100px">
                            <asp:UpdatePanel id="UpdatePanel1" runat="server" UpdateMode="Conditional">
                                <contenttemplate>
<asp:DropDownList id="ddlCountry1" runat="server" Width="122px" AutoPostBack="True" OnSelectedIndexChanged="ddlCountry1_SelectedIndexChanged"></asp:DropDownList> <SPAN style="COLOR: #ffcc33"></SPAN><asp:DropDownList id="ddlState1" runat="server" Width="122px" AutoPostBack="True" OnSelectedIndexChanged="ddlState1_SelectedIndexChanged"></asp:DropDownList><STRONG> </STRONG><asp:DropDownList id="ddlCity1" runat="server" Width="122px">
                            </asp:DropDownList><STRONG> </STRONG>
</contenttemplate>
                            </asp:UpdatePanel></td>
                    </tr>
                </table>
            </td>
            <td align="left" colspan="1" style="font-weight: bold; font-size: 12pt; width: 6px;
                color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="2" style="font-size: 12pt; color: #ffffff">
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td style="font-weight: bold; color: #800080;">
                            Country:<br />
                            <strong>State:<br />
                                City:</strong></td>
                        <td style="width: 100px">
                            <asp:UpdatePanel id="UpdatePanel2" runat="server" UpdateMode="Conditional">
                                <contenttemplate>
<asp:DropDownList id="ddlCountry2" runat="server" Width="122px" AutoPostBack="True" OnSelectedIndexChanged="ddlCountry2_SelectedIndexChanged"></asp:DropDownList> <asp:DropDownList id="ddlState2" runat="server" Width="122px" AutoPostBack="True" OnSelectedIndexChanged="ddlState2_SelectedIndexChanged"></asp:DropDownList> <asp:DropDownList id="ddlCity2" runat="server" Width="122px">
                            </asp:DropDownList> 
</contenttemplate>
                            </asp:UpdatePanel></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4" style="font-size: 12pt; color: #ffffff">
                <asp:CheckBox ID="chkWillingRelocate" runat="server" Font-Bold="True" Text="Willing To Relocate" ForeColor="Purple" /></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4" style="font-size: 12pt; color: #ffffff">
                &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:CheckBox ID="chktelecommute" runat="server" Font-Bold="True" Text="Willing To Telecommute" ForeColor="Purple" /></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; width: 119px;">
                <strong style="font-weight: bold; color: #800080">Willing To Travel Upto:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 6px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="3" style="font-size: 12pt; color: #ffffff">
                <asp:DropDownList ID="ddlTravelWill" runat="server" Width="124px" ValidationGroup="g1">
                    <asp:ListItem>0%</asp:ListItem>
                    <asp:ListItem>10%</asp:ListItem>
                    <asp:ListItem>20%</asp:ListItem>
                    <asp:ListItem>30%</asp:ListItem>
                    <asp:ListItem>40%</asp:ListItem>
                    <asp:ListItem>50%</asp:ListItem>
                    <asp:ListItem>60%</asp:ListItem>
                    <asp:ListItem>70%</asp:ListItem>
                    <asp:ListItem>80%</asp:ListItem>
                    <asp:ListItem>90%</asp:ListItem>
                    <asp:ListItem>100%</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlTravelWill"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="5">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="5" style="font-size: 14pt; color: #800080; text-decoration: underline; font-weight: bold;">
                Compensation Details</td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="5">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; width: 119px;">
                <strong style="font-weight: bold; color: #800080">Salary as Full-Time-Employee:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 6px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="3" style="font-size: 12pt; color: #ffffff">
                <asp:DropDownList ID="ddlFullTimeSalary" runat="server" ValidationGroup="g1" Width="122px">
                    <asp:ListItem>1.20 Lakh/Year</asp:ListItem>
                    <asp:ListItem>1.44 Lakh/Year</asp:ListItem>
                    <asp:ListItem>1.80 Lakh/Year</asp:ListItem>
                    <asp:ListItem>2.4 Lakh/Year</asp:ListItem>
                    <asp:ListItem>96000 Thousand/Year</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlFullTimeSalary"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; width: 119px;">
                <strong style="font-weight: bold; color: #800080">Hourly Rate for Contact:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 6px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="3" style="font-size: 12pt; color: #ffffff">
                <asp:DropDownList ID="ddlPartTimeSalary" runat="server" ValidationGroup="g1" Width="122px">
                    <asp:ListItem>100 Rs/Hour</asp:ListItem>
                    <asp:ListItem>150 Rs/Hour</asp:ListItem>
                    <asp:ListItem>200 Rs/Hour</asp:ListItem>
                    <asp:ListItem>300 Rs/Hour</asp:ListItem>
                    <asp:ListItem>400 Rs/Hour</asp:ListItem>
                    <asp:ListItem>500 Rs/Hour</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlPartTimeSalary"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; width: 119px;">
                <strong style="font-weight: bold; color: #800080">Type Of Employment:<br />
                    (You must Specify atleast One)</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 6px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="3" style="font-size: 12pt; color: #ffffff">
                <asp:ListBox ID="lstEmploymentType" runat="server" Height="69px" ValidationGroup="g1"
                    Width="183px" SelectionMode="Multiple">
                    <asp:ListItem>Full time</asp:ListItem>
                    <asp:ListItem>Contract- Corp-to-Corp</asp:ListItem>
                    <asp:ListItem>Contract- Independent</asp:ListItem>
                    <asp:ListItem>Contract- W2</asp:ListItem>
                    <asp:ListItem>Contract to Hire- Corp-to-Corp</asp:ListItem>
                    <asp:ListItem>Contract to Hire- Independent</asp:ListItem>
                </asp:ListBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="lstEmploymentType"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4" style="font-size: 12pt; color: #ffffff">
                <asp:Button ID="btnModify" runat="server" Font-Bold="True" OnClick="btnModify_Click"
                    Text="Modify" ValidationGroup="g1" Width="82px" />
                <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back" /></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4" style="font-size: 12pt; color: #ffffff">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="13pt" Width="312px" ForeColor="#C000C0"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

