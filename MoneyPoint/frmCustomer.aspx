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
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    <asp:Label ID="Label1" runat="server" CssClass="style10" Text="Title"></asp:Label>
</p>
<p>
    <asp:DropDownList ID="cbotitle" runat="server" Height="16px" Width="103px">
        <asp:ListItem>MR</asp:ListItem>
        <asp:ListItem>MRS</asp:ListItem>
        <asp:ListItem>MISS</asp:ListItem>
        <asp:ListItem>DR</asp:ListItem>
        <asp:ListItem>REV</asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
</p>
<p>
    <asp:Label ID="Label2" runat="server" CssClass="style10" Text="Customer Name"></asp:Label>
</p>
<p>
    <asp:TextBox ID="txtcusname" runat="server" Width="284px"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label4" runat="server" CssClass="style10" Text="Address"></asp:Label>
</p>
<p>
    <asp:TextBox ID="txtaddress" runat="server" Width="285px"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label5" runat="server" CssClass="style10" 
        Text="Telephone Contact"></asp:Label>
</p>
<p>
    <asp:TextBox ID="txttel" runat="server" Width="284px"></asp:TextBox>
</p>
<p>
</p>
<p>
    <asp:Button ID="Button1" runat="server" 
        style="font-weight: 700; font-size: medium" Text="Save " Width="159px" onclick="Button1_Click1" 
         />
    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium" 
        ForeColor="#009933"></asp:Label>
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
