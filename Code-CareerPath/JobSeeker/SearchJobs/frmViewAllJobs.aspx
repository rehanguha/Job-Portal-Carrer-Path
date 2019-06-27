<%@ Page Language="C#" MasterPageFile="~/JobSeeker/JobSeekerMasterPage.master" AutoEventWireup="true" CodeFile="frmViewAllJobs.aspx.cs" Inherits="JobSeeker_SearchJobs_frmViewAllJobs" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div style="text-align: center">
        <table border="0" cellpadding="0" cellspacing="0" id="TABLE1" language="javascript" onclick="return TABLE1_onclick()">
            <tr>
                <td style="width: 100px; height: 19px;">
                </td>
            </tr>
            <tr>
                <td style="width: 100px" align="center">
                    <asp:GridView ID="GridView1" runat="server" ForeColor="#006600" Width="689px" OnPageIndexChanging="GridView1_PageIndexChanging" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" Font-Size="Small">
                        <HeaderStyle BackColor="#006600" Font-Bold="True" ForeColor="#B5BDAC" />
                        <Columns>
                        <asp:CommandField ShowSelectButton="True" ButtonType="Button"  SelectText="Details" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

