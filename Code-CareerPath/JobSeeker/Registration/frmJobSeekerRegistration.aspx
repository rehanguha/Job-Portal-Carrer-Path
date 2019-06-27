<%@ Page Language="C#" MasterPageFile="~/JobSeeker/MasterPage.master" AutoEventWireup="true" CodeFile="frmJobSeekerRegistration.aspx.cs" Inherits="JobSeeker_Registration_frmJobSeekerRegistration" Title="Untitled Page" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager id="ScriptManager1" runat="server">
    </asp:ScriptManager>
   <center>
    <asp:Label id="lblMsg" runat="server" ForeColor="#C000C0" Font-Bold="True" Width="316px" Font-Size="13pt"></asp:Label></center>
      <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 602px">
          <tr>
              <td align="center" colspan="3" style="font-size: 12pt; color: #ffffff; height: 19px;">
                  <strong style="font-weight: bold; color: #ff0000">
                  * Fields Are Mandatory</strong></td>
          </tr>
          <tr>
              <td align="center" colspan="3" style="font-weight: bold; color: #ffffff; text-align: center">
                  &nbsp; &nbsp;
              </td>
          </tr>
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; color: #ffffff; text-align: left;">
                <span style="font-size: 14pt; color: #006600; text-decoration: underline; font-weight: bold;">Login Information</span></td>
        </tr>
          <tr>
              <td align="center" colspan="3" style="font-weight: bold; color: #ffffff; text-align: center">
                  &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
              </td>
          </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-size: 12pt; color: #ffffff; height: 24px; width: 151px;">
                <strong style="font-weight: bold; color: #006600">
                User ID:<span style="color: #ffcc00"></span></strong></td>
            <td align="left" style="font-size: 12pt; color: #ffffff; height: 24px">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left">
                <asp:TextBox ID="txtName" runat="server" Width="191px" ValidationGroup="g1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator>
                <asp:LinkButton ID="lnkCheckAvailability" runat="server" Font-Bold="True" ForeColor="#006600"
                    OnClick="lnkCheckAvailability_Click"  >Check Availability</asp:LinkButton>&nbsp;
            </td>
        </tr>
          <tr style="font-size: 12pt">
              <td align="left" style="font-size: 12pt; width: 151px; color: #ffffff; height: 24px">
              </td>
              <td align="left" style="font-size: 12pt; color: #ffffff; height: 24px">
              </td>
              <td align="left">
                  <asp:Label ID="lblExists" runat="server" Style="position: relative" Width="200px"></asp:Label></td>
          </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-size: 12pt; color: #ffffff; width: 151px;">
                <strong style="font-weight: bold; color: #006600">
                Password:<span style="color: #ffcc00"></span></strong></td>
            <td align="left" style="font-size: 12pt; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="191px" ValidationGroup="g1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-size: 12pt; color: #ffffff; width: 151px;">
                <strong style="font-weight: bold; color: #006600">
                Verify Password:<span style="color: #ffcc00"></span></strong></td>
            <td align="left" style="font-size: 12pt; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left">
                <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" Width="191px" ValidationGroup="g1"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword"
                    ControlToValidate="txtConfirm" ErrorMessage="Password Mismatch" Font-Bold="True"
                    ForeColor="" Width="169px" ValidationGroup="g1"></asp:CompareValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-size: 12pt; color: #ffffff; width: 151px; height: 22px;">
                <strong style="font-weight: bold; color: #006600">
                Hint Question:<span style="color: #ffcc00"></span></strong></td>
            <td align="left" style="font-size: 12pt; color: #ffffff; height: 22px;">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" style="height: 22px">
                <asp:DropDownList ID="ddlQuestion" runat="server" Width="199px">
                    <asp:ListItem>What Is Your Pet name</asp:ListItem>
                    <asp:ListItem Value="What Is Your Favorite Pass time">What Is Your Favourite Pass Time</asp:ListItem>
                    <asp:ListItem>what is ur Born Places</asp:ListItem>
                    <asp:ListItem>You crazy about </asp:ListItem>
                    <asp:ListItem>your Father's middle Name</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-size: 12pt; color: #ffffff; width: 151px;">
                <strong style="font-weight: bold; color: #006600">
                Answer:<span style="color: #ffcc00"></span></strong></td>
            <td align="left" style="font-size: 12pt; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left">
                <asp:TextBox ID="txtAnswer" runat="server" Width="189px" ValidationGroup="g1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAnswer"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="3" style="font-size: 12pt; color: #ffffff">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="3" style="font-size: 14pt; text-align: left;">
                <span style="font-size: 14pt; color: #006600; text-decoration: underline; font-weight: bold;">Personal Information</span></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="3" style="font-size: 14pt">
                &nbsp; &nbsp;&nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; width: 151px;">
                <strong style="font-weight: bold; color: #006600">
                First Name:<span style="color: #ffcc00"></span></strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtFName" runat="server" Width="189px" ValidationGroup="g1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtFName"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; width: 151px;">
                <strong style="font-weight: bold; color: #006600">
                Last Name:<span style="color: #ffcc00"></span></strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtLName" runat="server" Width="189px" ValidationGroup="g1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtLName"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; width: 151px; height: 54px;">
                <strong style="font-weight: bold; color: #006600">
                Date Of Birth:<span style="color: #ffcc00"></span></strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; height: 54px;">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="2" style="height: 54px">
                <cc1:GMDatePicker ID="GMDatePicker1" runat="server" CalendarWidth="188px" InitialValueMode="Null" NoneButtonText="Clear" YearDropDownRange="200">
                </cc1:GMDatePicker>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="GMDatePicker1"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; width: 151px;">
                <strong style="font-weight: bold; color: #006600">
                Address:<span style="color: #ffcc00"></span></strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtAddress" runat="server" Width="229px" Height="71px" TextMode="MultiLine" ValidationGroup="g1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtAddress"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
          <tr style="font-size: 12pt">
              <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; width: 151px;">
                  <strong style="font-weight: bold; color: #006600">
                  Country:<br />
                  </strong><span style="color: #ffcc00"><br />
                      <span style="color: #ffffff"><strong style="font-weight: bold; color: #006600">
                State:<br />
                      </strong></span><span style="color: #ffcc00"><br />
                          <span style="color: #ffffff"><strong style="font-weight: bold; color: #006600">
                City:</strong></span></span></span></td>
              <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff">
                  <span style="color: #ff0000; font-weight: bold;">*</span></td>
              <td align="left" colspan="2">
               
                  <asp:UpdatePanel id="UpdatePanel1" runat="server">
                      <contenttemplate>
