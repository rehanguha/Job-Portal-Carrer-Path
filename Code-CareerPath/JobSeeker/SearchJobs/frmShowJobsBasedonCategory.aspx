<%@ Page Language="C#" MasterPageFile="~/JobSeeker/JobSeekerMasterPage.master" AutoEventWireup="true" CodeFile="frmShowJobsBasedonCategory.aspx.cs" Inherits="JobSeeker_SearchJobs_frmShowJobsBasedonCategory" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table id="TABLE1" border="0" cellpadding="0" cellspacing="0" language="javascript"
        onclick="return TABLE1_onclick()">
        <tr>
            <td colspan="2" style="height: 19px">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <strong><span style="color: #006600">Select Category To Search Job: &nbsp; &nbsp; &nbsp;
                    &nbsp; </span></strong>
                <asp:DropDownList ID="ddlCategory" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged"
                    Width="194px">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td id=" " align="center" style="width: 100px">
                &nbsp;
            </td>
            <td align="center" style="width: 100px">
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:GridView ID="GridView1" runat="server" ForeColor="#006600" OnPageIndexChanging="GridView1_PageIndexChanging"
                    OnSelectedIndexChanging="GridView1_SelectedIndexChanging" Width="627px" Font-Size="Small">
                    <HeaderStyle BackColor="#006600" Font-Bold="True" ForeColor="#B5BDAC" />
                    <Columns>
                        <asp:CommandField ButtonType="Button" SelectText="Details" ShowSelectButton="True" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

