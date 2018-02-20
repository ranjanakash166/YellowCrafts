<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="admin_adminlogin" %>
<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Admin Login</title>
    
    
    
    
        <link rel="stylesheet" href="logincss/style.css">

    
    
    
    
  </head>

  <body>

    
<form id="f1" runat="server">
  <header>Login</header>
  <label>Username <span>*</span></label>
  <asp:TextBox ID="t1" runat="server"></asp:TextBox>
  <div class="help">At least 6 character</div>
  <label>Password <span>*</span></label>
  <asp:TextBox ID="t2"  type="password"     runat="server"></asp:TextBox>
  <div class="help">Use upper and lowercase lettes as well</div>
   <asp:Button ID="b1" runat="server" text="LOGIN" OnClick="b1_Click" />
    <br />
   <asp:Label ID="l1" runat="server"></asp:Label>
</form>
    
    
    
    
  </body>
</html>
