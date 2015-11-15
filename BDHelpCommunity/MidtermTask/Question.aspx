<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Question.aspx.cs" Inherits="MidtermTask.Question" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="CSS/Question.css" type="text/css"/>
    <style type="text/css">
        #TextArea1 {
            height: 312px;
            width: 568px;
        }
        #txtQuestionBody {
            height: 129px;
            width: 515px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="header">
            <div class="title" style="font-size: medium; color: #008000; font-weight: bold; font-family: 'Microsoft JhengHei';">BD Help Community&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="BtnHome" runat="server" Font-Bold="False" Font-Names="Microsoft New Tai Lue" Height="23px" OnClick="BtnHome_Click" Text="Home" Width="127px" />
            </div>
            <div class="person">
                <asp:Menu ID="MenuProfile" runat="server" BackColor="#FFFBD6" DynamicHorizontalOffset="2" Font-Bold="False" Font-Names="Verdana" Font-Size="XX-Small" ForeColor="#990000"  StaticSubMenuIndent="10px">
                        <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
                        <DynamicMenuItemStyle HorizontalPadding="0px" VerticalPadding="0px" />
                        <DynamicMenuStyle BackColor="#FFFBD6" />
                        <DynamicSelectedStyle BackColor="#FFCC66" />
                        <Items>
                            <asp:MenuItem Text="Ali Ahmed" Value="menuNmae">
                                <asp:MenuItem NavigateUrl="~/Profile.aspx" Text="View Profile" Value="View Profile"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/LogIn.aspx" Text="Log Out" Value="Log Out"></asp:MenuItem>
                            </asp:MenuItem>
                        </Items>
                        <StaticHoverStyle BackColor="#990000" ForeColor="White" />
                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <StaticSelectedStyle BackColor="#FFCC66" />
                    </asp:Menu>
            </div>
        </div>
        <div>      
            <h2>Please set your question:</h2>
            <br />
            <table style="margin-left: 80px">
                 <tr>
                    <th>Question Category:</th>
                    <th>
                        <asp:DropDownList ID="DropDownListCategory" runat="server" Height="26px" Width="512px">
                        </asp:DropDownList>
                     </th>
                    <th></th>
                </tr>
                <tr>
                    <th>Question Head:</th>
                    <th> 
                        <br />
                        <asp:TextBox ID="txtQuestionHead" runat="server" Height="20px" Width="512px"></asp:TextBox>
                        <br />
                        <br />
                    </th>
                    <th>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtQuestionHead" ErrorMessage="Can't be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    </th>
                </tr>
               
                <tr>
                    <th>Question Body:</th>
                    <th><textarea runat="server" id="txtQuestionBody"></textarea></th>
                    <th>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtQuestionBody" ErrorMessage="Can't be empty!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </th>
                </tr>
            </table>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BtnSubmit" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#009900" Height="32px" Text="Post Your Question" Width="171px" OnClick="BtnSubmit_Click" />
        </div>
        <div></div>
    </div>
    </form>
</body>
</html>
