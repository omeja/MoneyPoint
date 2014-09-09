<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="frmLoan.aspx.cs" Inherits="MoneyPoint.frmLoan" %>
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
        <asp:Label ID="Label1" runat="server" CssClass="style9" Text="Loan Number"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox1" runat="server" Width="269px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" CssClass="style9" Text="Loan Amount"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox2" runat="server" Width="175px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" CssClass="style9" Text="Customer"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox3" runat="server" Width="177px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" CssClass="style9" Text="Value Date"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox4" runat="server" Width="178px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label5" runat="server" CssClass="style9" Text="Expiry Date"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox5" runat="server" Width="175px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label6" runat="server" CssClass="style9" Text="Credit Account"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox6" runat="server" Width="263px"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button1" runat="server" 
            style="font-weight: 700; font-family: Arial" Text="Save" Width="126px" />
    </p>
    <p>
    </p>
</asp:Content>
