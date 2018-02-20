<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html lang="">
<head>




    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    

    <!-- ===========================
  
    SITE TITLE
    =========================== -->
    <title>YellowCrafts</title>
    
    <!-- ===========================
    FAVICONS
    =========================== -->
    <link rel="icon" href="img/favicon.png">
    <link rel="apple-touch-icon" sizes="144x144" href="img/apple-touch-icon-ipad-retina.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-iphone-retina.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-ipad.png" />
    <link rel="apple-touch-icon" sizes="57x57" href="img/apple-touch-icon-iphone.png" />

    <link href="css/footer-distributed-with-contact-form.css" rel="stylesheet" />
    <!-- ===========================
    STYLESHEETS
    =========================== --> 
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="css/animate.css">        
    <link href="css/footer-distributed-with-address-and-phones.css" rel="stylesheet" />
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
    <link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">

    <link href="css/Footer-with-button-logo.css" rel="stylesheet" />
    

     <!-- mobile specific metas
   ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

 	<!-- CSS
   ================================================== -->
   <link rel="stylesheet" href="css/base.css">
   <link rel="stylesheet" href="css/vendor.css">  
   <link rel="stylesheet" href="css/main.css">  

   <!-- script
   ================================================== -->
	<script src="js/modernizr.js"></script>
	<script src="js/pace.min.js"></script>

    <!-- ===========================
    FONTS
    =========================== -->
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,900,600|Pacifico' rel='stylesheet' type='text/css'>
    
    <!-- ===========================
    GOOGLE ANALYTICS (Optional)
    =========================== -->
        
    <!-- #NOTE: Replace this line with your analytics code -->
    
    <!--ANALYTICS END-->

    <!--[if IE]>
        <script src="https://cdn.jsdelivr.net/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://cdn.jsdelivr.net/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

   
   
   <style>
       .link-button-color
{
    color: #fff;
}

.link-button-color:hover {
    text-decoration: none;
    color: #333;
}

hr.style18 { 
  height: 30px; 
  border-style: solid; 
  border-color: red; 
  border-width: 1px 0 0 0; 
  border-radius: 20px; 
} 
hr.style18:before { 
  display: block; 
  content: ""; 
  height: 30px; 
  margin-top: -31px; 
  border-style: solid; 
  border-color: #8c8b8b; 
  border-width: 0 0 2px 0; 
  border-radius: 20px; 
}

   </style>

    <script type="text/javascript">
        document.onkeydown = function (e) {
            if (e.ctrlKey &&
            (e.keyCode === 67 ||
            e.keyCode === 86 ||
            e.keyCode === 85 ||
            e.keyCode === 117)) {
                alert('You are not allowed to do this!! Do not waste Your time doing this');
                return false;
            } else {
                return true;
            }
        };
    </script>


</head>

<body oncontextmenu="return false">
    <!-- ===========================
    HERO SECTION
    =========================== -->
  

    <div id="fb-root"></div>
