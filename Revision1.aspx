<%@ Page Title="" Language="C#" MasterPageFile="~/Revision1.Master" AutoEventWireup="true" CodeBehind="Revision1.aspx.cs" Inherits="Revision2.Revision11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Full Names"></asp:Label>
    <br />
    <asp:TextBox ID="txtfnames" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BackColor="White" ControlToValidate="txtfnames" ErrorMessage="enter full names" ForeColor="#FF3300" ValidationGroup="mbitu">*</asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Id Number"></asp:Label>
    <br />
    <asp:TextBox ID="txtidno" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" BackColor="White" ControlToValidate="txtidno" ErrorMessage="enter id number" ForeColor="#FF3300" ValidationGroup="mbitu">*</asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
    <br />
    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" BackColor="White" ControlToValidate="txtemail" ErrorMessage="enter email" ForeColor="#FF3300" ValidationGroup="mbitu">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="mbitu">*</asp:RegularExpressionValidator>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
    <br />
    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" BackColor="White" ControlToValidate="txtpassword" ErrorMessage="enter correct password" ForeColor="#FF3300" ValidationGroup="mbitu">*</asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtconfirmpassword" ErrorMessage="CompareValidator" ForeColor="Red" ValidationGroup="mbitu" ValueToCompare="password">*</asp:CompareValidator>
    <br />
    <asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label>
    <br />
    <asp:TextBox ID="txtconfirmpassword" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" BackColor="White" ControlToValidate="txtconfirmpassword" ErrorMessage="password does not match" ForeColor="#FF3300" ValidationGroup="mbitu">*</asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtconfirmpassword" ControlToValidate="txtpassword" ErrorMessage="CompareValidator" ForeColor="Red" ValidationGroup="mbitu" ValueToCompare="password">*</asp:CompareValidator>
    <br />
    <asp:Label ID="Label6" runat="server" Text="Title"></asp:Label>
    <br />
    <asp:DropDownList ID="ddltitle" runat="server" DataSourceID="prefixdb" DataTextField="prefix" DataValueField="prefix">
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <asp:SqlDataSource ID="prefixdb" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [prefix] FROM [Prefix]"></asp:SqlDataSource>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" BackColor="White" ControlToValidate="ddltitle" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" ValidationGroup="mbitu">*</asp:RequiredFieldValidator>
    <br />
    <asp:Button ID="btncreateaccount" runat="server" Text="Create Account" ValidationGroup="mbitu" OnClick="btncreateaccount_Click" />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="mbitu" />
</asp:Content>
