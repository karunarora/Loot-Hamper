

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Div</title>
    </head>
    <body>
        
        <div class="lightbox">
		<div class="lightbox-content">
			<img src="" draggable="false">
		</div>
	</div>
	<div class="overlay"></div>

	<!--  PRELOADER -->
	<div class="page-preloader open">
		<span class="loader"><span class="loader-inner"></span></span>
	</div>
	<!-- .END PRELOADER -->
        
        <div class="body-container">
            
            <!--Login menu-->
            
          <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.jsp">Loot Hamper</a>
    </div>
    
    <ul class="nav navbar-nav navbar-right">
        <%
         String str=(String)session.getAttribute("user");
        String str1=(String)session.getAttribute("user1");
        if(str==null)
        {
            %><li><button class="btn-link navbar-btn" style="padding-top: 5px; text-decoration: none;" onclick="document.getElementById('modal-wrapper1').style.display='block'"><span class="fa fa-id-card"></span> Sign Up</button></li>
      <li><button class="btn-link navbar-btn" style="padding-top: 5px; text-decoration: none;"onclick="document.getElementById('modal-wrapper').style.display='block'"><span class="fa fa-sign-out"></span> Login</button></li>
    <%
        }else{
        %>
      <li> <span class="navbar-text">
    Welcome: <%=str1%>
  </span> </li>
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">My Account <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="user.jsp">Manage Account</a></li>
          <li><a href="friendlist.jsp">Friend List</a></li>
          <li><a href="orderSummary.jsp">Your Orders</a></li>
          <li><a href="logout">Logout</a></li>
        </ul>
      </li>
      <li><a href="checkout.jsp" ><img src="images/cart_1.png" width="35px" height="30px" style="margin-top: -10px;margin-bottom: -10px" ></a></li>
      
      <%
        
        }
        %>
      </ul>
  </div>
