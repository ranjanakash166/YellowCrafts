<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- Optional Bootstrap theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
</head>


    <body>
         <div class="container">
        <div style="background-color:#025c5a" class="jumbotron">  
            <h1 style="color:white">Signup</h1>
        </div>


         </div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
        
    <div class="container">
        <asp:Label ID="Label1" runat="server" ></asp:Label>
<div class="row">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
		<form role="form" runat="server">
			<h2>Please Sign Up <small>Become a member of yellowcrafts.</small></h2>
			<hr class="colorgraph" />
			<div class="form-group" runat="server">
                 <asp:TextBox ID="TextBox1" runat="server" class="form-control input-lg" placeholder="First-Name" ></asp:TextBox>
			</div>
            
            <div id="Div1" class="form-group" runat="server">
                 <asp:TextBox ID="TextBox2" runat="server" class="form-control input-lg" placeholder="Last-Name" ></asp:TextBox>
			</div>

			<div class="form-group">
				<asp:TextBox ID="TextBox3"  runat="server" class="form-control input-lg" placeholder="Email"   ></asp:TextBox>
                <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox3" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>

			</div>

			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<asp:TextBox ID="TextBox4" runat="server" class="form-control input-lg" placeholder="Password" TextMode="Password" ></asp:TextBox>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<asp:TextBox ID="cnf_pass" runat="server" class="form-control input-lg" placeholder="Confirm Password" TextMode="Password" ></asp:TextBox>
					</div>
				</div>
			</div>
            


               
            <div id="Div2" class="form-group" runat="server">
                 <asp:TextBox ID="TextBox5" runat="server" class="form-control input-lg" placeholder="Address" ></asp:TextBox>
			</div>


              <div id="Div3" class="form-group" runat="server">
                 <asp:TextBox ID="TextBox6" runat="server" class="form-control input-lg" placeholder="state" ></asp:TextBox>
			</div>

              <div id="Div4" class="form-group" runat="server">
                 <asp:TextBox ID="TextBox7" runat="server" class="form-control input-lg" placeholder="pincode" ></asp:TextBox>
			</div>


              <div id="Div5" class="form-group" runat="server">
                 <asp:TextBox ID="TextBox8" runat="server" class="form-control input-lg" placeholder="mobile" ></asp:TextBox>
			</div>


			<div class="row">
				<div class="col-xs-4 col-sm-3 col-md-3">
					<span class="button-checkbox">
						<button type="button" class="btn" data-color="info" runat="server" tabindex="7">I Agree</button>
                        <input type="checkbox" name="t_and_c" id="t_and_c" runat="server" class="hidden" value="1">
					</span>
				</div>
				<div class="col-xs-8 col-sm-9 col-md-9">
					 By clicking <strong class="label label-primary">Register</strong>, you agree to the <a href="#" data-toggle="modal" data-target="#t_and_c_m">Terms and Conditions</a> set out by this site, including our Cookie Use.
				</div>
			</div>
			
			<hr class="colorgraph">
			<div class="row">
                <div class="col-xs-12 col-md-6">
                <asp:Button ID="submit" runat="server" value="Register" class="btn btn-primary btn-block btn-lg" Text="Submit" OnClick="submit_Click" /></div>
				Already Have an account <a href="signin.aspx" style="color:blue">Click Here</a> to signin 
			</div>
		</form>
	</div>
</div>
<!-- Modal -->
<div class="modal fade" id="t_and_c_m" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h4 class="modal-title" id="myModalLabel">Terms & Conditions</h4>
			</div>
			<div class="modal-body">
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" data-dismiss="modal">I Agree</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
</div>
        </body>
</html>
