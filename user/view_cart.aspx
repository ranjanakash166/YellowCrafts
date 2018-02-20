<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="view_cart.aspx.cs" Inherits="user_view_cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <div>

     <asp:DataList ID="d1" runat="server">
        
          <HeaderTemplate>
             <table border="1px solid black;" style="background-color:#ffd800;">
                 <tr style="background-color:silver;color:white;font-weight:bold">
                     <td>Product-Image</td>
                     <td>Product-Name</td>
                     <td>Product-Desc</td>
                     <td>Product-Price</td>
                     <td>Product-Quantity</td>
                     <td>Delete</td>
                 </tr>
         </HeaderTemplate>


     <ItemTemplate>
         
        <tr>
            <td><img alt="picture" src="../<%#Eval("product_img") %> " height="150" width="150"/></td>
            <td><%#Eval("product_name") %> </td>
            <td><%#Eval("product_desc") %></td>
            <td><%#Eval("product_price") %></td>
            <td><%#Eval("product_qty") %></td>
            <td>
                <a href="delete_cart.aspx?id=<%#Eval("id") %>"><p style="color:red;font-size:20px;">Delete</p></a>
            </td>
       </tr>
     </ItemTemplate>


         <FooterTemplate>
             </table>
         </FooterTemplate>


     </asp:DataList>
        <br />
        <p align="center">
            <asp:Label ID="l1" runat="server" style="color:green;font:30px arial,verdana;"></asp:Label><br />
            <asp:Button ID="b1" align="center" runat="server" Text="Checkout" OnClick="b1_Click"  style="color: #fff;
	background-color:#2ecc71;
	height: 50px;
	width: 340px;
	padding:10px;
	border:none 0px transparent;
	font-size: 25px;
	font-weight: lighter;
	-moz-border-radius:  2px 16px 16px 16px;
	border-radius:  2px 16px 16px 16px;"/>
        </p>
         </div>
    </asp:Content>
