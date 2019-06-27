<%@ Page Language="C#" MasterPageFile="~/JobSeeker/MasterPage.master" AutoEventWireup="true" CodeFile="frmJobSeekerJobDetails.aspx.cs" Inherits="JobSeeker_Registration_frmJobSeekerJobDetails" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager id="ScriptManager1" runat="server">
    </asp:ScriptManager>
    &nbsp;
    <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 424px">
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
                &nbsp; &nbsp; &nbsp;&nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; width: 144px;">
                <strong style="font-weight: bold; color: #006600">
                Job Category:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; width: 9px;">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="2">
                <asp:DropDownList ID="ddlJobType" runat="server" Width="122px" ValidationGroup="g1">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlJobType"
                    ErrorMessage="*" ValidationGroup="g1" InitialValue="---Select---">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4">
                &nbsp; &nbsp;&nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4" style="font-size: 14pt; color: #006600; text-decoration: underline; text-align: left;">
                <strong>
                Job Location</strong></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; text-align: center; width: 144px;">
                <strong><span style="font-size: 14pt; font-weight: bold; color: #006600;">First Choice
                    <span style="color: #ff3333">*</span></span></strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff;
                text-align: center; width: 9px;">
            </td>
            <td align="left" colspan="2" style="font-size: 14pt; text-align: center">
                <span style="color: #ffffff"><strong style="font-weight: bold; color: #006600">Second Choice</strong></span></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; width: 144px;">
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td style="width: 100px" align="left">
                            <strong style="font-weight: bold; color: #006600">Country:<br />
                                State:<br />
                                City:</strong></td>
                        <td style="width: 100px">
                            <asp:UpdatePanel id="UpdatePanel1" runat="server" UpdateMode="Conditional"><contenttemplate>
<asp:DropDownList id="ddlCountry1" runat="server" Width="122px" __designer:wfdid="w206" AutoPostBack="True" OnSelectedIndexChanged="ddlCountry1_SelectedIndexChanged"></asp:DropDownList> <SPAN style="COLOR: #ffcc33"></SPAN><asp:DropDownList id="ddlState1" runat="server" Width="122px" __designer:wfdid="w207" AutoPostBack="True" OnSelectedIndexChanged="ddlState1_SelectedIndexChanged"></asp:DropDownList> <asp:DropDownList id="ddlCity1" runat="server" Width="122px" __designer:wfdid="w208">
                            </asp:DropDownList>&nbsp;<BR /> 
</contenttemplate>
                            </asp:UpdatePanel><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                                ControlToValidate="ddlCountry1" ErrorMessage="RequiredFieldValidator" InitialValue="---Select---"
                                Style="position: relative">*</asp:RequiredFieldValidator></td>
                    </tr>
                </table>
            </td>
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; width: 9px;">
                <span style="color: #ff0000; font-weight: bold;"></span></td>
            <td align="left" colspan="2" style="font-size: 12pt; color: #ffffff">
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td style="width: 100px">
                            <strong style="font-weight: bold; color: #006600">Country:<br />
                                State:<br />
                                City:</strong></td>
                        <td style="width: 100px">
                          <asp:UpdatePanel id="UpdatePanel2" runat="server" UpdateMode="Conditional"><contenttemplate>
<asp:DropDownList id="ddlCountry2" runat="server" __designer:dtid="4503599627370557" Width="122px" __designer:wfdid="w188" AutoPostBack="True" OnSelectedIndexChanged="ddlCountry2_SelectedIndexChanged"></asp:DropDownList> <asp:DropDownList id="ddlState2" runat="server" __designer:dtid="4503599627370562" Width="122px" __designer:wfdid="w189" AutoPostBack="True" OnSelectedIndexChanged="ddlState2_SelectedIndexChanged"></asp:DropDownList> <asp:DropDownList id="ddlCity2" runat="server" __designer:dtid="4503599627370567" Width="122px" __designer:wfdid="w190">
                            </asp:DropDownList> 
