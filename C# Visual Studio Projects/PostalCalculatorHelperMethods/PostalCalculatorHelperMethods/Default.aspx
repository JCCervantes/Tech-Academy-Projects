<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PostalCalculatorHelperMethods.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Postal Calculator
            <br />
            <br />
            Width:
            <asp:TextBox ID="Width" runat="server" AutoPostBack="True" OnTextChanged="Width_TextChanged"></asp:TextBox>
            <br />
            Height:
            <asp:TextBox ID="Height" runat="server" AutoPostBack="True" OnTextChanged="Height_TextChanged"></asp:TextBox>
            <br />
            Length:
            <asp:TextBox ID="Length" runat="server" AutoPostBack="True" OnTextChanged="Length_TextChanged"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:RadioButton ID="GroundButton" runat="server" AutoPostBack="True" GroupName="Shipping" OnCheckedChanged="GroundButton_CheckedChanged" Text="Ground" />
            <br />
            <asp:RadioButton ID="AirButton" runat="server" AutoPostBack="True" GroupName="Shipping" OnCheckedChanged="AirButton_CheckedChanged" Text="Air" />
            <br />
            <asp:RadioButton ID="NextDayButton" runat="server" AutoPostBack="True" GroupName="Shipping" OnCheckedChanged="NextDayButton_CheckedChanged" Text="Next Day" />
            <br />
            <br />
            <asp:Label ID="resultLabel" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
