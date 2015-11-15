<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="MidtermTask.LogIn" %>

<!DOCTYPE html>
<html>

<head>

  <meta charset="UTF-8">

  <title>Log-in</title>

  <link rel='stylesheet' href='http://codepen.io/assets/libs/fullpage/jquery-ui.css'>

    <link rel="stylesheet" href="css/style.css" media="screen" type="text/css" />

</head>

<body>
    
  <div class="login-card">
    <h1>Log-in</h1><br>
  <form id="form1" runat="server">
    <asp:TextBox ID="TextBoxUser" runat="server" placeholder="Username"></asp:TextBox>
    <asp:TextBox ID="TextBoxPass" runat="server" placeholder="Password"></asp:TextBox>
      <asp:Button ID="BtnLogIn" runat="server" class="login login-submit" Text="Sign In" OnClick="BtnLogIn_Click" />
        <h4>Or,</h4> 
        <asp:Button ID="BtnRegistration" runat="server" class="login login-submit" Text="Sign Up" OnClick="BtnRegistration_Click"  />
  </form>

</div>

<!-- <div id="error"><img src="https://dl.dropboxusercontent.com/u/23299152/Delete-icon.png" /> Your caps-lock is on.</div> -->

  <script src='http://codepen.io/assets/libs/fullpage/jquery_and_jqueryui.js'></script>

</body>

</html>