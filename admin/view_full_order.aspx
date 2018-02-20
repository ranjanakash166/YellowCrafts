<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="view_full_order.aspx.cs" Inherits="admin_view_full_order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">


      <asp:Repeater ID="r2" runat="server">
        <HeaderTemplate>
            <table border="1">
                <tr style="background-color:gray;color:white">
                    <td>ID</td>
                    <td>First Name</td>
                    <td>Last Name</td>
                    <td>City</td>
                    <td>State</td>
                    <td>Pincode</td>
                    
                </tr>
          
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
            <td><%#Eval("id") %></td>
            <td><%#Eval("firstname") %></td>
            <td><%#Eval("lastname") %></td>
            <td><%#Eval("city")%></td>
            <td><%#Eval("state")%></td>
            <td><%#Eval("pincode")%></td>
    
                </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>


<asp:Repeater ID="r1" runat="server">
    <HeaderTemplate>
        <table>
            <tr>
                <td>product_image</td>
                <td>product_name</td>
                <td>product_price</td>
                <td>product_qty</td>
            </tr>
    </HeaderTemplate>
    <ItemTemplate>
        <tr style="background-color:gray;color:white">
        <td><img src="../<%#Eval("product_img")%>" height="200" width="200"/></td>
        <td>
            <%#Eval("product_name") %>
        </td>
        <td>
            <%#Eval("product_price")%>
        </td>
        <td>
            <%#Eval("product_qty") %>
        </td>
        
         </tr>
    </ItemTemplate>
    <FooterTemplate>
        </table>
    </FooterTemplate>
</asp:Repeater>
<asp:Label id="l1" runat="server" Text=""></asp:Label>
</asp:Content>

