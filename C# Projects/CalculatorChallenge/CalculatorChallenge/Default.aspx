<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CalculatorChallenge.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Simple Calculator</h1>
            <p>
                <span class="auto-style1">First Value:</span>&nbsp;
                <asp:TextBox ID="Val1" runat="server"></asp:TextBox>
            </p>
            <p>
                <span class="auto-style1">Second Value: </span>&nbsp;<asp:TextBox ID="Val2" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="addButton" runat="server" OnClick="addButton_Click" Text=" + " />
&nbsp;
                <asp:Button ID="subButton" runat="server" OnClick="Button2_Click" style="height: 26px" Text=" - " />
&nbsp;
                <asp:Button ID="multButton" runat="server" OnClick="multButton_Click" Text=" * " />
&nbsp;
                <asp:Button ID="divButton" runat="server" OnClick="divButton_Click" Text=" / " />
            </p>
            <p>
                <asp:Label ID="resultLabel" runat="server" BackColor="#66CCFF" Font-Bold="True" Font-Names="Arial" Font-Size="Medium"></asp:Label>
            </p>
        </div>
    </form>
</body>
</html>