<BR /><asp:DropDownList id="ddlCountry" runat="server" Width="161px" AutoPostBack="True" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged"></asp:DropDownList><BR /><BR /><asp:DropDownList id="ddlState" runat="server" Width="161px" AutoPostBack="True" OnSelectedIndexChanged="ddlState_SelectedIndexChanged"></asp:DropDownList><BR /><BR /><asp:DropDownList id="ddlCity" runat="server" Width="161px">
                </asp:DropDownList> <asp:RequiredFieldValidator id="RequiredFieldValidator9" runat="server" ForeColor="Gold" ErrorMessage="*" ControlToValidate="ddlCountry" __designer:wfdid="w144"></asp:RequiredFieldValidator> 
</contenttemplate>
                  </asp:UpdatePanel>&nbsp; &nbsp;
              </td>
          </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; width: 151px;">
                <strong style="font-weight: bold; color: #006600">
                Postal Code:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtPinCode" runat="server" Width="207px" ValidationGroup="g1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtPinCode"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; width: 151px;">
                <strong style="font-weight: bold; color: #006600">Email:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtEmail" runat="server" Width="207px" ValidationGroup="g1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; width: 151px;">
                <strong style="font-weight: bold; color: #006600">
                Phone1:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff">
                <span style="color: #ff0000; font-weight: bold;">*</span></td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtPhone1" runat="server" Width="207px" ValidationGroup="g1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtPhone1"
                    ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; width: 151px;">
                <strong style="font-weight: bold; color: #006600">
                Phone2:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff">
            </td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtPhone2" runat="server" Width="207px"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff; width: 151px;">
                <strong style="font-weight: bold; color: #006600">
                Fax No.:</strong></td>
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff">
            </td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtFaxNo" runat="server" Width="207px"></asp:TextBox></td>
        </tr>
          <tr style="font-size: 12pt">
              <td align="center" colspan="4">
                  &nbsp; &nbsp;
              </td>
          </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4">
                <asp:Button ID="btnNext" runat="server" OnClick="btnNext_Click" Text="Next" Width="79px" ValidationGroup="g1" />
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="3" style="font-size: 12pt; color: #ffffff">
                </td>
        </tr>
    </table>
</asp:Content>

