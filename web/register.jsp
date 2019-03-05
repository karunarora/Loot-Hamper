
<!DOCTYPE html>
<html>
<head>
<title>Register</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" /><link rel="icon" type="image/png" href="images/fav1.png">
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/shopstyle.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Shopin Responsive web template, Bootstrap Web Templates, Flat Web Templates, AndroId Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--theme-style-->
<link href="css/style4.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<script src="js/jquery.min.js"></script>
<!--- start-rate---->
<script src="js/jstarbox.js"></script>
	<link rel="stylesheet" href="css/jstarbox.css" type="text/css" media="screen" charset="utf-8" />
		<script type="text/javascript">
			jQuery(function() {
			jQuery('.starbox').each(function() {
				var starbox = jQuery(this);
					starbox.starbox({
					average: starbox.attr('data-start-value'),
					changeable: starbox.hasClass('unchangeable') ? false : starbox.hasClass('clickonce') ? 'once' : true,
					ghosting: starbox.hasClass('ghosting'),
					autoUpdateAverage: starbox.hasClass('autoupdate'),
					buttons: starbox.hasClass('smooth') ? false : starbox.attr('data-button-count') || 5,
					stars: starbox.attr('data-star-count') || 5
					}).bind('starbox-value-changed', function(event, value) {
					if(starbox.hasClass('random')) {
					var val = Math.random();
					starbox.next().text(' '+val);
					return val;
					} 
				})
			});
		});
		</script>
<!---//End-rate---->
</head>
<body>
<!--header-->
            
<!--banner
<div class="banner-top">
	<div class="container">
		<h1>Single</h1>
		<em></em>
                <h2><a href="index.jsp">Home</a><label>/</label>Single</a></h2>
	</div>
</div>-->
<!--login-->
<div class="container">
		<div class="login">
                    <form action="sinsert">
			<div class="col-md-6 login-do">
			<div class="login-mail">
                            <input type="text" placeholder="Userame" name="username" required="">
					<i  class="glyphicon glyphicon-user"></i>
				</div>
                            <div class="login-mail">
                            <input type="text" placeholder="FirstName" name="fname" required="">
					<i  class="glyphicon glyphicon-user"></i>
				</div>
                            <div class="login-mail">
                            <input type="text" placeholder="LastName" name="lname" required="">
					<i  class="glyphicon glyphicon-user"></i>
				</div>
				<div class="login-mail">
                                    <input type="text" placeholder="Phone Number" name="mobile" required="">
					<i  class="glyphicon glyphicon-phone"></i>
				</div>
				<div class="login-mail">
                                    <input type="text" placeholder="Email" name="email" required="">
					<i  class="glyphicon glyphicon-envelope"></i>
				</div>
				<div class="login-mail">
                                    <input type="password" placeholder="Password" name="pass" required="">
					<i class="glyphicon glyphicon-lock"></i>
				</div>
				  
				<label class="hvr-skew-backward">
					<input type="submit" value="Submit">
				</label>
			
			</div>
			<div class="col-md-6 login-right">
				 <h3>Completely Free Account</h3>
				 
				 
				 <p>
				 -Free Register
                                 </p>
                                 <p>
                                   -Amazing Discounts
                                 </p>
                                 <p>
                                     -Trendy Fashion
                                 </p>
                                 <p>
                                     -Easy Payment
                                 </p>
                                 <p>
                                     
                                 </p>
                                 
                                <a href="sellerLogin.jsp" class="hvr-skew-backward">Login</a>

			</div>
			
			<div class="clearfix"> </div>
			</form>
		</div>

</div>

<!--//login-->

		<!--brand-->
		<div class="container">
			<div class="brand">
				<div class="col-md-3 brand-grid">
					<img src="images/ic.png" class="img-responsive" alt="">
				</div>
				<div class="col-md-3 brand-grid">
					<img src="images/ic1.png" class="img-responsive" alt="">
				</div>
				<div class="col-md-3 brand-grid">
					<img src="images/ic2.png" class="img-responsive" alt="">
				</div>
				<div class="col-md-3 brand-grid">
					<img src="images/ic3.png" class="img-responsive" alt="">
				</div>
				<div class="clearfix"></div>
			</div>
			</div>
			<!--//brand-->
		
	<!--//content-->
		<!--//footer-->
                
		<!--//footer-->
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

	<script src="js/simpleCart.min.js"> </script>
<!-- slide -->
<script src="js/bootstrap.min.js"></script>
 
</body>
</html>