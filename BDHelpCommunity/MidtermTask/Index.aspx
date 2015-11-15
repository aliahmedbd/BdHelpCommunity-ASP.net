<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="MidtermTask.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Index</title>
    <link href="~/CSS/index.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="header">
            <div class="part1"></div>
            <div class="part2">
                <asp:Button ID="btnSignIn" runat="server"  Text="Sign In" OnClick="btnSignIn_Click" />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" OnClick="btnSignUp_Click" />
            </div>
        </div>
        <div></div>
        <div></div>
    </div>
    </form>
</body>
</html>
