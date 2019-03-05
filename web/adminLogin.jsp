
<!DOCTYPE HTML>
<html>
<head>
<title>Admin Panel</title>

<!-- Bootstrap Core CSS --><link rel="icon" type="image/png" href="images/fav1.png">
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />

<!-- Custom CSS -->
<link href="css/admin/style.css" rel='stylesheet' type='text/css' />

<!-- font-awesome icons CSS-->
<link href="css/font-awesome.css" rel="stylesheet"> 
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <script src="js/jquery-1.12.3.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
<!-- //font-awesome icons CSS-->

 
 <!-- js-->


<!--webfonts-->
<link href="//fonts.googleapis.com/css?family=PT+Sans:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext" rel="stylesheet">
<!--//webfonts-->
 
<!-- Metis Menu -->


<!--//Metis Menu -->

</head> 
 <%
String str=(String)session.getAttribute("aemail");
        if(str!=null)
        {
            response.sendRedirect("adminPanel.jsp");
        }
%>
<jsp:include page="navbar2.jsp"/>
<body class="cbp-spmenu-push">
<div class="main-content" style="margin-bottom: 60px; margin-top: 60px">
	
		
			<div class="main-page login-page ">
				<h2 class="title1">Login</h2>
				<div class="widget-shadow">
					<div class="login-body">
						<form action="avalidate" method="post">
							<input type="email" class="user" name="email" placeholder="Enter Your Email" required="">
							<input type="password" name="pass" class="lock" placeholder="Password" required="">
							<div class="forgot-grid">
								<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Remember me</label>
								<div class="forgot">
									<a href="AForgot.jsp">forgot password?</a>
								</div>
								<div class="clearfix"> </div>
							</div>
							<input type="submit" name="Sign In" value="Sign In">
							
						</form>
					</div>
				</div>
				
			</div>
		</div>
		<!--footer-->
		<div class="footer" >
		   <p>&copy; 2018 Loot Hamper</p>		</div>
        <!--//footer-->
	
   
</body>
</html>