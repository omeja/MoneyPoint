<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="frmAccount.aspx.cs" Inherits="MoneyPoint.frmAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style9
        {
            font-weight: bold;
            font-family: Arial;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" CssClass="style9" Text="Account Number"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" CssClass="style9" Text="Account Name"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" CssClass="style9" Text="Customer"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" CssClass="style9" Text="Account Balance"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    </p>
    <p>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" style="font-weight: 700" Text="Save" 
            Width="127px" />
    </p>
    <p>
    </p>
</asp:Content>
