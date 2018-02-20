<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="product_add.aspx.cs" Inherits="admin_product_add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <form id="f" runat="server">
    <h3>ADD PRODUCT PAGE</h3>
    <table>
        <tr>
            <td>PRODUCT-NAME</td>
            <td><asp:TextBox ID="t1" runat="server"></asp:TextBox></td>
        </tr>

          <tr>
            <td>PRODUCT-DESCRIPTION</td>
            <td><asp:TextBox ID="t2" runat="server"></asp:TextBox></td>
        </tr>


          <tr>
            <td>PRODUCT-PRICE</td>
            <td><asp:TextBox ID="t3" runat="server"></asp:TextBox></td>
        </tr>

          <tr>
            <td>PRODUCT-QUANTITY</td>
            <td><asp:TextBox ID="t4" runat="server"></asp:TextBox></td>
        </tr>

          <tr>
            <td>PRODUCT-IMAGE</td>
            <td><asp:FileUpload ID="f1" runat="server"  /></td>
        </tr>

        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="b1" runat="server" Text="UPLOAD" OnClick="b1_Click" />
            </td>
        </tr>

        <tr>
            <td>Select Category</td>
            <td>
                <asp:DropDownList ID="dd" runat="server"></asp:DropDownList>
            </td>
        </tr>

    </table>
        </form>
</asp:Content>

