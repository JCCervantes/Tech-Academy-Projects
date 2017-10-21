<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RadioButtonChallenge.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Your note taking preferences:<br />
            <br />
            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="NP" Text="Pencil" />
        </div>
        <p>
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="NP" Text="Pen" />
        </p>
        <p>
            <asp:RadioButton ID="RadioButton3" runat="server" GroupName="NP" Text="Phone" />
        </p>
        <p>
            <asp:RadioButton ID="RadioButton4" runat="server" GroupName="NP" Text="Tablet" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="OKButton" runat="server" OnClick="OKButton_Click" Text=" OK  " />
        </p>
        <p>
            <asp:Label ID="resultLabel" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Image ID="resultImage" runat="server" Width="16px" />
        </p>
    </form>
</body>
</html>
