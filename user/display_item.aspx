<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="display_item.aspx.cs" Inherits="user_display_item" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <asp:Repeater ID="d1" runat="server">

        <HeaderTemplate>
           
        </HeaderTemplate>
         
      <ItemTemplate>
        
      <div class="products" style="text-align:right">
        
        <ul>

          <li class="product"> <a href="product_desc.aspx?id=<%#Eval("id") %>"><img src="../<%#Eval("product_img") %> " alt="" /></a>
            <div class="product-info">

              <h3><%#Eval("product_name") %></h3>

               <div class="product-desc">

                 <h4>Available quantity :<%#Eval("product_qty")%></h4>
               
                 <strong class="price">RS<%#Eval("product_price")%></strong> 

              </div>

            </div>
          </li>

          </ul>


      </div>

        </ItemTemplate>

     <FooterTemplate>
        
     </FooterTemplate>

    </asp:Repeater>
    
</asp:Content>