</nav>
  
            <!--Login menu-->
            
		<!-- Header -->
		<div class="container-header bgr-change">
			<div class="container-fluid">
				<div class="row">
					<div class="col-xs-12">
						<div class="header-wrapper">
							<header class="clearfix">
								<a href="/" class="logo">
									<img alt="LootHamperLogo" src="images/loot_hamper.png" class="img-responsive">
								</a>
								<div class="menu-collapser outer">
									<div class="collapse-button collapse-button-open collapse-style-1"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></div>
								</div>
								<div class="main-menu menu-right menu-mega effect-1" data-width-mobile="5000" data-width-mega-menu="mega-menu-100">
									<nav>
										<ul class="menu">
											<li>
												<a href="#home">Home</a>
											</li>
											<li class="menu-simple">
												<a href="#about">About</a>
											</li>
											<li class="">
												<a href="#portfolio">Categories</a>
											</li>
											<li class="menu-simple">
												<a href="#services">Services</a>
											</li>
											<li class="menu-simple">
												<a href="Shop.jsp">Shop</a>
											</li>
                                                                                        <li class="menu-simple">
												<a href="sellerLogin.jsp">Seller</a>
											</li>
                                                                                        <li class="menu-simple">
												<a href="adminLogin.jsp">Admin</a>
											</li>
											<li class="menu-simple">
												<a href="#contact">Contact</a>
											</li>
										</ul>
									</nav>
								</div>
								<ul class="header-right menu socials text-right clearfix ">
									<li><a href="#" target="_blank"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#" target="_blank"><i class="fa fa-instagram"></i></a></li>
									<li><a href="#" target="_blank"><i class="fa fa-vimeo"></i></a></li>
									<li><a href="#" target="_blank"><i class="fa fa-twitter"></i></a></li>
								</ul>
							</header>
						</div>

					</div>
				</div>
			</div>
		</div>
		<!-- Slider -->
		<div id="home" class="container-fluid mt30 paddingbot200">
			<div class="row">
				<div class="col-xs-12">
					<ul class="scene" data-height-lg="600" data-height-sm="350" data-height-xs="300" data-calibrate-x="false" data-calibrate-y="true" data-invert-x="true" data-invert-y="true" data-limit-x="80" data-limit-y="80" data-scalar-x="20" data-scalar-y="20">
						<li class="layer" data-depth="1.00">
							<img alt="Loot Hamper" class="cup" src="images/header_main.png" class="img-responsive" data-width="100%" data-top="10%" data-left="5%" data-right="auto" data-bottom="auto">
							<img alt="Loot Hamper" class="cup-mobile" src="images/header_main.png" class="img-responsive" data-width="100%" data-top="10%" data-left="5%" data-right="auto" data-bottom="auto">
						</li>
						<li class="layer" data-depth="0.70">
							<img alt="Loot Hamper" src="images/header_2.png" class="img-responsive" data-width="80%" data-top="20%" data-left="auto" data-right="35%" data-bottom="auto">
						</li>
						<li class="layer" data-depth="0.80">
							<img alt="Loot Hamper" src="images/header_5.png" class="img-responsive" data-width="10%" data-top="60%" data-left="10%" data-right="auto" data-bottom="auto">
						</li>
						<li class="layer" data-depth="0.60">
							<img alt="Loot Hamper" src="images/header_4.png" class="img-responsive" data-width="7%" data-top="16%" data-left="80%" data-right="auto" data-bottom="auto">
						</li>
						<li class="layer" data-depth="0.50">
							<img alt="Loot Hamper" src="images/header_3.png" class="img-responsive absolute-center" data-width="30%" data-top="30%" data-left="50%" data-right="auto" data-bottom="auto">
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- .End Slider -->

		<!-- Bout say -->
		<div id="about" class="section section-no-padding container">
			<div class="row">
				<div class="col-xs-12 col-sm-10 col-sm-offset-1">
					<div class="about-say mt35 no-padding">
                                            <h1><b>WHO WE ARE</b></h1><br/>
						<div class="content-text italic">No matter what you geek out about, Loot Hamper™ has a monthly subscription box for you! Exclusive collectibles, apparel and gear delivered to your door.</div>
						
					</div>
				</div>
			</div>
		</div>
		<!-- .Bout say -->

		<!-- Section 1 -->
		<div class="section container">
			<div class="row">
				<div class="col-xs-12 col-sm-4 ">
					<div class="service-icon-container">
						<img class="service-icon-left" src="images/exclusive-loot.gif" alt="Graphic Design Windsor">
						<div class="icon-content">
							<h4 class="title title-left">EXCLUSIVE LOOT</h4>
							<div class="text italic f14 c5 service-text">
								Exclusive figures, t-shirts, home goods, and more!	</div>
						</div>
					</div>
				</div>

				<div class="col-xs-12 col-sm-4 ">
					<div class="service-icon-container">
						<img class="service-icon-left" src="images/surprise-every-month.gif" alt="Graphic Design Windsor">
						<div class="icon-content">
							<h4 class="title">A SURPRISE EVERY MONTH</h4>
							<div class="text italic f14 c5 service-text">
								Treat yourself every month or give the gift of geeking out to a friend or loved one!</div>
						</div>
					</div>
				</div>

				<div class="col-xs-12 col-sm-4 ">
					<div class="service-icon-container">
						<img class="service-icon-left" src="images/cancel-anytime.gif" alt="Graphic Design Windsor">
						<div class="icon-content">
							<h4 class="title">CANCELLING IS EASY</h4>
							<div class="text italic f14 c5 service-text">
								You don’t even need to call! Update your subscription info or cancel online. Our Support team is available any time.</div>
						</div>
					</div>
				</div>

				
			</div>
		</div>
		<!-- .End Section 1 -->

		

		<!-- Section 2 -->
		<div id="portfolio" class="section section-our-work pt0 pb0 ">
			<div class="container">
				<nav class="navbar navbar-default">
					<div class="row row-eq-height">
						<div class="navbar-header col-xs-12 col-lg-4 col-md-3">
							<div class="item">
								<div class="text f16 c5 italic">Have a look at our</div>
								<h4 class="heading c2">Hampers</h4>
							</div>
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="col-xs-12 col-lg-8 col-md-9 flex_justify_content ">
							<div class='row'>
								<div class="item " data-width="992" data-align="bottom" data-extra-width='-10'>
									<div class="collapse navbar-collapse" id="myNavbar">
										<ul class="menu menu-filter menu-style-2">
											<li class="active"><a href="#" data-filter="*">ALL HAMPERS</a></li>
											<li><a href="#" data-filter=".item-graphic-design">DC</a></li>
											<li><a href="#" data-filter=".item-web-development">MARVEL</a></li>
											<li><a href="#" data-filter=".item-video-production">WWE</a></li>
											<li><a href="#" data-filter=".item-print">WEARABLES</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</nav>
			</div>
			<div class="section container-full section-no-padding mt60">
				<div class="row">
					<div class="container-isotope isotope_hover_style2 detail-full">


						<div class="item isotope-item item-web-development">
							<img alt="Loot Hamper" src="images/portfolio/1.jpg" class="img-responsive img-full portfolio-image">
							<div class="detail">
								<h4 class="title">Mystery Geek & Gamer collectibles, apparel, & more!</h4>
								<a href="#" class="link">Loot Hamper</a>
								<ul class="extra-link">
									<li>
										<a class="show-more" href="#"><img alt="show" src="images/defaults/add.png"></a>
									</li>
									<li>
										<a class="read-more" href="#" target="_blank"><img alt="Shop" src="images/defaults/link.png"></a>
									</li>
								</ul>
							</div>
						</div>

						<div class="item isotope-item item-web-development">
							<img alt="Loot Hamper DX" src="images/portfolio/2.jpg" class="img-responsive img-full portfolio-image">
							<div class="detail">
								<h4 class="title">The super crate for super fans! Premium collectibles & more!</h4>
								<a href="#" class="link">Loot Hamper DX</a>
								<ul class="extra-link">
									<li>
										<a class="show-more" href="#"><img alt="Loot Hamper" src="images/defaults/add.png"></a>
									</li>
									<li>
										<a class="read-more" href="#" target="_blank"><img alt="Loot Hamper" src="images/defaults/link.png"></a>
									</li>
								</ul>
							</div>
						</div>

						<div class="item isotope-item item-graphic-design">
							<img alt="Loot Hamper" src="images/portfolio/3.jpg" class="img-responsive img-full portfolio-image">
							<div class="detail">
								<h4 class="title">Cool Collectibles from Fan-Favorite Anime & Manga Series</h4>
								<a href="#" class="link">Loot Anime</a>
								<ul class="extra-link">
									<li>
										<a class="show-more" href="#"><img alt="Loot Hamper" src="images/defaults/add.png"></a>
									</li>
                                                                        <li>
										<a class="read-more" href="#" target="_blank"><img alt="Loot Hamper" src="images/defaults/link.png"></a>
									</li>
								</ul>
							</div>
						</div>

						<div class="item isotope-item item-web-development item-video-production">
							<img alt="Loot Hamper" src="images/portfolio/4.jpg" class="img-responsive img-full portfolio-image">
							<div class="detail">
								<h4 class="title">The Best Collectibles from the Greatest Games</h4>
								<a href="#" class="link">Loot Gaming</a>
								<ul class="extra-link">
									<li>
										<a class="show-more" href="#"><img alt="Loot Hamper" src="images/defaults/add.png"></a>
									</li>
									<li>
										<a class="read-more" href="#" target="_blank"><img alt="Loot Hamper" src="images/defaults/link.png"></a>
									</li>
								</ul>
							</div>
						</div>

						<div class="item isotope-item item-web-development">
							<img alt="Loot Hamper" src="images/portfolio/5.jpg" class="img-responsive img-full portfolio-image">
							<div class="detail">
								<h4 class="title">Two pairs of subtly stylish socks featuring your favorite television shows, movie, comics, and games</h4>
								<a href="#" class="link">Loot Socks</a>
								<ul class="extra-link">
									<li>
										<a class="show-more" href="#"><img alt="Loot Hamper" src="images/defaults/add.png"></a>
									</li>
									<li>
										<a class="read-more" href="#" target="_blank"><img alt="Loot Hamper" src="images/defaults/link.png"></a>
									</li>
								</ul>
							</div>
						</div>

						<div class="item isotope-item item-graphic-design">
							<img alt="Loot Hamper" src="images/portfolio/6.jpg" class="img-responsive img-full portfolio-image">
							<div class="detail">
								<h4 class="title">Stylish and exclusively designed t-shirts featuring your favorite television shows, movies, comics, and games</h4>
								<a href="#0" class="link">Loot Tees</a>
								<ul class="extra-link">
									<li>
										<a class="show-more" href="#"><img alt="Loot Hamper" src="images/defaults/add.png"></a>
									</li>
								</ul>
							</div>
						</div>

						<div class="item isotope-item item-web-development">
							<img alt="Loot Hamper" src="images/portfolio/7.jpg" class="img-responsive img-full portfolio-image">
							<div class="detail">
								<h4 class="title">Authentic gear and collectibles featuring the superstars of the WWE</h4>
								<a href="#" class="link">WWE Slam Crate</a>
								<ul class="extra-link">
									<li>
										<a class="show-more" href="#"><img alt="Loot Hamper" src="images/defaults/add.png"></a>
									</li>
									<li>
										<a class="read-more" href="#" target="_blank"><img alt="Loot Hamper" src="images/defaults/link.png"></a>
									</li>
								</ul>
							</div>
						</div>

						<div class="item isotope-item item-graphic-design">
							<img alt="Loot Hamper" src="images/portfolio/8.jpg" class="img-responsive img-full portfolio-image">
							<div class="detail">
								<h4 class="title">The Best Collectibles from around the Verse</h4>
								<a href="#0" class="link">Firefly Cargo Crate</a>
								<ul class="extra-link">
									<li>
										<a class="show-more" href="#"><img alt="Loot Hamper" src="images/defaults/add.png"></a>
									</li>
								</ul>
							</div>
						</div>

						<div class="item isotope-item item-web-development item-graphic-design">
							<img alt="Loot Hamper" src="images/portfolio/9.jpg" class="img-responsive img-full portfolio-image">
							<div class="detail">
								<h4 class="title">WEB DEVELOPMENT, GRAPHIC DESIGN</h4>
								<a href="#" class="link">FL3XLife</a>
								<ul class="extra-link">
									<li>
										<a class="show-more" href="#"><img alt="Loot Hamper" src="images/defaults/add.png"></a>
									</li>
									<li>
										<a class="read-more" href="#" target="_blank"><img alt="Loot Hamper" src="images/defaults/link.png"></a>
									</li>
								</ul>
							</div>
						</div>

						<div class="item isotope-item item-graphic-design item-web-development">
							<img alt="Loot Hamper" src="images/portfolio/10.jpg" class="img-responsive img-full portfolio-image">
							<div class="detail">
								<h4 class="title">GRAPHIC DESIGN, WEB DEVELOPMENT</h4>
								<a href="#0" class="link">Mosquito Killers Brand Development</a>
								<ul class="extra-link">
									<li>
										<a class="show-more" href="#"><img alt="Loot Hamper" src="images/defaults/add.png"></a>
									</li>
									<li>
										<a class="read-more" href="http://www.mosquitokillers.ca/" target="_blank"><img alt="Loot Hamper" src="images/defaults/link.png"></a>
									</li>
								</ul>
							</div>
						</div>

						<div class="item isotope-item item-web-development item-video-production item-graphic-design">
							<img alt="Loot Hamper" src="images/portfolio/11.jpg" class="img-responsive img-full portfolio-image">
							<div class="detail">
								<h4 class="title">WEB DEVELOPMENT, VIDEO PRODUCTION, GRAPHIC DESIGN</h4>
								<a href="http://landscapefx.com/" class="link">Landscape Effects Website</a>
								<ul class="extra-link">
									<li>
										<a class="show-more" href="#"><img alt="Loot Hamper" src="images/defaults/add.png"></a>
									</li>
									<li>
										<a class="read-more" href="http://landscapefx.com/" target="_blank"><img alt="Loot Hamper" src="images/defaults/link.png"></a>
									</li>
								</ul>
							</div>
						</div>

						<div class="item isotope-item item-web-development">
							<img alt="Loot Hamper" src="images/portfolio/12.jpg" class="img-responsive img-full portfolio-image">
							<div class="detail">
								<h4 class="title">WEB DEVELOPMENT</h4>
								<a href="http://www.perfectashot.com/" class="link">Perfectashot eCommerce website</a>
								<ul class="extra-link">
									<li>
										<a class="show-more" href="#"><img alt="Loot Hamper" src="images/defaults/add.png"></a>
									</li>
									<li>
										<a class="read-more" href="http://www.perfectashot.com/" target="_blank"><img alt="Loot Hamper" src="images/defaults/link.png"></a>
									</li>
								</ul>
							</div>
						</div>

						<div class="item isotope-item item-graphic-design">
							<img alt="Loot Hamper" src="images/portfolio/13.jpg" class="img-responsive img-full portfolio-image">
							<div class="detail">
								<h4 class="title">GRAPHIC DESIGN</h4>
								<a href="#0" class="link">Pelee Island</a>
								<ul class="extra-link">
									<li>
										<a class="show-more" href="#"><img alt="Loot Hamper" src="images/defaults/add.png"></a>
									</li>
								</ul>
							</div>
						</div>

						<div class="item isotope-item item-web-development item-video-production item-print">
							<img alt="Loot Hamper" src="images/portfolio/14.jpg" class="img-responsive img-full portfolio-image">
							<div class="detail">
								<h4 class="title">WEB DEVELOPMENT, VIDEO PRODUCTION</h4>
								<a href="http://ennovafacades.com/" class="link">Ennova</a>
								<ul class="extra-link">
									<li>
										<a class="show-more" href="#"><img alt="Loot Hamper" src="images/defaults/add.png"></a>
									</li>
									<li>
										<a class="read-more" href="http://ennovafacades.com/" target="_blank"><img alt="Loot Hamper" src="images/defaults/link.png"></a>
									</li>
								</ul>
							</div>
						</div>

						<div class="item isotope-item item-video-production item-graphic-design item-print">
							<img alt="Loot Hamper" src="images/portfolio/16.png" class="img-responsive img-full portfolio-image">
							<div class="detail">
								<h4 class="title">VIDEO PRODUCTION, GRAPHIC DESIGN</h4>
								<a href="#0" class="link">The Bull & Barrel</a>
								<ul class="extra-link">
									<li>
										<a class="show-more" href="#"><img alt="Loot Hamper" src="images/defaults/add.png"></a>
									</li>
									<li>
										<a class="read-more" href="https://vimeo.com/204913515" target="_blank"><img alt="Loot Hamper" src="images/defaults/link.png"></a>
									</li>
								</ul>
							</div>
						</div>

						<div class="item isotope-item item-web-development">
							<img alt="Loot Hamper" src="images/portfolio/15.jpg" class="img-responsive img-full portfolio-image">
							<div class="detail">
								<h4 class="title">WEB DEVELOPMENT, GRAPHIC DESIGN</h4>
								<a href="http://petcon.net/" class="link">Petretta Construction Inc.</a>
								<ul class="extra-link">
									<li>
										<a class="show-more" href="#"><img alt="Loot Hamper" src="images/defaults/add.png"></a>
									</li>
									<li>
										<a class="read-more" href="http://petcon.net/" target="_blank"><img alt="Loot Hamper" src="images/defaults/link.png"></a>
									</li>
								</ul>
							</div>
						</div>

						
					</div>
				</div>
			</div>
		</div>
		<!-- .End Section 2 -->
	<!-- Section 3 -->
		<div class="section container-full">
			<div class="row row-eq-height">
				<div class="col-xs-12 col-sm-6 ">
					<div class="item row ">
						<img alt="Loot Hamper" src="images/web_development_windsor.jpg" class="img-responsive img-full">
						<div class="detail"></div>
					</div>
				</div>
				<div id="services" class="col-xs-12 col-sm-6 p100 flex_justify_content">
					<div class="pl50 no-padding-mobile mt15">
						<div class="text c5 italic">Surprise...</div>
						<h4 class="heading c2">Our cup of tea.</h4>
						
						<div class="row pt20">
							<div class="col-xs-12 col-sm-5">
								<div class="service-icon-container">
									<img class="service-icon-right" src="images/mobileresponsive.svg" alt="Graphic Design Windsor">
									<div class="icon-content">
										<h4 class="title text-right">SURPRISE GIFTS</h4>
										<div class="text italic f14 c5 text-right">
											We�ll want to make sure that your site looks great for all users, whether they�re on a laptop, phone, tablet or maybe even a microwave (Yeah, that�s a thing.)
										</div>
									</div>
								</div>
							</div>
							<div class="col-xs-12 col-sm-5">
								<div class="service-icon-container"><img class="service-icon-right" src="images/safesecure.svg" alt="Graphic Design Windsor">
									<div class="icon-content">
										<h4 class="title text-right">SAFE AND SECURE</h4>
										<div class="text italic f14 c5 text-right">
											We offer Fully Managed and Monitored Hosting for all of our clients websites. Which includes SiteLock� 24/7 Security Monitoring free of charge. 
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row pt20">
							<div class="col-xs-12 col-sm-5">
								<div class="service-icon-container">
									<img class="service-icon-right" src="images/speedoptimized.svg" alt="Graphic Design Windsor">
									<div class="icon-content">
										<h4 class="title text-right">ON TIME DELIVERY</h4>
										<div class="text italic f14 c5 text-right">
											When your site is built for speed, you can significantly improve your users experience. Quick and seamless loading means users will spend more time perusing your site. 
										</div>
									</div>
								</div>
							</div>
							<div class="col-xs-12 col-sm-5">
								<div class="service-icon-container">
									<img class="service-icon-right" src="images/searchfriendly.svg" alt="Graphic Design Windsor">
									<div class="icon-content">
										<h4 class="title text-right">QUALITY PRODUCTS</h4>
										<div class="text italic f14 c5 text-right">
											Before we launch any site we put it through a rigorous SEO audit. We do this so your site can hit the ground running when trying to complete for search rankings.
										</div>
									</div>
								</div>
							</div>
                                                    
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- .End Section 3 -->

		
		
		
                
                
                
                
                
		<!--  Section 7 -->
                <div class="section container section-client-say-list section-no-padding mt20 mb120 " style="background-color: #ececec; padding: 20px">
			<div class="row">
				<div class="col-xs-12 col-sm-8">
					<div class="owl-carousel slider-client-say">
						<div class="slider-item item">
							<div class="content italic">I've had the pleasure of working with the Greg, Trevor and the entire team from Loot Hamper for over a year now. It's been a great experience on so many levels. I was really impressed with how quickly they were able understand and manage our brands effectively. What was more impressive was their ability to take on, and turn around, all of the work we could throw at them, something that was really appreciated by our managers. The volume of work that we were able to accomplish this year working with Loot Hamper was remarkable and I look forward to seeing what they have for us next..."</div>
							<div class="sub">Paul St.Pierre <br>
								<small>President,   Landscape Effects Group of Companies</small>
							</div>
						</div>
						<div class="slider-item item">
							<div class="content italic">...I've had a growing relationship with the guys from Loot Hamper for a couple of years now. It started with just design work for one of my brands and now they manage the design and development for all of my companies. The quality of work, communication and turn around times are second to none and I would recommend their services to anyone...</div>
							<div class="sub">Ali Mansour <br>
								<small>Owner/Operator,   Lube Plus, Mosquito Killers, Rough Boxing Gym</small>
							</div>
						</div>
						<div class="slider-item item">
							<div class="content italic">I have have been working with Loot Hamper for several years now. I cannot say enough about their professionalism, attitude, prices and workmanship. I�ve worked with several companies throughout my years in business and I take recommending them quite seriously. I would 110% recommend Greg, Trevor and their team.</div>
							<div class="sub">Matthew Komsa <br>
								<small>Owner/Operator,    The City Grill, Bull & Barrel,  LEV3L Vodka Emporium, Pub Club, Soup Market</small>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-4 text-right">
					<div class="item">
						<div class="text italic c5 f16">What people think</div>
						<h4 class="heading c2">Clients Say</h4>
					</div>
				</div>
			</div>
		</div>
		<!-- .End Section 7 -->
		<!-- Section 8 -->
                <div class="container-fluid " >
			<div class="row">
				<div class="col-xs-12">
					<div class="section section-slider-list section-slider-style-2">
						<div class="container">
							<div class="row">
								<div class="col-xs-12">
									<div class="owl-carousel slider-list row">
										<div class="slider-item client-item item">
											<img alt="Loot Hamper" src="images/clients/1-grey.png" class="img-responsive img-center">
											<img alt="Loot Hamper" src="images/clients/1-colour.png" class="img-responsive img-center">
										</div>
										<div class="slider-item client-item item">
											<img alt="Loot Hamper" src="images/clients/2-grey.png" class="img-responsive img-center">
											<img alt="Loot Hamper" src="images/clients/2-colour.png" class="img-responsive img-center">
										</div>
										<div class="slider-item client-item item">
											<img alt="Loot Hamper" src="images/clients/3-grey.png" class="img-responsive img-center">
											<img alt="Loot Hamper" src="images/clients/3-colour.png" class="img-responsive img-center">
										</div>
										<div class="slider-item client-item item">
											<img alt="Loot Hamper" src="images/clients/4-grey.png" class="img-responsive img-center">
											<img alt="Loot Hamper" src="images/clients/4-colour.png" class="img-responsive img-center">
										</div>
										<div class="slider-item client-item item">
											<img alt="Loot Hamper" src="images/clients/5-grey.png" class="img-responsive img-center">
											<img alt="Loot Hamper" src="images/clients/5-colour.png" class="img-responsive img-center">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- .End Section 8 -->

		<!-- Express Callout -->
		<section class="expressCall container">
			<div class="column-8 ">
                            <h2>&emsp14;&emsp14;&emsp14;Subscribe To Our Mailing List</h2>
				<form  action="Subscribe" method="post">
                        
                        <input type="text" placeholder="Enter Email" name="email" style="width: 70%;color: black; margin-top: 20px">
                        <input class="btn btn-primary btn-style-2 btn-upper" type="submit" value="Subscribe" style="width: 170px; height: 50px; margin-left: 25px; margin-top: 30px ;color:black; font-size: 30px;"/>
                        
                                </form>
                            
			</div>
			<div class="column-4">
				<img src="images/call/laptop.png" alt="Loot Hamper" draggable="false">
			</div>
		</section>

		<!-- End Express Callout -->

		<!-- Section 10 -->
		<div class="container-fluid ">
			<div class="row">
				<div class="col-xs-12">
					<div id="contact" class="section call-to-action" style="background-position: center 35%;">
						<div class="text-center">
							<div class="titledark">Do you want to work with us?</div>
							<div class="mb50">
								<a href="mailto:mail@karunarora.com" class="btn btn-primary btn-style-2 btn-upper">GET IN TOUCH</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- .End Section 10 -->
		<!-- Footer -->
		<div class="container-fluid">
			<div class="row ">
				<div class="col-xs-12">
					<footer class="section mt0 pb70">
                                            <a href="home.html" class="logo"><img alt="Loot Hamper" src="images/loot_hamper.png" width="140px" height="150px" class="img-responsive-img-center logofooter"></a>
						<div class="row ">
							<div class="container">
								<div class="row">
									<div class="col-xs-12 col-sm-4"></div>
									<div class="col-xs-12 col-sm-4">
										<div class="widget">
                                                                                    <br/>
											<h4 class="title text-center" style="margin-top: 70px;">CONTACT US</h4>
											<div class="text bold text-center f14 c4">
												Jalandhar
												<br/>
												<br/> Email: mail@karunarora.com
												<br/> Phone: 9646802648
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="container">
								
								<div class="col-xs-12 text-center coppy_right f11 f2 c11 mt20 mb20 ">&copy; COPYRIGHT 2018. <a href="#"><span class="c2">Loot Hamper</span></a> </div>
							</div>
						</div>
					</footer>
				</div>
			</div>
		</div>
	</div>
        </div>
        
        <div class="scroll_top" style="display: flex;"> <i class="fa fa-angle-up"></i> </div>
        
        
        
        
        
        <div id="modal-wrapper" class="modal">
  
            <form class="modal-content animate" action="validate" method="post">
        
    <div class="imgcontainer">
      <span onclick="document.getElementById('modal-wrapper').style.display='none'" class="close" title="Close PopUp">&times;</span>
      <img src="images/loot_hamper.png" alt="Avatar" class="avatar">
      
      <h1 style="text-align:center">Log in</h1>
    </div>

    <div class="container">
      <input type="text" placeholder="Enter Username" name="loginMail" value="">
      <input type="password" placeholder="Enter Password" name="loginPass" value="">        
      <input type="submit" value="Log in"/>
      <input type="checkbox" style="margin:26px 30px;"> Remember me      
      <a href="Forgot.jsp" style="text-decoration:none; float:right; margin-right:34px; margin-top:26px;">Forgot Password ?</a>
    </div>
    
  </form>
  
</div>
        
        
        
        <div id="modal-wrapper1" class="modal">
  
            <form class="modal-content animate" action="insert" method="post">
        
    <div class="imgcontainer">
      <span onclick="document.getElementById('modal-wrapper1').style.display='none'" class="close" title="Close PopUp">&times;</span>
      <img src="images/loot_hamper.png" alt="Avatar" class="avatar">
      
      <h1 style="text-align:center">Sign up</h1>
    </div>

    <div class="container">
      <input type="text" placeholder="Enter Username" name="uname">
      <input type="text" placeholder="Enter Email" name="email">
      <input type="password" placeholder="Enter Password" name="psw">
      
      <button type="submit">Sign up</button>
      <input type="checkbox" style="margin:26px 30px;"> Remember me      
      <a href="#" style="text-decoration:none; float:right; margin-right:34px; margin-top:26px;">Forgot Password ?</a>
    </div>
    
  </form>
  
</div>
    </body>
</html>
