<%@ Page Language="C#" MasterPageFile="~/Recruiter/RecruiterMasterPage.master" AutoEventWireup="true" CodeFile="frmRecruiterHome.aspx.cs" Inherits="Recruiter_frmRecruiterHome" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <br />
   <br />
   <br />
   <br />
    <div style="text-align: center">
        <span style="font-size: 24pt; color: #0000ff; font-family: Verdana"><strong>
       Welcome To : <%=Session["UserName"].ToString().ToUpper() %></strong></span>
       </div>
</asp:Content>

