<%@ Page Language="C#" MasterPageFile="~/JobSeeker/JobSeekerMasterPage.master" AutoEventWireup="true" CodeFile="frmModifyJobseekerJobDetails.aspx.cs" Inherits="JobSeeker_Modification_frmModifyJobseekerJobDetails" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager id="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <br />
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="13pt" Width="312px" ForeColor="#C000C0" style="position: relative"></asp:Label>
    <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 458px">
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
            <td align="center" colspan="4" style="font-size: 14pt; color: #006600; text-decoration: underline; font-weight: bold; text-align: left;">
                General Information</td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="4" style="font-size: 12pt; color: #ffffff">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff">
                <strong style="font-weight: bold; color: #006600">Job Category:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 23px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="2">
                <asp:DropDownList ID="ddlJobType" runat="server" ValidationGroup="g1" Width="122px">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlJobType"
                    ErrorMessage="*" ValidationGroup="g1" InitialValue="---Select---">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-weight: bold; font-size: 14pt">
            <td align="center" colspan="4">
                <span style="color: #ffffff">&nbsp; &nbsp; </span>
            </td>
        </tr>
        <tr style="font-weight: bold; font-size: 12pt; color: #ffffff">
            <td align="center" colspan="4" style="font-size: 14pt; color: #006600; text-decoration: underline; font-weight: bold; text-align: left;">
                Job Location</td>
        </tr>
        <tr style="font-weight: bold; font-size: 12pt">
            <td align="center" colspan="4">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-weight: bold; font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; text-align: center; height: 20px;">
                <span style="font-weight: bold; color: #006600; font-size: 14pt;">First Choice</span></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 23px; color: #ffffff;
                text-align: center; height: 20px;">
            </td>
            <td align="left" colspan="2" style="font-size: 14pt; text-align: center; height: 20px;">
                <span style="color: #006600; font-weight: bold;">Second Choice</span></td>
        </tr>
        <tr style="font-size: 12pt; color: #ffcc33">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff">
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td align="left" style="width: 100px">
                            <strong style="font-weight: bold; color: #006600">Country:<br />
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
            <td align="left" colspan="1" style="font-weight: bold; font-size: 12pt; width: 23px;
                color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="2" style="font-size: 12pt; color: #ffffff">
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td style="font-weight: bold; color: #006600;">
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
            <td align="center" colspan="4" style="font-size: 12pt; color: #ffffff; text-align: left;">
                <asp:CheckBox ID="chkWillingRelocate" runat="server" Font-Bold="True" Text="Willing To Relocate" ForeColor="#006600" />&nbsp; &nbsp;<asp:CheckBox ID="chktelecommute" runat="server" Font-Bold="True" Text="Willing To Telecommute" ForeColor="#006600" /></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4" style="font-size: 12pt; color: #ffffff">
                &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff">
                <strong style="font-weight: bold; color: #006600">Willing To Travel Upto:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 23px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="3" style="font-size: 12pt; color: #ffffff">
                <asp:DropDownList ID="ddlTravelWill" runat="server" Width="124px" ValidationGroup="g1">
               <asp:ListItem Value=" ---Select--- ">---Select--- </asp:ListItem>
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
                    ErrorMessage="*" ValidationGroup="g1" InitialValue="---Select--- ">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="5">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="5" style="font-size: 14pt; color: #006600; text-decoration: underline; font-weight: bold; text-align: left;">
                Compensation Details</td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="5">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff">
                <strong style="font-weight: bold; color: #006600">Salary as Full-Time-Employee:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 23px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="3" style="font-size: 12pt; color: #ffffff">
                <asp:DropDownList ID="ddlFullTimeSalary" runat="server" ValidationGroup="g1" Width="122px">
                <asp:ListItem Value=" ---Select--- ">---Select--- </asp:ListItem>
                    <asp:ListItem>1.20 Lakh/Year</asp:ListItem>
                    <asp:ListItem>1.44 Lakh/Year</asp:ListItem>
                    <asp:ListItem>1.80 Lakh/Year</asp:ListItem>
                    <asp:ListItem>2.4 Lakh/Year</asp:ListItem>
                    <asp:ListItem>96000 Thousand/Year</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlFullTimeSalary"
                    ErrorMessage="*" ValidationGroup="g1" InitialValue="---Select---">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff">
            </td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 23px; color: #ffffff">
            </td>
            <td align="left" colspan="3" style="font-size: 12pt; color: #ffffff">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff">
                <strong style="font-weight: bold; color: #006600">Hourly Rate for Contact:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 23px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="3" style="font-size: 12pt; color: #ffffff">
                <asp:DropDownList ID="ddlPartTimeSalary" runat="server" ValidationGroup="g1" Width="122px">
                    <asp:ListItem Value=" ---Select--- ">---Select--- </asp:ListItem>
                    <asp:ListItem>100 Rs/Hour</asp:ListItem>
                    <asp:ListItem>150 Rs/Hour</asp:ListItem>
                    <asp:ListItem>200 Rs/Hour</asp:ListItem>
                    <asp:ListItem>300 Rs/Hour</asp:ListItem>
                    <asp:ListItem>400 Rs/Hour</asp:ListItem>
                    <asp:ListItem>500 Rs/Hour</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlPartTimeSalary"
                    ErrorMessage="*" ValidationGroup="g1" InitialValue="---Select---"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff">
            </td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 23px; color: #ffffff">
            </td>
            <td align="left" colspan="3" style="font-size: 12pt; color: #ffffff">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff">
                <strong style="font-weight: bold; color: #006600">Type of Employment:<br />
                    (You Must Select Minimum Three)</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; width: 23px; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="3" style="font-size: 12pt; color: #ffffff">
                <asp:ListBox ID="lstEmploymentType" runat="server" Height="69px" ValidationGroup="g1"
                    Width="183px" SelectionMode="Multiple">
                    <asp:ListItem Value=" ---Select--- ">---Select--- </asp:ListItem>
                    <asp:ListItem>Full time</asp:ListItem>
                    <asp:ListItem>Contract- Corp-to-Corp</asp:ListItem>
                    <asp:ListItem>Contract- Independent</asp:ListItem>
                    <asp:ListItem>Contract- W2</asp:ListItem>
                    <asp:ListItem>Contract to Hire- Corp-to-Corp</asp:ListItem>
                    <asp:ListItem>Contract to Hire- Independent</asp:ListItem>
                </asp:ListBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="lstEmploymentType"
                    ErrorMessage="*" ValidationGroup="g1" InitialValue="---Select---"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4" style="font-size: 12pt; color: #ffffff">
                <asp:Button ID="btnModify" runat="server" Font-Bold="True" OnClick="btnModify_Click"
                    Text="Modify" ValidationGroup="g1" Width="82px" />
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4" style="font-size: 12pt; color: #ffffff">
                </td>
        </tr>
    </table>
</asp:Content>

