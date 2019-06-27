<%@ Page Language="C#" MasterPageFile="~/HomeMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmContactUs.aspx.cs" Inherits="frmContactUs" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%">
        <tr>
            <td class="text1" style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td  style="text-align: center">
                <span style="font-family: Verdana; color:Navy ; font-size: 16pt;"><strong>
                Contact Us</strong></span></td>
        </tr>
     <tr>
         <td style="text-align: center">
             <strong><span style="color: red">(Please Fill The * Value)</span></strong></td>
     </tr>
        <tr>
            <td class="text1" style="height: 4px; text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="vertical-align:top ">
                &nbsp;<table align="center" border="0" cellpadding="3" cellspacing="3" class="greytextbigger" style="width: 85%; height: 180px">
                    <tr>
                        <td align="center" class="greytextbigger" style="font-weight: bolder; font-size: 10pt;
                            width: 509px; font-family: Verdana; text-align: left" valign="top">
                        </td>
                        <td align="center"  style="font-weight: bolder; font-size: 10pt; font-family: Verdana; width: 676px; text-align: center;">
                            25 RajaRam&nbsp;#07-28</td>
                        <td align="center" class="greytextbigger" rowspan="7" style="font-weight: bolder;
                            font-size: 10pt; width: 32px; font-family: Verdana; text-align: center" valign="top">
                <asp:Image ID="img1" runat="server" ImageUrl="~/Images/contact_green_2.jpg" Width="137px" Height="135px" /></td>
                        <td align="center"  style="font-weight: bolder; font-size: 10pt;
                            width: 252px; font-family: Verdana; text-align: left" >
                            Name:</td>
                        <td align="center"  style="font-weight: bolder; font-size: 10pt;
                            font-family: Verdana; text-align: left" >
                            <span style="color: red">*</span></td>
                        <td align="center"  style="font-weight: bolder; font-size: 10pt;
                            font-family: Verdana; text-align: left" >
                            <asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="center"  style="font-weight: bolder; font-size: 10pt;
                            width: 509px; font-family: Verdana; text-align: left" >
                        </td>
                        <td align="center"   style="font-weight: bolder; font-size: 10pt; font-family: Verdana; width: 676px; text-align: center;">
                            Gandhi Nagar, India 065128
                        </td>
                        <td align="center"  style="font-weight: bolder; font-size: 10pt;
                            width: 252px; font-family: Verdana; text-align: left" >
                            Email Id:</td>
                        <td align="center" class="greytextbigger" style="font-weight: bolder; font-size: 10pt;
                            font-family: Verdana; text-align: left" valign="top">
                            <span style="color: #ff0000">*</span></td>
                        <td align="center" class="greytextbigger" style="font-weight: bolder; font-size: 10pt;
                            font-family: Verdana; text-align: left" valign="top">
                            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="center" style="font-weight: bolder; font-size: 10pt; width: 509px; font-family: Verdana;
                            text-align: left" valign="top">
                        </td>
                        <td align="center"  style="font-weight: bolder; font-size: 10pt; font-family: Verdana; width: 676px; text-align: center;">
                            Hp : 90078654</td>
                        <td align="center" style="font-weight: bolder; font-size: 10pt; width: 252px; font-family: Verdana;
                            text-align: left" >
                            Contact No.:</td>
                        <td align="center" style="font-weight: bolder; font-size: 10pt; font-family: Verdana;
                            text-align: left" valign="top">
                            <span style="color: #ff0000">*</span></td>
                        <td align="center" style="font-weight: bolder; font-size: 10pt; font-family: Verdana;
                            text-align: left" valign="top">
                            <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="center" style="font-weight: bolder; font-size: 10pt; width: 509px; font-family: Verdana;
                            text-align: left" valign="top">
                        </td>
                        <td align="center"  style="font-weight: bolder; font-size: 10pt; font-family: Verdana; width: 676px; text-align: center;">
                            Fax : 10002413</td>
                        <td align="center" style="font-weight: bolder; font-size: 10pt; width: 252px; font-family: Verdana;
                            text-align: left">
                            Subject:</td>
                        <td align="center" style="font-weight: bolder; font-size: 10pt; font-family: Verdana;
                            text-align: left" valign="top">
                            <span style="color: #ff0000">*</span></td>
                        <td align="center" style="font-weight: bolder; font-size: 10pt; font-family: Verdana;
                            text-align: left" valign="top">
                            <asp:TextBox ID="txtsubject" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="center" style="font-weight: bolder; font-size: 10pt; width: 509px; font-family: Verdana;
                            text-align: left" valign="top">
                        </td>
                        <td align="center"  style="font-weight: bolder; font-size: 10pt; font-family: Verdana; width: 676px; text-align: center;">
                            Email : &nbsp;<a href="mailto:Contact@CareerPath.com"><span style="font-size: 8pt;
                                color: #800000">Contact@CareerPath.com</span></a> <a href="mailto:Contact@CareerPath.com">
                                    <span style="font-size: 8pt;
                                color: #800000"></span></a>
                        </td>
                        <td align="center" style="font-weight: bolder; font-size: 10pt; width: 252px; font-family: Verdana;
                            text-align: left" >
                            Message:</td>
                        <td align="center" style="font-weight: bolder; font-size: 10pt; font-family: Verdana;
                            text-align: left" valign="top">
                            <span style="color: #ff0000">*</span></td>
                        <td align="center" style="font-weight: bolder; font-size: 10pt; font-family: Verdana;
                            text-align: left" valign="top">
                            <asp:TextBox ID="txtmessage" runat="server" TextMode="Password" Width="148px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="center" style="font-weight: bolder; font-size: 10pt; width: 509px; font-family: Verdana;
                            text-align: left" valign="top">
                        </td>
                        <td align="center" valign="top" style="font-weight: bolder; font-size: 10pt; font-family: Verdana; width: 676px; text-align: left;">
                        </td>
                        <td align="center" colspan="3" style="font-weight: bolder; font-size: 10pt; font-family: Verdana;
                            text-align: center" valign="top">
                            &nbsp; &nbsp; &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td align="center" style="font-weight: bolder; font-size: 10pt; width: 509px; font-family: Verdana;
                            text-align: left" valign="top">
                        </td>
                        <td align="center" valign="top" style="font-weight: bolder; font-size: 10pt; font-family: Verdana; width: 676px; text-align: left;">
                        </td>
                        <td align="center" style="font-weight: bolder; font-size: 10pt; width: 252px; font-family: Verdana;
                            text-align: left" valign="top">
                        </td>
                        <td align="center" style="font-weight: bolder; font-size: 10pt; font-family: Verdana;
                            text-align: left" valign="top">
                        </td>
                        <td align="center" style="font-weight: bolder; font-size: 10pt; font-family: Verdana;
                            text-align: right" valign="top">
                            <asp:Button ID="Button1" runat="server" Text="Submit" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" Width="50px" /></td>
                    </tr>
                    <tr>
                        <td align="center" style="font-weight: bolder; font-size: 10pt; font-family: Verdana"
                            valign="top" colspan="6">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

