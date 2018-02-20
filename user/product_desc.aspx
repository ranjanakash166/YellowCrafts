<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="product_desc.aspx.cs" Inherits="user_product_desc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
  

     <asp:Repeater ID="d1" runat="server">
     
        <ItemTemplate>

           <div style="height:300px; width:600px; border-style:solid;border-width:1px;color:black">

                         <div style="height:300px;width:200px;float:left; border-style:solid;border-width:1px">
                                  <img src="../<%#Eval("product_img")%>" alt="product" height="300" width="200" />
                          </div>
  
                         <div style="height:300px;width:395px;float:left; border-style:solid;border-width:1px;color:#ffd800">
         
                         <p style="font:bold 20px arial,verdana;color:#2ecc71;"> product-name=<%#Eval("product_name") %> </p><br />
                          <p style="font:bold 20px arial,verdana;color:#2ecc71;">product_desc=<%#Eval("product_desc") %></p><br />
                          <p style="font:bold 20px arial,verdana;color:#2ecc71;">product-Quantity=<%#Eval("product_qty") %></p><br />
                          <p style="font:bold 20px arial,verdana;color:#2ecc71;">Product-Price=<%#Eval("product_price") %></p>
                        </div>


         </div>


        </ItemTemplate>
    
    </asp:Repeater>
    <br />
    <table>
        <tr>
            <td>
                <asp:Label ID="l2" runat="server"></asp:Label>           
            </td>

            <td>
                <p style="color:#2ecc71;font-size:larger">Enter Quantity Here</p>
                <asp:TextBox ID="t1" runat="server" ></asp:TextBox>
                <asp:Button ID="b1" runat="server" Text="Add To Cart" OnClick="b1_click" style="color: #fff;
	background-color:#2ecc71;
	height: 50px;
	width: 340px;
	padding:10px;
	border:none 0px transparent;
	font-size: 25px;
	font-weight: lighter;
	-moz-border-radius:  2px 16px 16px 16px;
	border-radius:  2px 16px 16px 16px;" />

            </td>

        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="l1" runat="server" ForeColor="red"></asp:Label>
            </td>
        </tr>
    </table>
    


</asp:Content>

