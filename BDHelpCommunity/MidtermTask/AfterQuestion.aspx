<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AfterQuestion.aspx.cs" Inherits="MidtermTask.AfterQuestion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="CSS/AfterQuestion.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="header">
            <h1>Question:</h1>
            <asp:Button ID="Button1" runat="server" Text="Home" OnClick="Button1_Click" />
        </div>
        <br />
        <div class="content">
            <div class="question">
                <div class="questionheader">
                    <div class="questionheader1">
                        <h3 align="center">Question Header:</h3>
                    </div>
                    <div class="questionheader2">
                        <asp:Label ID="lblQuestionHeader" runat="server" Font-Bold="True" Text="Label"></asp:Label>
                    </div>

                </div>
                <div class="questionContent">
                    <div class="content1">
                        <asp:Label ID="lblQuestionerName" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblQuestionDate" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div class="content2">
                        <asp:Label ID="lblQuestionText" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div class="questionFooter">&nbsp;
                        <asp:Button ID="btnReply" runat="server" Font-Bold="True" Font-Names="Segoe Print" Font-Size="XX-Small" ForeColor="Green" Text="Reply" Width="86px" Height="21px" OnClick="btnReply_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnLike" runat="server" Font-Bold="True" Font-Names="Segoe Print" Font-Size="XX-Small" ForeColor="Green" Text="Like" Width="89px" OnClick="btnLike_Click" Height="20px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnShowAnsewer" runat="server" Font-Names="Segoe Print" ForeColor="Red" Text="Show Answer" Visible="True" Width="81px" Font-Size="XX-Small" Height="20px" OnClick="btnShowAnsewer_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnDelete" runat="server" Font-Names="Segoe Print" ForeColor="Red" Text="Delete" Visible="False" Width="81px" Font-Size="XX-Small" Height="20px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnReport" runat="server" Font-Bold="True" Font-Names="Segoe Print" Font-Size="XX-Small" ForeColor="Red" Text="Report" Width="91px" Height="19px" />
                    </div>
                </div>
                <div class="footer"></div>
            </div>
            <br />
            <br />
        </div>
        <div>j</div>
    
    </div>
    </form>
</body>
</html>
