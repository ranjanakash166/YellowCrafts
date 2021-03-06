﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="product-1.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html>
 <head>
    <link href="item1.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>eCommerce Product Detail</title>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet" />
     
    <script type="text/javascript">
        document.onkeydown = function (e) {
            if (e.ctrlKey &&
            (e.keyCode === 67 ||
            e.keyCode === 86 ||
            e.keyCode === 85 ||
            e.keyCode === 117)) {
                alert('You are not allowed to do this');
                return false;
            } else {
                return true;
            }
        };
    </script>


  </head>

  <body>
    <script id="dsq-count-scr" src="//yellowcrafts.disqus.com/count.js" async></script>
	<div class="container">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6">
						
						<div class="preview-pic tab-content">
						  <div class="tab-pane active" id="pic-1"><img src="img/product-1.jpg" /></div>
						  <div class="tab-pane" id="pic-2"><img src="img/product-1.jpg"/></div>
						  <div class="tab-pane" id="pic-3"><img src="img/product-1.jpg" /></div>
						  <div class="tab-pane" id="pic-4"><img src="img/product-1.jpg" /></div>
						  <div class="tab-pane" id="pic-5"><img src="img/product-1.jpg" /></div>
						</div>
						<ul class="preview-thumbnail nav nav-tabs">
						  <li class="active"><a data-target="#pic-1" data-toggle="tab"><img src="img/product-1.jpg" /></a></li>
						  <li><a data-target="#pic-2" data-toggle="tab"><img src="img/product-1.jpg"/></a></li>
						  <li><a data-target="#pic-3" data-toggle="tab"><img src="img/product-1.jpg" /></a></li>
						  <li><a data-target="#pic-4" data-toggle="tab"><img src="img/product-1.jpg" /></a></li>
						  <li><a data-target="#pic-5" data-toggle="tab"><img src="img/product-1.jpg"/></a></li>
						</ul>
						
					</div>
					<div class="details col-md-6">
						<h3 class="product-title">Special Night Lamp</h3>
						<div class="rating">
							<div class="stars">
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star"></span>
								<span class="fa fa-star"></span>
							</div>
							<span class="review-no">41 reviews</span>
						</div>
						<p class="product-description">Special Night Lamp(product-id:YC01)</p>
						<h4 class="price">current price: <span>RS 249/Piece</span></h4>
						<p class="vote"><strong>99%</strong> of buyers enjoyed this product! <strong>(87 votes)</strong></p>
						<h5 class="sizes">sizes:
							<span class="size" data-toggle="tooltip" title="small">s</span>
							<span class="size" data-toggle="tooltip" title="medium">m</span>
							<span class="size" data-toggle="tooltip" title="large">l</span>
					
						</h5>
						<h5 class="colors">colors:
							<span class="color orange available" data-toggle="tooltip" title="Not In store"></span>
							<span class="color green"></span>
							<span class="color blue"></span>
						</h5>
						<div class="action">
							<button id="b2" class="add-to-cart btn btn-default" type="button" >add to cart</button>
							<button class="like btn btn-default" type="button"><span class="fa fa-heart"></span></button>
						</div>
					</div>
				</div>
			</div>
                         <p style="text-align:center;font-family:'Adobe Caslon Pro';font-size:20px;color:red;">Give Your Precious Reviews Here.So that We can Improve our Service</p>
		</div>
         <div id="disqus_thread">

         </div>
<script>

    var disqus_config = function () {
        this.page.url = 'http://yellowcrafts.com/product-1.aspx';
    this.page.identifier = 1; 
    };
   
    (function () { // DON'T EDIT BELOW THIS LINE
        var d = document, s = d.createElement('script');
        s.src = 'https://yellowcrafts.disqus.com/embed.js';
        s.setAttribute('data-timestamp', +new Date());
        (d.head || d.body).appendChild(s);
    })();
</script>
<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
                                

	</div>

        <script>
            $("#b2").wrap($('<a>', {
                href: 'http://yellowcrafts.com/user/product_desc.aspx?id=1'
            }));
     </script> 

  </body>
</html>

</asp:Content>

