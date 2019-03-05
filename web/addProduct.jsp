
<!DOCTYPE html>
<html>
<head>
<title>Add Product</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<!--theme-style--><link rel="icon" type="image/png" href="images/fav1.png">
<link href="css/shopstyle.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--theme-style-->
<link href="css/style4.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!--- start-rate---->

<!---//End-rate---->
</head>
<body> 
<%
String str=(String)session.getAttribute("aemail");
        if(str==null)
        {
            response.sendRedirect("adminLogin.jsp");
        }
%>
 <jsp:include page="navbar2.jsp"/>
<div class="container">
    
    
    
    
		<div class="login">
                    <form action="adminInsert">
			<div class="col-md-6 login-do">
			<div class="login-mail">
                            <input type="text" placeholder="Name" name="name" required="">
					<i  class="glyphicon glyphicon-user"></i>
				</div>
                            <div class="login-mail">
                                <input type="text" placeholder="Price" name="price" required="">
					<i  class="glyphicon glyphicon-envelope"></i>
				</div>
                            
                            <div class="login-mail">
                            <input type="text" placeholder="Image" name="image" required="">
					<i  class="glyphicon glyphicon-map-marker"></i>
				</div>
				<div class="login-mail">
                                    <input type="text" placeholder="Description" name="des" required="">
					<i  class="glyphicon glyphicon-map-marker"></i>
				</div>
				
				<div class="login-mail">
                                    <input type="text" placeholder="Overview" name="over" required="">
					<i class="glyphicon glyphicon-map-marker"></i>
				</div>
                            
                                <input type="hidden"  name="category" value="1">
					
				
                            
                            <div class="login-mail">
                                In Stock &emsp;<input type=radio name="stock" value="1">&emsp;
                                Out of Stock&emsp;<input type=radio name="stock" value="0">
					
				</div>
				  
				<label class="hvr-skew-backward">
					<input type="submit" value="Add Product">
				</label>
			
			</div>
			<div class="col-md-6 login-right">
				
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

	
<!-- slide -->
<script src="js/bootstrap.min.js"></script>

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
        	
 
</body>
</html>