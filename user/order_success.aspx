<%@ Page Language="C#" AutoEventWireup="true" CodeFile="order_success.aspx.cs" Inherits="user_order_success" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
   
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- Optional Bootstrap theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="container">
	<div class="row text-center">
        <div class="col-sm-6 col-sm-offset-3">
        <br><br> <h2 style="color:#0fad00">Success</h2>
        <img src="http://osmhotels.com//assets/check-true.jpg">
        <h3>Dear</h3>
        <p style="font-size:20px;color:#5C5C5C;">Welcome <asp:Label ID="Label1" runat="server" class="label-success" Text="checking"></asp:Label>     Thank you for Placing Order With Us
            Shop More </p>
        <a href="display_item.aspx" class="btn btn-success">   Continue Shopping   </a>
        <asp:Button  runat="server"  class="btn btn-success" Text="Click Here to Download Your Bill" ID="billgen" OnClick="billgen_Click"/>
    <br/><br/>
        </div>
        
	</div>
</div>
    </div>
    </form>
</body>
</html>
