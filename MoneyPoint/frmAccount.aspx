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
        <asp:TextBox ID="txtaccno" runat="server" Enabled="False" Width="251px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" CssClass="style9" Text="Account Name"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="txtaccname" runat="server" Width="250px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" CssClass="style9" Text="Customer"></asp:Label>
    </p>
    <p>
        <asp:DropDownList ID="cbocus" runat="server" AutoPostBack="True" Height="25px" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="184px">
        </asp:DropDownList>
        <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="#006600"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" CssClass="style9" Text="Account Balance"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="txtaccbal" runat="server" Width="176px"></asp:TextBox>
    </p>
    <p>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" style="font-weight: 700" Text="Save" 
            Width="127px" onclick="Button1_Click" />
    </p>
    <p>
    </p>
</asp:Content>
