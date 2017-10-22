<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SpiesAssetTracker.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 114px;
            height: 150px;
        }
        .auto-style2 {
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <img alt="logo" class="auto-style1" src="epic-spies-logo.jpg" /><br />
            <h2><span class="auto-style2">Asset Performance Tracker</span></h2>
            Asset Name:
            <asp:TextBox ID="assetTextBox" runat="server"></asp:TextBox>
            <br />
            <br />
            Elections Rigged:
            <asp:TextBox ID="electionsTextBox" runat="server"></asp:TextBox>
            <br />
            <br />
            Acts of Subterfuge Performed:&nbsp;
            <asp:TextBox ID="actsTextBox" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="addButton" runat="server" OnClick="addButton_Click" Text="Add Asset" />
            <br />
            <br />
            <asp:Label ID="resultLabel" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
