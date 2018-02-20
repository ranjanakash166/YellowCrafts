<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="update_order_details.aspx.cs" Inherits="user_update_order_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <table>
        <tr>
            <td>
                First-Name
            </td>
            <td>
                <asp:TextBox ID="t1" runat="server" Height="49px" Width="653px"></asp:TextBox>
            </td>
        </tr>

         <tr>
            <td>
                Last-Name
            </td>
            <td>
                <asp:TextBox ID="t2" runat="server" Height="49px" Width="653px"></asp:TextBox>
            </td>
        </tr>

     

         <tr>
            <td>
                Address
            </td>
            <td>
                <asp:TextBox ID="t3" runat="server"  TextMode="MultiLine"  Height="60px" Width="653px"></asp:TextBox>
            </td>
        </tr>

         <tr>
            <td>
                City
            </td>
            <td>
                <asp:TextBox ID="t4" runat="server" Height="49px" Width="653px"></asp:TextBox>
            </td>
        </tr>

         <tr>
            <td>
               State
            </td>
            <td>
                <asp:TextBox ID="t5" runat="server" Height="49px" Width="653px"></asp:TextBox>
            </td>
        </tr>

         <tr>
            <td>
                Mobile
            </td>
            <td>
                <asp:TextBox ID="t6" runat="server" Height="49px" Width="653px"></asp:TextBox>
            </td>
        </tr>

         <tr>
            
            <td colspan="2" align="center">
                <asp:Button ID="b1" runat="server" Text="Update And Continue" OnClick="Button1_Click" style="color: #fff;
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

