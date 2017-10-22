<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ChallengeEpicSpies.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style2 {
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style3 {
            width: 178px;
            height: 190px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2><span class="auto-style2">
                <img alt="logo" class="auto-style3" src="epic-spies-logo.jpg" /></span></h2>
            <h2><span class="auto-style2">Spy New Assignment Form</span></h2>
            Spy Code Name:
            <asp:TextBox ID="codeNameTextBox" runat="server"></asp:TextBox>
            <br />
            <br />
            New Assignment Name: <asp:TextBox ID="newAssignmentTextBox" runat="server"></asp:TextBox>
            <br />
            <br />
            End Date of Previous Assignment<br />
            <asp:Calendar ID="previousCalendar" runat="server"></asp:Calendar>
            <br />
            Start Date of New Assignment<br />
            <asp:Calendar ID="newCalendar" runat="server"></asp:Calendar>
            <br />
            <br />
            Projected End Date of New Assignment:<br />
            <asp:Calendar ID="endCalendar" runat="server"></asp:Calendar>
            <br />
            <br />
            <asp:Button ID="assignButton" runat="server" OnClick="assignButton_Click" Text="Assign Spy" />
            <br />
            <br />
            <asp:Label ID="resultLabel" runat="server"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
