<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="MidtermTask.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .header{
            height:60px;
            width:100%;
            background-color:darkslategrey;
        }
        .header .header1{
            height:50%;
            width:100%;
            background-color:gainsboro;
        }
        .header .header2{
            height:50%;
            width:100%;
            background-color:darkslategrey;
        }
        h2{
            margin:0px;
            padding:0px;
            color:greenyellow;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="header">
        <div class="header1"></div>
        <div class="header2">
            <h2 >Registration</h2>
        </div>
    </div>
    <div style="margin-left: 160px">

        <table>
            <tr>
                <th>
                    First Name:
                </th>
                <th>
                    <asp:TextBox ID="txtFN" runat="server" OnTextChanged="TextBox1_TextChanged" Width="246px" Height="27px"></asp:TextBox>
                </th>
                <th>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFN" ErrorMessage="Can't be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </th>
            </tr>
            <tr>
                <th class="auto-style1">Last Name:</th>
                <th class="auto-style1"><asp:TextBox ID="txtLN" runat="server" Width="248px" Height="27px"></asp:TextBox></th>
                <th class="auto-style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLN" ErrorMessage="Can't be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </th>
            </tr>
            <tr>
                <th>User Name:</th>
                <th><asp:TextBox ID="txtUserName" runat="server" Width="247px" Height="30px"></asp:TextBox></th>
                <th>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUserName" ErrorMessage="Can't be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </th>
            </tr>
            <tr>
                <th>Password:</th>
                <th><asp:TextBox ID="txtPassword" runat="server" Width="247px" Height="29px"></asp:TextBox></th>
                <th>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword" ErrorMessage="Can't be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </th>
            </tr>
            <tr>
                <th>Email</th>
                <th><asp:TextBox ID="txtEmail" runat="server" Width="248px" Height="26px"></asp:TextBox></th>
                <th>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail" ErrorMessage="Can't be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </th>
            </tr>
                        <tr>
                <th>Phone:</th>
                <th><asp:TextBox ID="txtPhone" runat="server" Width="247px" Height="27px"></asp:TextBox></th>
                <th>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPhone" ErrorMessage="Can't be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                            </th>
            </tr>
            <tr>
                <th> City:</th>
                <th> <asp:TextBox ID="txtCity" runat="server" Width="245px" Height="29px"></asp:TextBox></th>
                <th>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtCity" ErrorMessage="Can't be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </th>
            </tr>
            <tr>
                <th> Address :</th>
                <th><asp:TextBox ID="txtAddress" runat="server" Width="247px" Height="29px"></asp:TextBox></th>
                <th>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtAddress" ErrorMessage="Can't be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </th>
            </tr>
        </table>
       
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnSignUp" runat="server" OnClick="btnSignUp_Click" Text="Sign Up" />
       
    
    </div>
    </form>
</body>
</html>
