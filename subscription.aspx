<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="subscription.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>YellowCrafts</title>
    <meta name="" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/fonts.css">
    <link href="https://fonts.googleapis.com/css?family=Arvo|Josefin+Sans|Lobster|Quicksand:300" rel="stylesheet"> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.button5 {
    background-color: #00bfff;
    border-radius: 25px;
    padding:5px 0px 5px 0px;
}

.button5:hover {
    background-color: #262626;
    border-radius: 25px;
   -webkit-transition-duration: 0.8s; /* Safari */
    transition-duration: 0.8s;
}
</style>
</head>



<body>
<div class="container-fluid">
    <div class="row">
       <center>
          <div class="col-md-4">
          </div>
          <div class="col-md-4">
          <h2> thanks for Subscribing</h2>
          <img src="Dire.png" height="200px" width="200px">  
          <h2>You are Subscribed Successfully We will inform you about the latest Deals</h2>
          </div>
          <div class="col-md-4">
          </div>
           </center>
       </div>
         <br>
       <div class="row">
         <div class="col-md-4">
         </div>
         <div class="col-md-4">
           <center>
            <a href="http://yellowcrafts.com/">
            <div class="button5"><p class="font3" >Place orders</p></div>
            </a>
            </center>
           </div>
         <div class="col-md-4"></div>
       </div>
    
</div>

</body>


</html>
</asp:Content>

