<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TopAnsweredQuestion.aspx.cs" Inherits="MidtermTask.TopAnsweredQuestion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button1" runat="server" Text="Home" OnClick="Button1_Click" />
        <h1>Top ten Answered Question</h1>

        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    
    </div>
    </form>
</body>
</html>
