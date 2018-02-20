<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="login1.aspx.cs" Inherits="user_login1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <table style="background-color:#ffd800;border:5px solid black">
    <tr >
        <td >
           <p style="font:bold 12px,arial,verdana"> Enter Email-Id</p>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Height="37px" Width="251px"></asp:TextBox>
        </td>
    </tr>

     <tr>
        <td>
            Enter Password
        </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="43px" Width="253px"></asp:TextBox>
        </td>
    </tr>
        <tr>
        <td colspan="2" align="center">
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click"  style="color: #fff;
	background-color:#2ecc71;
	height: 50px;
	width: 340px;
	padding:10px;
	border:none 0px transparent;
	font-size: 25px;
	font-weight: lighter;
	-moz-border-radius:  2px 16px 16px 16px;
	border-radius:  2px 16px 16px 16px;"/>
        </td>
            
            
               <td>
              
     <asp:Button ID="Button2" runat="server" Text="Register" OnClick="Button2_Click" align="center"  style="color: #fff;
	background-color:#2ecc71;
	height: 50px;
	width: 340px;
	padding:10px;
	border:none 0px transparent;
	font-size: 25px;
	font-weight: lighter;
	-moz-border-radius:  2px 16px 16px 16px;
	border-radius:  2px 16px 16px 16px;"/>
           </td>
          </tr>

      
     


           <tr>
            <td colspan="2" align="center">
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </td>
        </tr>

</table>
</asp:Content>

