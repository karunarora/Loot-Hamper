
<!DOCTYPE html>
<html>
<head>
<title>Shipping Details</title>
<link rel="icon" type="image/png" href="images/fav1.png">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="js/jquery-1.12.3.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
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


<body>
    <%String str=(String)session.getAttribute("user");
        String str1=(String)session.getAttribute("user1");
        if(str==null)
        {
            response.sendRedirect("index.jsp");
        }
        %>
        
        <div class="body-container">
<!--header-->
            <jsp:include page="navbar.jsp"/>
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
                    <form action="shipping">
			<div class="col-md-6 login-do">
			<div class="login-mail">
                            <input type="text" placeholder="Name" name="name" required="">
					<i  class="glyphicon glyphicon-user"></i>
				</div>
                            
                            <div class="login-mail">
                            <input type="text" placeholder="Address" name="address" required="">
					<i  class="glyphicon glyphicon-map-marker"></i>
				</div>
                            <div class="login-mail">
                            <input type="text" placeholder="City" name="city" required="">
					<i  class="glyphicon glyphicon-map-marker"></i>
				</div>
				<div class="login-mail">
                                    <input type="text" placeholder="State" name="state" required="">
					<i  class="glyphicon glyphicon-map-marker"></i>
				</div>
				
				<div class="login-mail">
                                    <input type="text" placeholder="Country" name="country" required="">
					<i class="glyphicon glyphicon-map-marker"></i>
				</div>
                            <div class="login-mail">
                                <input type="text" placeholder="Mobile No." name="mobile" required="">
					<i  class="glyphicon glyphicon-phone" ></i>
				</div>
				  
				<label class="hvr-skew-backward">
					<input type="submit" value="Pay">
				</label>
			
			</div>
			<div class="col-md-6 login-right">
				
			</div>
			
			<div class="clearfix"> </div>
			</form>
		</div>

</div>


        </div>
</body>
</html>