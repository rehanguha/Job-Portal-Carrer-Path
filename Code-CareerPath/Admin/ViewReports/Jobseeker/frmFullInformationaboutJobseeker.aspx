<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmFullInformationaboutJobseeker.aspx.cs" Inherits="Admin_ViewReports_Jobseeker_frmFullInformationaboutJobseeker" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 674px">
        <tr style="font-size: 12pt">
            <td align="center" colspan="2">
                <strong><span style="color: #ffffff"></span></strong>
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="2">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="2" style="font-size: 14pt; color: darkblue; text-decoration: underline">
                <strong style="font-weight: bold; color: #800080">Academic Details</strong></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="1" style="font-size: 12pt; width: 287px; color: #ffffff">
                &nbsp; &nbsp;
            </td>
            <td align="center" colspan="1" style="font-size: 12pt; color: #ffffff">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 287px; color: #ffffff;
                height: 19px">
                <strong style="color: #800080">Highest Degree Atained:</strong>&nbsp;</td>
            <td align="left" colspan="1" style="font-weight: bold">
                <asp:Literal ID="ltlDegree" runat="server"></asp:Literal></td>
        </tr>
        <tr style="font-weight: bold; font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 287px; color: #800080; height: 19px;">
                Specializa<span style="color: darkblue">a</span>tion:</td>
            <td align="left" colspan="1" style="height: 19px">
                <asp:Literal ID="ltlSpecial" runat="server"></asp:Literal></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 287px; color: #ffffff">
                <span style="color: darkblue"><strong style="color: #800080">Year Of Passing:</strong></span></td>
            <td align="left" colspan="1" style="font-weight: bold">
                <asp:Literal ID="ltlPassingyear" runat="server"></asp:Literal></td>
        </tr>
        <tr style="font-size: 12pt; color: #000000">
            <td align="left" colspan="1" style="font-size: 12pt; width: 287px; color: #ffffff;
                height: 19px">
                <span style="color: darkblue"><strong style="color: #800080">Percentage:</strong></span></td>
            <td align="left" colspan="1" style="font-weight: bold; height: 19px">
                <asp:Literal ID="ltlPercentage" runat="server"></asp:Literal></td>
        </tr>
        <tr style="font-size: 12pt; color: #ffcc00">
            <td align="left" colspan="1" style="font-size: 12pt; width: 287px; color: #ffffff;
                height: 19px">
                <strong><span style="color: #800080">University:</span></strong></td>
            <td align="left" colspan="1" style="font-weight: bold; color: #000000">
                <asp:Literal ID="ltlUniversity" runat="server"></asp:Literal></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 287px; color: #ffffff">
                <strong><span style="color: #800080">Country:</span></strong></td>
            <td align="left" colspan="1" style="font-weight: bold">
                <asp:Literal ID="ltlCountry" runat="server"></asp:Literal></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="1" style="font-size: 12pt; width: 287px; color: #ffffff">
                &nbsp; &nbsp;
            </td>
            <td align="center" colspan="1">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="2" style="font-size: 14pt; color: darkblue; text-decoration: underline">
                <strong style="color: #800080">Experience Detail</strong></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="1" style="width: 287px; height: 19px">
                &nbsp; &nbsp;
            </td>
            <td align="center" colspan="1">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 287px; color: #ffffff">
                <strong><span style="color: #800080">Technical Experience:</span></strong></td>
            <td align="left" colspan="1" style="font-weight: bold">
                <asp:Literal ID="ltlExp" runat="server"></asp:Literal></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; width: 287px; color: #ffffff;
                height: 19px">
                <strong><span style="color: #800080">Work Field:</span></strong></td>
            <td align="left" colspan="1" style="font-weight: bold; height: 19px;">
                <asp:Literal ID="ltlWorkfield" runat="server"></asp:Literal></td>
        </tr>
    </table>
    <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 672px">
        <tr style="font-size: 12pt">
            <td align="center" colspan="3">
                &nbsp; &nbsp; &nbsp;&nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="3" style="font-size: 14pt; color: darkblue; text-decoration: underline">
                <strong style="color: #800080">General Information</strong></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="3" style="font-size: 12pt; color: #ffffff">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff">
                <strong style="font-weight: bold; color: #800080">Job Category:</strong></td>
            <td align="left" colspan="2" style="font-weight: bold">
                <asp:Literal ID="ltlJobCategory" runat="server"></asp:Literal>&nbsp;</td>
        </tr>
        <tr style="font-weight: bold; font-size: 14pt">
            <td align="center" colspan="3">
                <span style="color: #ffffff">&nbsp;&nbsp; &nbsp; &nbsp; </span>
            </td>
        </tr>
        <tr style="font-weight: bold; font-size: 12pt; color: #ffffff">
            <td align="center" colspan="3" style="font-weight: bold; font-size: 14pt; color: #800080;
                text-decoration: underline">
                Job Location</td>
        </tr>
        <tr style="font-weight: bold; font-size: 12pt">
            <td align="center" colspan="3">
              
            </td>
        </tr>
        <tr style="font-weight: bold; font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #800080; text-align: center">
                <span style="font-weight: bold; font-size: 14pt; color: #800080">First Choice</span></td>
            <td align="left" colspan="2" style="font-size: 12pt; text-align: center; color: #800080;">
                <span style="font-weight: bold; color: #800080; font-size: 14pt;">Second Choice</span></td>
        </tr>
        <tr style="font-size: 12pt; color: #ffcc33">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff">
                <table border="0" cellpadding="0" cellspacing="0" style="font-weight: bold; width: 342px; color: darkblue">
                    <tr>
                        <td align="left" style="font-weight: bold; width: 100px; color: darkblue">
                            <strong style="color: #800080">Country:
                            </strong>
                        </td>
                        <td style="font-weight: bold; color: black;">
                            <asp:Literal ID="ltlCountry1" runat="server"></asp:Literal></td>
                    </tr>
                    <tr>
                        <td align="left" style="color: #800080" >
                            State:
                        </td>
                        <td style="font-weight: bold; color: #000000" >
                            <asp:Literal ID="ltlState1" runat="server"></asp:Literal></td>
                    </tr>
                    <tr>
                        <td align="left" style="color: #800080" >
                            City:</td>
                        <td style="font-weight: bold; color: #000000" >
                            <asp:Literal ID="ltlCity1" runat="server"></asp:Literal></td>
                    </tr>
                </table>
            </td>
            <td align="left" colspan="2" style="font-size: 12pt; color: #ffffff"><table border="0" cellpadding="0" cellspacing="0" style="font-weight: bold; width: 342px; color: darkblue">
                <tr>
                    <td align="left" style="font-weight: bold; width: 100px; color: darkblue">
                        <strong style="color: #800080">Country: </strong>
                    </td>
                    <td style="font-weight: bold; color: black;">
                        <asp:Literal ID="ltlCountry2" runat="server"></asp:Literal></td>
                </tr>
                <tr>
                    <td align="left" style="color: #800080" >
                        State:
                    </td>
                    <td style="font-weight: bold; color: #000000" >
                        <asp:Literal ID="ltlState2" runat="server"></asp:Literal></td>
                </tr>
                <tr>
                    <td align="left" style="color: #800080" >
                        City:</td>
                    <td style="font-weight: bold; color: #000000" >
                        <asp:Literal ID="ltlCity2" runat="server"></asp:Literal></td>
                </tr>
            </table>
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-weight: bold; font-size: 12pt; color: #800080">
                Willing To Relocate:</td>
            <td align="left" colspan="3" style="font-weight: bold; color: #000000">
                <asp:Literal ID="ltlRelocate" runat="server"></asp:Literal></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-weight: bold; font-size: 12pt; color: #800080">
                Willing To Telecommute:</td>
            <td align="left" colspan="3" style="font-weight: bold; color: #000000">
                <asp:Literal ID="ltlTelecommute" runat="server"></asp:Literal></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #800080; font-weight: bold;">
               Willing To Travel Upto:</td>
            <td align="left" colspan="3" style="color: #000000; font-weight: bold;">
                <asp:Literal ID="ltlTravel" runat="server"></asp:Literal>&nbsp;</td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4" style="font-size: 14pt; color: #800080; text-decoration: underline; font-weight: bold;">
                Compansation Details</td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #800080; font-weight: bold; height: 19px;">
                Salary as Full-Time-Employee:</td>
            <td align="left" colspan="3" style="font-size: 12pt; color: #000000; font-weight: bold; height: 19px;">
                <asp:Literal ID="ltlSalary" runat="server"></asp:Literal></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #800080; font-weight: bold;">
              Hourly Rate for Contact:</td>
            <td align="left" colspan="3" style="font-size: 12pt; color: #000000; font-weight: bold;">
                <asp:Literal ID="ltlSalary1" runat="server"></asp:Literal>&nbsp;</td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" colspan="1" style="font-size: 12pt; color: #ffffff">
                <strong style="font-weight: bold; color: #800080">Type Of Employment:
                    </strong></td>
            <td align="left" colspan="3" style="font-size: 12pt; color: black; font-weight: bold;">
                <asp:Literal ID="ltlEmployment" runat="server"></asp:Literal>&nbsp;</td>
        </tr>
    </table>
    <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 688px">
        <tr style="font-size: 12pt">
            <td align="center" colspan="3">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="3" style="font-weight: bold; font-size: 14pt; color: #800080;
                height: 21px; text-decoration: underline">
                TechnicalSkills Details</td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="3">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="3" style="font-size: 12pt; color: #ffffff">
                <table border="0" cellpadding="0" cellspacing="0" style="width: 689px">
                    <tr>
                        <td style="width: 100px">
                            <strong style="font-weight: bold; color: #800080">Skill</strong></td>
                        <td style="width: 100px">
                            <strong style="font-weight: bold; color: #800080">Work Years</strong></td>
                        <td style="width: 100px">
                            <strong style="font-weight: bold; color: #800080">Last Used</strong></td>
                    </tr>
                    <tr>
                        <td align="left" style="font-weight: bold; color: #000000">
                            <strong>1</strong>
                            <asp:Literal ID="ltlSkill1" runat="server"></asp:Literal></td>
                        <td align="left" style="font-weight: bold; color: #000000">
                            <asp:Literal ID="ltlWork1" runat="server"></asp:Literal></td>
                        <td align="left" style="font-weight: bold; color: #000000">
                            <asp:Literal ID="ltlLastUsed1" runat="server"></asp:Literal></td>
                    </tr>
                    <tr>
                        <td align="left" style="font-weight: bold; color: #000000">
                            <strong>2</strong>
                            <asp:Literal ID="ltlSkill2" runat="server"></asp:Literal></td>
                        <td align="left" style="font-weight: bold; color: #000000">
                            <asp:Literal ID="ltlWork2" runat="server"></asp:Literal></td>
                        <td align="left" style="font-weight: bold; color: #000000">
                            <asp:Literal ID="ltlLastUsed2" runat="server"></asp:Literal></td>
                    </tr>
                    <tr>
                        <td align="left" style="font-weight: bold; color: #000000">
                            <strong>3</strong>
                            <asp:Literal ID="ltlSkill3" runat="server"></asp:Literal></td>
                        <td align="left" style="font-weight: bold; color: #000000">
                            <asp:Literal ID="ltlWork3" runat="server"></asp:Literal></td>
                        <td align="left" style="font-weight: bold; color: #000000">
                            <asp:Literal ID="ltlLastUsed3" runat="server"></asp:Literal></td>
                    </tr>
                    <tr>
                        <td align="left" style="font-weight: bold; color: #000000">
                            <strong>4</strong>
                            <asp:Literal ID="ltlSkill4" runat="server"></asp:Literal></td>
                        <td align="left" style="font-weight: bold; color: #000000">
                            <asp:Literal ID="ltlWork4" runat="server"></asp:Literal></td>
                        <td align="left" style="font-weight: bold; color: #000000">
                            <asp:Literal ID="ltlLastUsed4" runat="server"></asp:Literal></td>
                    </tr>
                </table>
                &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4" style="font-weight: bold; font-size: 14pt; color: #800080;
                text-decoration: underline; height: 22px;">
                Resume Detail:</td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4" style="font-size: 12pt; color: #ffffff; height: 19px">
                <asp:TextBox ID="txtResume" runat="server" Height="196px" ReadOnly="True" TextMode="MultiLine"
                    Width="692px"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="4" style="font-size: 12pt; color: #ffffff; height: 19px">
                <strong style="font-weight: bold; color: #800080">Downoad Resume:<asp:HyperLink
                    ID="hypResume" runat="server" ForeColor="DimGray" Width="393px">HyperLink</asp:HyperLink></strong></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="3" style="font-size: 12pt; color: #ffffff">
                <asp:Button ID="btnOK" runat="server" Font-Bold="True" OnClick="btnOK_Click" Text="OK"
                    Width="81px" />&nbsp;</td>
        </tr>
    </table>
    <br />
</asp:Content>

