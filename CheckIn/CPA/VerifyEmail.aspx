﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VerifyEmail.aspx.cs" Inherits="CheckIn.VerifyMail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <h2 style="margin-left:20px">Thank you!</h2> 
    <p style="margin-left:20px"> 
         <br />A confirmation email has been sent to "<%=EmailID%>" 
    <br />
    <br />
    Activation mail may land in Spam folder sometimes, so please do check Spam folder once if you could not find it in Inbox
    <br />
    <br />
    Please click on the Activation Link to Activate your account
     </p>
</asp:Content>
