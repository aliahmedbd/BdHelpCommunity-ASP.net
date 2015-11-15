<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UnAnsweredQuestion.aspx.cs" Inherits="MidtermTask.UnAnsweredQuestion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button1" runat="server" Text="Home" OnClick="Button1_Click" />
        <h1>Questions Which are not answered yet:</h1>
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    
    </div>
    </form>
</body>
</html>