<script>(function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.8";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>


    <div class="row">

        <nav class="navbar navbar-inverse  navbar-fixed-top" role="navigation">
           
                 <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-admin">
                        <span class="sr-only">Toggle Menu</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand"></a>
                    <img src="logo.jpeg" style="height:83px;" id="akash">
                </div><!--/.navbar-header -->
                <div class="collapse navbar-collapse" id="navbar-admin">
                 <!---------------------------------MENU--------------------------------->
                    <ul class="nav navbar-nav">
                        <li><a href="user/display_item.aspx"><span class="glyphicon glyphicon-dashboard"></span><p style="color:red;font:bold 20px arial,verdana">Today's Deals</p></a></li>
                        <li><a href="user/display_item.aspx"><span class="glyphicon glyphicon-bullhorn"></span> <p style="color:red;font:bold 20px arial,verdana">Products</p></a></li>
                        <li><a href="user/display_item.aspx"><span class="glyphicon glyphicon-user"></span><p style="color:red;font:bold 20px arial,verdana" >Customer Services</p></a></li>
                        <li><a href="user/login1.aspx" class="hidden-lg hidden-md"><span class="glyphicon glyphicon-lock"></span> Log In</a></li>
                        <li><a href="user/registration.aspx" class="hidden-lg hidden-md"><span class="glyphicon glyphicon-pencil"></span> Sign Up</a></li>
                    </ul>
                    
                <!---------------------------------LOGIN - SIGNUP--------------------------------->
                    <ul class="nav navbar-nav navbar-right">
                        <asp:Label ID="Label1" runat="server" Text="Label">this is for name</asp:Label>
                        <li class="hidden-sm hidden-xs">
                            <button type="button" class="btn btn-success navbar-btn">
                                <a href="user/login1.aspx" class="link-button-color"><span class="glyphicon glyphicon-lock"></span> Log In</a>
                            </button>
                            <button type="button" class="btn btn-danger navbar-btn">
                                <a href="user/registration.aspx" class="link-button-color"><span class="glyphicon glyphicon-pencil"></span> Sign Up</a>
                            </button>
                        </li>
                       
                   </ul>

                 
                    
                <!---------------------------------SEARCH--------------------------------->
              
             </div><!--/.container-fluid -->
        </nav><!--/.navbar -->
     
<%--  --%>
    </div>


    

     
    <div id="hero">
        <div class="redoverlay">
            <div class="container">
                <div class="row">
                    <div class="herotext">
                        <h2 class="wow zoomInDown" data-wow-duration="3s">End Of Season Sale Started!</h2>
                        <h1 class="wow flipInY">YELLOWCRAFTS</h1>

                        <a class="btn btn-reverse wow zoomIn" href="#products">
                            <h3>To Save upto 50% off On All Products<span class="optional"></span></h3>                            
                        </a><!--#NOTE: texts inside the OPTIONAL tag above would be hidden on smaller mobile screens -->

                        <p class="wow fadeInUp" data-wow-duration="2s" style="font-size:large">Get Ready For Upcoming New Products</p>

                        <img class="bigbell wow tada infinite" data-wow-duration="30s" src="img/bell.png" alt="">
                    </div>

                    <div class="santa wow bounceInRight" data-wow-duration="20s">
                        <img src="img/santa.png" alt=""  height="400" width="400">
                    </div>
                    <div class="santa wow bounceInLeft" data-wow-duration="30s">
                        <img src="img/santa1.png" alt="" height="340" width="380">
                    </div>
                </div>
            </div>
        </div>
    </div><!--HERO SECTION END-->
    
    <!-- ===========================
    OVERVIEW SECTION
    =========================== --> 
    <div id="overview" class="container">       
        <!--SECTIONHEAD START-->
        <div class="sectionhead">            
            <h2 class="wow flipInY"><span class="highlight"> Best Craft Ever to Your Doorsteps</span></h2>
            <p><span class="highlight">
    Do you love crafts? Are you fond of decorating and beautifying the world around you? Do you think that you are filled with creativity?
    Come! Shop With us!</span>
</p>
              <hr class="style18"/><!--SEPARETOR LINE-->
        </div><!--SECTIONHEAD END-->
        
        <!--OVERVIEW ITEMS-->
     
    </div><!--OVERVIEW SECTION END-->
    
    <!-- ===========================
    CALL-TO-ACTION SECTION
    =========================== -->
    <div class="calltoaction">
    <div class="lightoverlay">
        <div class="container">

            <div class="col-md-4">
                <img src="img/tree.png" alt=""  height="450" width="400">
            </div><!--CALL-TO-ACTION IMAGE END-->

            <div class="sectionhead content col-md-4">
                <h2 style="text-align:center;"><span class="highlight"> Best Crafts Available</span></h2>
                <p style="text-align:center; color:red">The Joy of Gifting SomeOne Special is Unbeatable.<br /> <a href="#products" class="btn btn-default">OUR PRODUCTS</a></p>
               
            </div><!--CALL-TO-ACTION CONTENT END-->

            <div class="col-md-4">
                <img src="img/tree1.png" alt="" height="450" width="400">
            </div><!--CALL-TO-ACTION IMAGE END-->

        </div><!--CALL-TO-ACTION CONTAINER END-->
    </div><!--CALL-TO-ACTION OVERLAY END-->
</div><!--CALL-TO-ACTION END-->
    
    <!-- ===========================
    PRODUCTS SECTION
    =========================== -->
    <div id="products" class="container">

        <!--SECTIONHEAD START-->
        <div class="sectionhead text-center">
            <h2><span class="highlight">GIFTS YOU CAN NOT GO WRONG WITH</span> </h2>
            <p><span class="highlight">Buy Products At the Lowest Price. Extra Discount for all College students.</span> </p>
              <hr class="style18"/><!--SEPARETOR LINE-->
        </div><!--SECTIONHEAD END-->

        <!--FEATURED PRODUCT START-->


           <div class="featureditem row">
              <hr class="style18"/><!--SEPARETOR LINE-->
            <div class="col-md-5 text-center">
                <a href="earphoneholder.aspx">
                    <img class="productimg" src="img/product-15.jpg" alt="">
                </a>

                <!--DISCOUNT TAG-->
               
                <div class="offertag percentoffer bigtag">
                    <h4>50%</h4>
                    <p>off</p>
                </div>
                <!--DISCOUNT TAG END-->
            </div><!--PRODUCT IMAGE END-->

            <!--PRODUCT DETAILS STRART-->
            <div class="col-md-7">
                <h4><a href="earphoneholder.aspx">Earphone Holder(Product-id:YC15)</a></h4>

                <p></p>

                <p class="price">RS<span class="highlight">99</span> / piece</p>
                <p>Original Price: RS 198 , You Save:RS 99</p>

                <a href="http://yellowcrafts.com/user/product_desc.aspx?id=15" class="btn btn-default">Buy now</a>
                <a href="earphoneholder.aspx" class="btn btn-default">Product-Details</a>
            </div><!--ITEM DETAILS END-->
        </div><!--FEATURED PRODUCT END-->

      








        <div class="featureditem row">
              <hr class="style18"/><!--SEPARETOR LINE-->
            <div class="col-md-5 text-center">
                <a href="product-1.aspx">
                    <img class="productimg" src="img/product-1.jpg" alt="">
                </a>

                <!--DISCOUNT TAG-->
                <div class="offertag percentoffer bigtag">
                    <h4>50%</h4>
                    <p>off</p>
                </div>
                <!--DISCOUNT TAG END-->
            </div><!--PRODUCT IMAGE END-->

            <!--PRODUCT DETAILS STRART-->
            <div class="col-md-7">
                <h4><a href="product-1.aspx">Special Night Lamp (Product-id:YC01)</a></h4>

                <p></p>

                <p class="price">RS<span class="highlight">249</span> / piece</p>
                <p>Original Price: RS 498 , You Save:RS 249</p>

                <a href="http://yellowcrafts.com/user/product_desc.aspx?id=1" class="btn btn-default">Buy now</a>
                <a href="product-1.aspx" class="btn btn-default">Product-Details</a>
            </div><!--ITEM DETAILS END-->
        </div><!--FEATURED PRODUCT END-->

        <hr class="style18"/><!--SEPARETOR LINE-->


        <div class="featureditem row">
            <div class="col-md-5 text-center">
                <a href="product-13.aspx">
                    <img class="productimg" src="img/product-13.jpg" alt="" >
                </a>

                <!--DISCOUNT TAG-->
                <div class="offertag percentoffer bigtag">
                    <h4>100</h4>
                    <p>off</p>
                </div>
                <!--DISCOUNT TAG END-->
            </div><!--PRODUCT IMAGE END-->
            <!--PRODUCT DETAILS STRART-->
            <div class="col-md-7">
                <h4><a href="product-13.aspx">Frame your love (Product-id:YC13)</a></h4>

                <p></p>

                <p class="price">RS<span class="highlight">₹ 699</span> / piece</p>
                <p>Original Price: RS 799, You Save:RS 100</p>

                <a href="http://yellowcrafts.com/user/product_desc.aspx?id=2" class="btn btn-default">Buy now</a>
                <a href="product-13.aspx" class="btn btn-default">Product-Details</a>
            </div><!--ITEM DETAILS END-->
        </div><!--FEATURED PRODUCT END-->

        <hr class="style18"/><!--SEPARETOR LINE-->



        <div class="featureditem row">
            <div class="col-md-5 text-center">
                <a href="product-11.aspx">
                    <img class="productimg" src="img/product-11.jpg" alt="">
                </a>

                <!--DISCOUNT TAG-->
                <div class="offertag percentoffer bigtag">
                    <h4>50%</h4>
                    <p>off</p>
                </div>
                <!--DISCOUNT TAG END-->
            </div><!--PRODUCT IMAGE END-->
            <!--PRODUCT DETAILS STRART-->
            <div class="col-md-7">
                <h4><a href="product-11.aspx">3-D photo frame (Product-id:YC11)</a></h4>

                <p></p>

                <p class="price">RS<span class="highlight">₹ 1,399.00</span> / piece</p>
                <p>Original Price: RS 2798, You Save:RS 1399</p>

                <a href="http://yellowcrafts.com/user/product_desc.aspx?id=3" class="btn btn-default">Buy now</a>
                <a href="product-11.aspx" class="btn btn-default">Product-Details</a>
            </div><!--ITEM DETAILS END-->
        </div><!--FEATURED PRODUCT END-->
        <hr class="style18"/>
                <a href="all_products.aspx" class="btn btn-default">More Products</a>
                <a href="videos.aspx" class="btn btn-default">VIDEOS</a>
                <a href="payment.aspx" class="btn btn-default">PAYMENT</a>
              
              
                <a href="needhelp.aspx" class="btn btn-default">HELP CENTER</a>
               <a href="policy.aspx" class="btn btn-default">POLICY INFO</a>
               <a href="ybusi.aspx" class="btn btn-default">YellowCrafts Business</a>
         <hr class="style18" />
    </div><!--PRODUCTS SECTION END-->
    
    <!-- ===========================
    SUBSCRIBE SECTION
    =========================== -->
  
   
       
     



  <div id="subscribe">
        <div class="darkoverlay">
            <div class="container text-center">
                <img class="santaicon wow tada infinite" data-wow-duration="60s" src="img/santa-sm.png" alt="" height="200" width="200" >
                <div class="sectionhead">            
                    <h2>Don’t miss the <span class="highlight">upcoming hot deals</span> Anymore</h2>
                    <p>Just give us your email address below, and forget it. We’ll send you every time we have something special for you. No worries, We never send spam mails. And you can unsubscribe anytime as well.</p>    
                </div><!--SECTIONHEAD END-->            

             
                <div class="mailchimp">
                    <form>
                                                      
                            <input type="text" value="" name="FNAME" id="mce-FNAME" placeholder="First Name" required>
                            <input type="email" value="" name="EMAIL" id="mce-EMAIL" placeholder="Email Address" required>
                            <input id="subs" type="submit" value="Subscribe" name="subscribe" id="mc-embedded-subscribe" class="btn btn-inverse">
                    </form>
                </div>
            </div><!--SUBSCRIBE CONTAINER END-->
        </div><!--OVERLAY END-->
     
        <footer id="myFooter">
            <div class="container">
              
                <div class="row">
                    <div class="col-sm-3">
                         
                        <h2 class="logo"><a href="#"> YellowCrafts </a></h2>
                    </div>
                    <div class="col-sm-2">
                        <h5>Get started</h5>
                        <ul>
                            <li><a href="index.html">Home</a></li>
                            <li><a href="#">Sign up</a></li>
                     
                        </ul>
                    </div>
                    <div class="col-sm-2">
                        <h5>About us</h5>
                        <ul>
                            <li><a href="member.aspx">Company Information</a></li>
                            <li><a href="member.aspx">Contact us</a></li>
                            <li><a href="#">Reviews</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-2">
                        <h5>Support</h5>
                        <ul>
                            <li><a href="#">FAQ</a></li>
                            <li><a href="member.aspx">Help desk</a></li>
                            <li><a href="#">Forums</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-3">
                        <div>
                               <h5>Powered By-</h5>
                            <a href="https://msg91.com/startups/?utm_source=startup-banner"><img src="https://msg91.com/images/startups/msg91Badge.png" width="120" height="90" title="MSG91 - SMS for Startups" alt="Bulk SMS - MSG91"></a>
                        </div>
                   
                    </div>
                </div>



   
            </div>
            <div class="footer-copyright">
                <p style="color:red; font-size:large">© 2017 Copyright YellowCrafts</p>
                <p style="color:red; font-size:large">Designed & Developed by <a href="https://www.facebook.com/akash.ranjan.9883"> AKASH RANJAN</a> Webmaster IETE BIT MESRA RANCHI-835215</p>
                <br/>
                <p style="color:red; font-size:large">For Any Queries Related to Products & Prices contact <a href="https://www.facebook.com/creativeshashigupt1?fref=ts"> SHASHI GUPTA</a> (9060450743) (7254888235) CEO cum Senior-Artist @YellowCrafts</p>

            </div>
        </footer>

    </div><!--SUBSCRIBE SECTION END-->        
    
    <!-- ===========================
    FOOTER
    =========================== -->
 
    
    <!-- ===========================
    SOCIAL ICONS
    =========================== -->
    <div class="sticky-container">
		<ul class="sticky">
			<li>
				<a href="https://www.facebook.com/creativeshashigupta/">
                    <img title="" alt="" src="img/facebook.svg" />
                    <p>Facebook</p>
				</a>
			</li>
			
			<li>
				<a href="https://twitter.com/creativeshashi">
                    <img title="" alt="" src="img/twitter.svg" />
                    <p>Twitter</p>
				</a>
			</li>
			
		
			<li>
				<a href="https://www.linkedin.com/in/yellow-crafts-5a4729128/?trk=nav_responsive_tab_profile">
                    <img title="" alt="" src="img/linkedin.svg" />
                    <p>Linkedin</p>
				</a>
			</li>
			
			<li>
			    <a href="https://www.youtube.com/channel/UC-lFmQCo438vAg7pm4UNh_w">
                    <img title="" alt="" src="img/youtubehover.png" />
                    <p>YouTube</p>
				</a>
			</li>
			
			<li>
			    <a href="https://www.instagram.com/yellow_crafts/?hl=en">
                    <img title="" alt="" src="img/instagram.svg" />
                    <p>Instagram</p>
				</a>
			</li>

		</ul>
	</div>
    <!-- ===========================
    NECESSARY SCRIPTS
    =========================== --> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
    <script src="js/evenfly.js"></script>
    <script src="js/jquery.nicescroll.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/snowstorm-min.js"></script>
    <script>new WOW().init();</script>    
     <script> 
         $("#akash").wrap($('<a>', {
             href: 'Default.aspx'
         }));
     </script> 


     <script>
         $("#subs").wrap($('<a>', {
             href: 'subscription.aspx'
         }));
     </script> 



    <!--Start of Tawk.to Script-->
<script type="text/javascript">
    var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();
    (function () {
        var s1 = document.createElement("script"), s0 = document.getElementsByTagName("script")[0];
        s1.async = true;
        s1.src = 'https://embed.tawk.to/58c6bcca5b89e2149e1610af/default';
        s1.charset = 'UTF-8';
        s1.setAttribute('crossorigin', '*');
        s0.parentNode.insertBefore(s1, s0);
    })();
</script>
<!--End of Tawk.to Script-->


</body>
</html>
