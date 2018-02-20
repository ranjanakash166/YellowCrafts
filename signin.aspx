<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signin.aspx.cs" Inherits="signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="JavaScript.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/bootstrap-theme.min.css" rel="stylesheet" />
    <script src="js/bootstrap.min.js"></script>
    <link href="StyleSheet.css" rel="stylesheet" />
    <link href="css/bootstrap-theme.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <div style="background-color:#5c1a07" class="jumbotron">  
            <h1 style="color:white">LogIn</h1>
        </div>
        </div>
    
    <div class="container">
        <asp:Label ID="Label1" runat="server"></asp:Label>
<div class="row" style="margin-top:20px">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
		<form role="form" runat="server"> 
			<fieldset>
				<h2>Welcome Back, Please SignIn</h2>
				<hr class="colorgraph">
				<div class="form-group">
                    <asp:TextBox ID="email"  runat="server" class="form-control input-lg" placeholder="Email"   ></asp:TextBox>
                     <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
				</div>
				<div class="form-group">
                    <asp:TextBox ID="pass" runat="server" class="form-control input-lg" placeholder="Password" TextMode="Password" ></asp:TextBox>
 
				</div>
				<span class="button-checkbox">
					<button type="button" class="btn" data-color="info">Remember Me</button>
                    <input type="checkbox" name="remember_me" id="remember_me" checked="checked" class="hidden">
					<a href="" class="btn btn-link pull-right">Forgot Password?</a>
				</span>
				<hr class="colorgraph">
				<div class="row">
					<div class="col-xs-6 col-sm-6 col-md-6">
                        <asp:Button ID="submit" input type="submit" runat="server" Text="Login" class="btn btn-lg btn-success btn-block" value="Sign In" OnClick="submit_Click" />
					</div>
					<div class="col-xs-6 col-sm-6 col-md-6">
						Didn't have an account. <a href="signup.aspx" style="color:blue">Click Here </a>to register.
					</div>
				</div>
			</fieldset>
		</form>
	</div>
</div>

</div>
</body>
</html>
