<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="frmCustomer.aspx.cs" Inherits="MoneyPoint.frmCustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style10
    {
        font-family: Arial;
        font-weight: bold;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
</p>
<p>
    <asp:Label ID="Label3" runat="server" CssClass="style10" Text="Customer Number"></asp:Label>
</p>
<p>
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label1" runat="server" CssClass="style10" Text="Title"></asp:Label>
</p>
<p>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label2" runat="server" CssClass="style10" Text="Customer Name"></asp:Label>
</p>
<p>
    <asp:TextBox ID="TextBox2" runat="server" Width="284px"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label4" runat="server" CssClass="style10" Text="Address"></asp:Label>
</p>
<p>
    <asp:TextBox ID="TextBox3" runat="server" Width="285px"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label5" runat="server" CssClass="style10" 
        Text="Telephone Contact"></asp:Label>
</p>
<p>
    <asp:TextBox ID="TextBox4" runat="server" Width="284px"></asp:TextBox>
</p>
<p>
</p>
<p>
    <asp:Button ID="Button1" runat="server" 
        style="font-weight: 700; font-size: medium" Text="Save " Width="159px" 
        onclick="Button1_Click" />
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>
