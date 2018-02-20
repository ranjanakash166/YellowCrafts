<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="user_registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <table style="background-color:#ffd800;border:5px solid black" >
        <tr>
            <td>
               <p style="font:30px; color:black;"> First-Name</p>
            </td>
            <td style="width: 513px">
                <asp:TextBox ID="TextBox1" runat="server" Height="45px" Width="434px"></asp:TextBox>
            </td>
        </tr>

         <tr>
            <td>
                Last-Name
            </td>
            <td style="width: 513px">
                <asp:TextBox ID="TextBox2" runat="server" Height="45px" Width="434px"></asp:TextBox>
            </td>
        </tr>

         <tr>
            <td>
                Email
            </td>
            <td style="width: 513px">
               	<div class="form-group">
				<asp:TextBox ID="TextBox3" width="250px"  runat="server" class="form-control input-lg" placeholder="Email"></asp:TextBox>
              
			    </div>
            </td>
        </tr>

         <tr>
            <td>
               Password
            </td>
            <td style="width: 513px">
                <asp:TextBox ID="TextBox4" runat="server"  Height="45px" Width="434px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>

         <tr>
            <td>
                Address
            </td>
            <td style="width: 513px">
                <asp:TextBox ID="TextBox5" runat="server"  TextMode="MultiLine" Height="105px" Width="434px"></asp:TextBox>
            </td>
        </tr>

         <tr>
            <td>
                City
            </td>
            <td style="width: 513px">
                <asp:TextBox ID="TextBox6" runat="server" Height="45px" Width="434px"></asp:TextBox>
            </td>
        </tr>

         <tr>
            <td>
               State
            </td>
            <td style="width: 513px">
                <asp:TextBox ID="TextBox7" runat="server" Height="45px" Width="434px"></asp:TextBox>
            </td>
        </tr>

         <tr>
            <td>
                Pincode
            </td>
            <td style="width: 513px">
                <asp:TextBox ID="TextBox8" runat="server" Height="45px" Width="434px"></asp:TextBox>
            </td>
        </tr>

         <tr>
            <td>
                Mobile
            </td>
            <td style="width: 513px">
                <asp:TextBox ID="TextBox9" runat="server" Height="45px" Width="434px"></asp:TextBox>
            </td>
        </tr>

         <tr>
            
            <td colspan="2" align="center">
                <asp:Button ID="Button1" runat="server"  align="center" Text ="Register" OnClick="Button1_Click" style="color: #fff;
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
    <table style="background-color:#ffd800;border:5px solid black">
        <tr align="center">
              <td align:center>
                             <asp:Button ID="Button2" align="center" runat="server" Text="Click Here to Login" OnClick="Button2_Click"   style="color: #fff; 
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
    </table>
</asp:Content>

