<!DOCTYPE HTML>
<html>
<head>
<title>Stationary Management</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
        $(document).ready(function() {
            $(".dropdown img.flag").addClass("flagvisibility");

            $(".dropdown dt a").click(function() {
                $(".dropdown dd ul").toggle();
            });
                        
            $(".dropdown dd ul li a").click(function() {
                var text = $(this).html();
                $(".dropdown dt a span").html(text);
                $(".dropdown dd ul").hide();
                $("#result").html("Selected value is: " + getSelectedValue("sample"));
            });
                        
            function getSelectedValue(id) {
                return $("#" + id).find("dt a span.value").html();
            }

            $(document).bind('click', function(e) {
                var $clicked = $(e.target);
                if (! $clicked.parents().hasClass("dropdown"))
                    $(".dropdown dd ul").hide();
            });


            $("#flagSwitcher").click(function() {
                $(".dropdown img.flag").toggleClass("flagvisibility");
            });
        });
     </script>
<!-- start menu -->     
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<!-- end menu -->
<!-- top scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
   <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>
</head>
<body>
  <div class="header-top">
	 <div class="wrap"> 
		<div class="logo">
			<a href="index.html"><img src="images/logo_1.png" alt=""/></a>
	    </div>
	    <div class="cssmenu">
		   <ul>
                       <li>Welcome : <b><%=session.getAttribute("fullname").toString()%></b></li>
			 <li class="active"><a href="index.jsp">Log Out</a></li> 
			<!--  
			 <li><a href="login.html">My Account</a></li> 
			 <li><a href="checkout.html">CheckOut</a></li> -->
		   </ul>
		</div>
		<!--<ul class="icon2 sub-icon2 profile_img">
			<li><a class="active-icon c2" href="#"> </a>
				<ul class="sub-icon2 list">
					<li><h3>Products</h3><a href=""></a></li>
					<li><p>Lorem ipsum dolor sit amet, consectetuer  <a href="">adipiscing elit, sed diam</a></p></li>
				</ul>
			</li>
		</ul>-->
		<div class="clear"></div>
 	</div>
   </div>
   <div class="header-bottom">
   	<div class="wrap">
   		<!-- start header menu -->
		<ul class="megamenu skyblue">
		    <li><a class="color1" href="#">Home</a></li>
			<!--<li class="grid"><a class="color2" href="#">Men</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>popular</h4>
								<ul>
									<li><a href="shop.html">new arrivals</a></li>
									<li><a href="shop.html">men</a></li>
									<li><a href="shop.html">women</a></li>
									<li><a href="shop.html">accessories</a></li>
									<li><a href="shop.html">kids</a></li>
									<li><a href="shop.html">login</a></li>
								</ul>	
							</div>
							<div class="h_nav">
								<h4 class="top">men</h4>
								<ul>
									<li><a href="shop.html">new arrivals</a></li>
									<li><a href="shop.html">men</a></li>
									<li><a href="shop.html">women</a></li>
									<li><a href="shop.html">accessories</a></li>
									<li><a href="shop.html">kids</a></li>
									<li><a href="shop.html">style videos</a></li>
								</ul>	
							</div>
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>style zone</h4>
								<ul>
									<li><a href="shop.html">men</a></li>
									<li><a href="shop.html">women</a></li>
									<li><a href="shop.html">accessories</a></li>
									<li><a href="shop.html">kids</a></li>
									<li><a href="shop.html">brands</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<img src="images/nav_img.jpg" alt=""/>
					</div>
				</div>
				</li>
  			   <li class="active grid"><a class="color4" href="#">Women</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>shop</h4>
								<ul>
									<li><a href="shop.html">new arrivals</a></li>
									<li><a href="shop.html">men</a></li>
									<li><a href="shop.html">women</a></li>
									<li><a href="shop.html">accessories</a></li>
									<li><a href="shop.html">kids</a></li>
									<li><a href="shop.html">brands</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>help</h4>
								<ul>
									<li><a href="shop.html">trends</a></li>
									<li><a href="shop.html">sale</a></li>
									<li><a href="shop.html">style videos</a></li>
									<li><a href="shop.html">accessories</a></li>
									<li><a href="shop.html">kids</a></li>
									<li><a href="shop.html">style videos</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>my company</h4>
								<ul>
									<li><a href="shop.html">trends</a></li>
									<li><a href="shop.html">sale</a></li>
									<li><a href="shop.html">style videos</a></li>
									<li><a href="shop.html">accessories</a></li>
									<li><a href="shop.html">kids</a></li>
									<li><a href="shop.html">style videos</a></li>
								</ul>	
							</div>												
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>account</h4>
								<ul>
									<li><a href="shop.html">login</a></li>
									<li><a href="shop.html">create an account</a></li>
									<li><a href="shop.html">create wishlist</a></li>
									<li><a href="shop.html">my shopping bag</a></li>
									<li><a href="shop.html">brands</a></li>
									<li><a href="shop.html">create wishlist</a></li>
								</ul>	
							</div>						
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>popular</h4>
								<ul>
									<li><a href="shop.html">new arrivals</a></li>
									<li><a href="shop.html">men</a></li>
									<li><a href="shop.html">women</a></li>
									<li><a href="shop.html">accessories</a></li>
									<li><a href="shop.html">kids</a></li>
									<li><a href="shop.html">style videos</a></li>
								</ul>	
							</div>
						</div>
						<div class="col1">
						 <div class="h_nav">
						   <img src="images/nav_img1.jpg" alt=""/>
						 </div>
						</div>
					</div>
					<div class="row">
						<div class="col2"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
					</div>
    			</li>				
				<li><a class="color5" href="#">Kids</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>popular</h4>
								<ul>
									<li><a href="shop.html">new arrivals</a></li>
									<li><a href="shop.html">men</a></li>
									<li><a href="shop.html">women</a></li>
									<li><a href="shop.html">accessories</a></li>
									<li><a href="shop.html">kids</a></li>
									<li><a href="shop.html">login</a></li>
								</ul>	
							</div>
							<div class="h_nav">
								<h4 class="top">man</h4>
								<ul>
									<li><a href="shop.html">new arrivals</a></li>
									<li><a href="shop.html">men</a></li>
									<li><a href="shop.html">women</a></li>
									<li><a href="shop.html">accessories</a></li>
									<li><a href="shop.html">kids</a></li>
									<li><a href="shop.html">style videos</a></li>
								</ul>	
							</div>
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>style zone</h4>
								<ul>
									<li><a href="shop.html">men</a></li>
									<li><a href="shop.html">women</a></li>
									<li><a href="shop.html">accessories</a></li>
									<li><a href="shop.html">kids</a></li>
									<li><a href="shop.html">brands</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<img src="images/nav_img2.jpg" alt=""/>
					</div>
				</div>
				</li>
				<li><a class="color6" href="#">Sale</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>shop</h4>
								<ul>
									<li><a href="shop.html">new arrivals</a></li>
									<li><a href="shop.html">men</a></li>
									<li><a href="shop.html">women</a></li>
									<li><a href="shop.html">accessories</a></li>
									<li><a href="shop.html">kids</a></li>
									<li><a href="shop.html">brands</a></li>
								</ul>	
							</div>	
							<div class="h_nav">
								<h4 class="top">my company</h4>
								<ul>
									<li><a href="shop.html">trends</a></li>
									<li><a href="shop.html">sale</a></li>
									<li><a href="shop.html">style videos</a></li>
									<li><a href="shop.html">accessories</a></li>
									<li><a href="shop.html">kids</a></li>
									<li><a href="shop.html">style videos</a></li>
								</ul>	
							</div>												
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>man</h4>
								<ul>
									<li><a href="shop.html">new arrivals</a></li>
									<li><a href="shop.html">men</a></li>
									<li><a href="shop.html">women</a></li>
									<li><a href="shop.html">accessories</a></li>
									<li><a href="shop.html">kids</a></li>
									<li><a href="shop.html">style videos</a></li>
								</ul>	
							</div>						
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>help</h4>
								<ul>
									<li><a href="shop.html">trends</a></li>
									<li><a href="shop.html">sale</a></li>
									<li><a href="shop.html">style videos</a></li>
									<li><a href="shop.html">accessories</a></li>
									<li><a href="shop.html">kids</a></li>
									<li><a href="shop.html">style videos</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>account</h4>
								<ul>
									<li><a href="shop.html">login</a></li>
									<li><a href="shop.html">create an account</a></li>
									<li><a href="shop.html">create wishlist</a></li>
									<li><a href="shop.html">my shopping bag</a></li>
									<li><a href="shop.html">brands</a></li>
									<li><a href="shop.html">create wishlist</a></li>
								</ul>	
							</div>						
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>my company</h4>
								<ul>
									<li><a href="shop.html">trends</a></li>
									<li><a href="shop.html">sale</a></li>
									<li><a href="shop.html">style videos</a></li>
									<li><a href="shop.html">accessories</a></li>
									<li><a href="shop.html">kids</a></li>
									<li><a href="shop.html">style videos</a></li>
								</ul>	
							</div>
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>popular</h4>
								<ul>
									<li><a href="shop.html">new arrivals</a></li>
									<li><a href="shop.html">men</a></li>
									<li><a href="shop.html">women</a></li>
									<li><a href="shop.html">accessories</a></li>
									<li><a href="shop.html">kids</a></li>
									<li><a href="shop.html">style videos</a></li>
								</ul>	
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col2"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
				</div>
				</li>
				<li><a class="color7" href="#">Customize</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>shop</h4>
								<ul>
									<li><a href="shop.html">new arrivals</a></li>
									<li><a href="shop.html">men</a></li>
									<li><a href="shop.html">women</a></li>
									<li><a href="shop.html">accessories</a></li>
									<li><a href="shop.html">kids</a></li>
									<li><a href="shop.html">brands</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>help</h4>
								<ul>
									<li><a href="shop.html">trends</a></li>
									<li><a href="shop.html">sale</a></li>
									<li><a href="shop.html">style videos</a></li>
									<li><a href="shop.html">accessories</a></li>
									<li><a href="shop.html">kids</a></li>
									<li><a href="shop.html">style videos</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>my company</h4>
								<ul>
									<li><a href="shop.html">trends</a></li>
									<li><a href="shop.html">sale</a></li>
									<li><a href="shop.html">style videos</a></li>
									<li><a href="shop.html">accessories</a></li>
									<li><a href="shop.html">kids</a></li>
									<li><a href="shop.html">style videos</a></li>
								</ul>	
							</div>												
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>account</h4>
								<ul>
									<li><a href="shop.html">login</a></li>
									<li><a href="shop.html">create an account</a></li>
									<li><a href="shop.html">create wishlist</a></li>
									<li><a href="shop.html">my shopping bag</a></li>
									<li><a href="shop.html">brands</a></li>
									<li><a href="shop.html">create wishlist</a></li>
								</ul>	
							</div>						
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>my company</h4>
								<ul>
									<li><a href="shop.html">trends</a></li>
									<li><a href="shop.html">sale</a></li>
									<li><a href="shop.html">style videos</a></li>
									<li><a href="shop.html">accessories</a></li>
									<li><a href="shop.html">kids</a></li>
									<li><a href="shop.html">style videos</a></li>
								</ul>	
							</div>
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>popular</h4>
								<ul>
									<li><a href="shop.html">new arrivals</a></li>
									<li><a href="shop.html">men</a></li>
									<li><a href="shop.html">women</a></li>
									<li><a href="shop.html">accessories</a></li>
									<li><a href="shop.html">kids</a></li>
									<li><a href="shop.html">style videos</a></li>
								</ul>	
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col2"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
    				</div>
				</li>
				<li><a class="color8" href="#">Shop</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>style zone</h4>
								<ul>
									<li><a href="shop.html">men</a></li>
									<li><a href="shop.html">women</a></li>
									<li><a href="shop.html">accessories</a></li>
									<li><a href="shop.html">kids</a></li>
									<li><a href="shop.html">brands</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>popular</h4>
								<ul>
									<li><a href="shop.html">new arrivals</a></li>
									<li><a href="shop.html">men</a></li>
									<li><a href="shop.html">kids</a></li>
									<li><a href="shop.html">accessories</a></li>
									<li><a href="shop.html">login</a></li>
								</ul>	
							</div>
							<div class="h_nav">
								<h4 class="top">man</h4>
								<ul>
									<li><a href="shop.html">new arrivals</a></li>
									<li><a href="shop.html">accessories</a></li>
									<li><a href="shop.html">kids</a></li>
									<li><a href="shop.html">style videos</a></li>
								</ul>	
							</div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
				</div>
				</li>
				<li><a class="color9" href="#">Football</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>shop</h4>
								<ul>
									<li><a href="shop.html">new arrivals</a></li>
									<li><a href="shop.html">men</a></li>
									<li><a href="shop.html">women</a></li>
									<li><a href="shop.html">accessories</a></li>
									<li><a href="shop.html">kids</a></li>
									<li><a href="shop.html">brands</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>help</h4>
								<ul>
									<li><a href="shop.html">trends</a></li>
									<li><a href="shop.html">sale</a></li>
									<li><a href="shop.html">style videos</a></li>
									<li><a href="shop.html">accessories</a></li>
									<li><a href="shop.html">kids</a></li>
									<li><a href="shop.html">style videos</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>my company</h4>
								<ul>
									<li><a href="shop.html">trends</a></li>
									<li><a href="shop.html">sale</a></li>
									<li><a href="shop.html">style videos</a></li>
									<li><a href="shop.html">accessories</a></li>
									<li><a href="shop.html">kids</a></li>
									<li><a href="shop.html">style videos</a></li>
								</ul>	
							</div>												
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>account</h4>
								<ul>
									<li><a href="shop.html">login</a></li>
									<li><a href="shop.html">create an account</a></li>
									<li><a href="shop.html">create wishlist</a></li>
									<li><a href="shop.html">my shopping bag</a></li>
									<li><a href="shop.html">brands</a></li>
									<li><a href="shop.html">create wishlist</a></li>
								</ul>	
							</div>						
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>my company</h4>
								<ul>
									<li><a href="shop.html">trends</a></li>
									<li><a href="shop.html">sale</a></li>
									<li><a href="shop.html">style videos</a></li>
									<li><a href="shop.html">accessories</a></li>
									<li><a href="shop.html">kids</a></li>
									<li><a href="shop.html">style videos</a></li>
								</ul>	
							</div>
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>popular</h4>
								<ul>
									<li><a href="shop.html">new arrivals</a></li>
									<li><a href="shop.html">men</a></li>
									<li><a href="shop.html">women</a></li>
									<li><a href="shop.html">accessories</a></li>
									<li><a href="shop.html">kids</a></li>
									<li><a href="shop.html">style videos</a></li>
								</ul>	
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col2"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
    				</div>
				</li>-->
        <li><a class="color1" href="show_inventory.jsp">INVENTORY</a></li>
        <li><a class="color11" href="old_inventory.jsp">OLD INVENTORY</a></li>
        <li><a class="color11" href="scrap_inventory.jsp">SCRAP INVENTORY</a></li>
         <li><a class="color6" href="weekly_report.jsp">WEEKLY REPORT</a></li>
         <li><a class="color6" href="monthly_report.jsp">MONTHLY REPORT</a></li>
         <li><a class="color6" href="yearly_report.jsp">YEARLY REPORT</a></li>
       
        <!--<li><a class="color12" href="#">Basketball</a></li>-->
		   </ul>
		   <div class="clear"></div>
     	</div>
       </div>