</contenttemplate>
                            </asp:UpdatePanel></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4" style="font-size: 12pt; color: #ffffff">
                <asp:CheckBox ID="chkWillingRelocate" runat="server" Text="Willing To Relocate" Font-Bold="True" ForeColor="#006600" /></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4" style="font-size: 12pt; color: #ffffff">
                &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:CheckBox ID="chktelecommute" runat="server" Text="Willing To Telecommute" Font-Bold="True" ForeColor="#006600" /></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; width: 144px;">
                <strong style="font-weight: bold; color: #006600">
                Willing To Travel Upto:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; width: 9px;">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="3" style="font-size: 12pt; color: #ffffff">
                <asp:DropDownList ID="ddlTravelWill" runat="server" Width="124px" >
                <asp:ListItem Value="---select---">---select---</asp:ListItem>
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
                    ErrorMessage="*" ValidationGroup="g1" InitialValue="---select---">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="5">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="5" style="font-size: 14pt; color: #006600; text-decoration: underline; font-weight: bold; text-align: left;">
                Compansation Details</td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="5">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; width: 144px;">
                <strong style="font-weight: bold; color: #006600">
                Salary as Full-Time-Employee:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; width: 9px;">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="3" style="font-size: 12pt; color: #ffffff">
                <asp:DropDownList ID="ddlFullTimeSalary" runat="server" Width="122px" ValidationGroup="g1">
                     <asp:ListItem Value="---select---">---select---</asp:ListItem>
                    <asp:ListItem>1.20</asp:ListItem>
                    <asp:ListItem>1.44</asp:ListItem>
                    <asp:ListItem>1.80 </asp:ListItem>
                    <asp:ListItem>2.4 </asp:ListItem>
                    <asp:ListItem>96000</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlFullTimeSalary"
                    ErrorMessage="*" ValidationGroup="g1" InitialValue="---select---">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; width: 144px; height: 71px;">
                <strong style="font-weight: bold; color: #006600">
                Hourly Rate for Contact:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; width: 9px; height: 71px;">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="3" style="font-size: 12pt; color: #ffffff; height: 71px;">
                <asp:DropDownList ID="ddlPartTimeSalary" runat="server" Width="122px" ValidationGroup="g1" Height="144px">
                    <asp:ListItem Value="---select---">---select---</asp:ListItem>
                    <asp:ListItem>100 Rs/Hour</asp:ListItem>
                    <asp:ListItem>150 Rs/Hour</asp:ListItem>
                    <asp:ListItem>200 Rs/Hour</asp:ListItem>
                    <asp:ListItem>300 Rs/Hour</asp:ListItem>
                    <asp:ListItem>400 Rs/Hour</asp:ListItem>
                    <asp:ListItem>500 Rs/Hour</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlPartTimeSalary"
                    ErrorMessage="*" ValidationGroup="g1" InitialValue="---select---">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; width: 144px;">
                <strong style="font-weight: normal; color: #006600"><strong>
                Type Of Employment:</strong><br />
                (You must Specify atleast One)</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; width: 9px;">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="3" style="font-size: 12pt; color: #006600; font-weight: normal;">
                <asp:ListBox ID="lstEmploymentType" runat="server" Height="69px" Width="183px" ValidationGroup="g1" SelectionMode="Multiple">
                    <asp:ListItem Value="---select---">---select---</asp:ListItem>
                    <asp:ListItem>Full-Time</asp:ListItem>
                    <asp:ListItem>Contract-Corp-to-Corp</asp:ListItem>
                    <asp:ListItem>Contract-Independent</asp:ListItem>
                    <asp:ListItem>Contract-W2</asp:ListItem>
                    <asp:ListItem>ContractToHire-Corp-to-Corp</asp:ListItem>
                    <asp:ListItem>ContractToHire-Independent</asp:ListItem>
                </asp:ListBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="lstEmploymentType"
                    ErrorMessage="*" ValidationGroup="g1" InitialValue="---select---">*</asp:RequiredFieldValidator><br />
                (Max Three Items Can Select)</td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4" style="font-size: 12pt; color: #ffffff">
                <asp:Button ID="btnNext" runat="server" Text="Next" Width="56px" OnClick="btnNext_Click" ValidationGroup="g1" />
                </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4" style="font-size: 12pt; color: #ffffff">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="13pt" Width="312px" ForeColor="#C000C0"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

