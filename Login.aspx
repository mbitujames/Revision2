<%@ Page Title="" Language="C#" MasterPageFile="~/Revision1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Revision2.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
    <br />
    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
    <br />
    <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
    <br />
    <asp:Label ID="lblconfirm" runat="server" Text="Label"></asp:Label>
</asp:Content>
