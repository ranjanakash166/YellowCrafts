<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="needhelp.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <div style="background-color:black" class="jumbotron">
            <h1 style="color:red;text-align:center;">How Can I Help U?</h1>
            <br />
        </div>
    <br />
     <div class='row' style="text-align:center">
         <a href="signin.aspx" class="btn btn-default">LOGIN TO SEE YOUR ORDER AND TO RETURN/REPLACE YOUR ORDER</a>
    </div>
 

                  <div class="row" id='quearies' style="text-align:center">

    <div class="row primary_heading" style="color:red">
      Top FAQs</div>
     <ul class="row helpcenter_queries_list">
    <input type='hidden' id='show_view_more_option_querylist'  value="100">
 
        <li class="col-xs-12 list_item_class" title="How can I check my order status?">

                        
               <a href='#'>  
               How can I check my order status?</a>
                      </li>
                      <li class="col-xs-12 list_item_class" title="How can I cancel my order?">

                        
                         <a href='#'>  
               How can I cancel my order?</a>
                      </li>
                      <li class="col-xs-12 list_item_class" title="How can I return/replace an item?">

                        
                         <a href='#'>  
               How can I return/replace an item?</a>
                      </li>
                      <li class="col-xs-12 list_item_class" title="When can I expect refund for my returned item?">

                        
                         <a href='#'>  
               When can I expect refund for my returned item?</a>
                      </li>
                      <li class="col-xs-12 list_item_class" title="What are the different modes of payment available?">

                        
                         <a href='#'>  
               What are the different modes of payment available?</a>
                      </li>
                      <li class="col-xs-12 list_item_class" title="I don't remember my password. Help!">

                        
                         <a href='#'>  
               I don't remember my password. Help!</a>
                      </li>
                   

                      </ul>
       </div>
 
</asp:Content>

