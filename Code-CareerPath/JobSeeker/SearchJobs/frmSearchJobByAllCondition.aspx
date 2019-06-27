<%@ Page Language="C#" MasterPageFile="~/JobSeeker/JobSeekerMasterPage.master" AutoEventWireup="true" CodeFile="frmSearchJobByAllCondition.aspx.cs" Inherits="JobSeeker_SearchJobs_frmSearchJobByAllCondition" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <asp:Label ID="lblMsg" runat="server" ></asp:Label>
    
    <table id="TABLE1" border="0" cellpadding="0" cellspacing="0" language="javascript"
        onclick="return TABLE1_onclick()" style="width: 604px">
        <tr>
            <td colspan="3" style="height: 19px">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="text-align: right">
                <strong><span style="color: #006600">Select Location:
                  </span></strong>
                </td>
            <td align="left" colspan="1">
                <asp:DropDownList ID="ddlLocation" runat="server" 
                    Width="180px" ValidationGroup="g">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlLocation"
                    ErrorMessage="RequiredFieldValidator" InitialValue="---Select---" Style="position: relative"
                    ValidationGroup="g">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="text-align: right; height: 22px;">
                <strong><span style="color: #006600">
                Select Role:</span></strong></td>
            <td align="left" colspan="1" style="height: 22px"><asp:DropDownList ID="ddlRole" runat="server" 
                    Width="180px" ValidationGroup="g">
            </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlRole"
                    ErrorMessage="RequiredFieldValidator" InitialValue="---Select---" Style="position: relative"
                    ValidationGroup="g">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="text-align: right; height: 22px;">
                <strong><span style="color: #006600">Select Category:</span></strong></td>
            <td align="left" colspan="1" style="height: 22px">
                <asp:DropDownList ID="ddlCategory" runat="server"  Width="180px" ValidationGroup="g">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlCategory"
                    ErrorMessage="RequiredFieldValidator" InitialValue="---Select---" Style="position: relative"
                    ValidationGroup="g">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="text-align: right; height: 24px;">
                <strong><span style="color: #006600">Eneter Expected Salary:</span></strong></td>
            <td align="left" colspan="1" style="height: 24px">
                <asp:TextBox ID="txtSalary" runat="server" Width="121px" ValidationGroup="g"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtSalary"
                    ErrorMessage="RequiredFieldValidator" Style="position: relative" ValidationGroup="g">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td id=" " align="right" colspan="3">
                <strong><span style="font-size: 8pt"><span style="color: #ff0066">(</span> <span
                    style="color: #ff0066">* Mandetary)</span></span></strong><asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" ValidationGroup="g" />&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                <asp:GridView ID="GridView1" runat="server" EmptyDataText="No Job Found" OnPageIndexChanging="GridView1_PageIndexChanging"
                    OnSelectedIndexChanging="GridView1_SelectedIndexChanging" Width="629px" Font-Size="Small">
                    <EmptyDataRowStyle Font-Bold="True" ForeColor="#006600" />
                    <Columns>
                        <asp:CommandField ButtonType="Button" SelectText="Details" ShowSelectButton="True" />
                    </Columns>
                    <HeaderStyle BackColor="#006600" Font-Bold="True" ForeColor="#B5BDAC" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

