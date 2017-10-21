<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CS_006.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style2 {
            color: #FF6699;
            background-color: #FFFFFF;
        }
        .auto-style3 {
            background-color: #FFFFFF;
        }
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            height: 23px;
        }
        .auto-style6 {
            background-color: #FFFFCC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Headline 1 </h1>
        </div>
        <h2>Headline 2</h2>
        <h3>Headline 3</h3>
        <h4>Headline 4</h4>
        <h5>Headline 5</h5>
        <h6>Headline 6</h6>
        <p class="auto-style1">
            <span class="auto-style3">This is some text that I want to </span><span class="auto-style2">apply</span><span class="auto-style3"> a style to. </span>
        </p>
        <p class="auto-style1">
            Add a<a href="http://www.pinterest.com"> hyperlink.</a></p>
        <p class="auto-style1">
            This is another
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://www.pinterest.com" Target="_self">HyperLink Here</asp:HyperLink>
            .
        </p>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/movie_logo.gif" />
    </form>
    <table class="auto-style4">
        <tr>
            <td>0,0</td>
            <td>0,1</td>
            <td>0,2</td>
        </tr>
        <tr>
            <td class="auto-style5">1,0</td>
            <td class="auto-style5">1,1</td>
            <td class="auto-style5">1,2</td>
        </tr>
        <tr>
            <td>2,0</td>
            <td>2,1</td>
            <td>2,2</td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <ol>
        <li>First item</li>
        <li>Second item</li>
        <li>Third item</li>
    </ol>
    <ul>
        <li class="auto-style6">This is an unordered list</li>
        <li class="auto-style6">This is an unordered list</li>
        <li class="auto-style6">This is an unordered list</li>
    </ul>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
