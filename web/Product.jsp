
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<title>Product</title>
<link rel="icon" type="image/png" href="images/fav1.png">
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

<script src="js/jquery-1.12.3.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/bootstrap.min.css">
<!--- start-rate---->
<script src="js/jstarbox.js"></script>
<script type="text/javascript">
		function showDesc(a,b)
		{
		var ajx;
 	   if (window.XMLHttpRequest)
 	   {// If the browser if IE7+[or] Firefox[or] Chrome[or] Opera[or]Safari
 	     ajx=new XMLHttpRequest();
 	   }
 	  else
 	   {//If browser is IE6, IE5
 	     ajx=new ActiveXObject("Microsoft.XMLHTTP");
 	   }
	ajx.onreadystatechange=function()
	{
	  if (ajx.readyState==4 && ajx.status==200)
	  { 
	    document.getElementById("desc").innerHTML=ajx.responseText;
	   }
	}
	ajx.open("GET","showDesc.jsp?id="+a+"&col="+b,true);
	ajx.send();
	} 
     </script> 
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
<link href="css/form.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
    <jsp:include page="navbar.jsp"/>
<!--header-->

<!--banner
<div class="banner-top">
	<div class="container">
		<h1>Single</h1>
		<em></em>
                <h2><a href="index.jsp">Home</a><label>/</label>Single</a></h2>
	</div>
</div>-->
<div class="single">

<div class="container">
    
<div class="col-md-9">
   
	
     <%
         int id=Integer.parseInt(request.getParameter("id"));
                                        try
                                            {
                                                Connection con=null;
                                                Statement stmt=null;
                                                ResultSet rs=null;
                                            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                                con=DriverManager.getConnection("jdbc:sqlserver://localhost;Instance=SQLExpress;Database=Project;user=Project;Password=123");
                                stmt=con.createStatement();  

                                           
                                            
                                            
                                            PreparedStatement ps = con.prepareStatement("select * from product where id=?");
                                            ps.setInt(1, id);
                                           
                                            rs=ps.executeQuery();
                                            if(rs.next())
                                            {%>
						<div class="col-md-5 grid">		
		<div class="flexslider">
			  <ul class="slides">
			    
			        <div class="thumb-image"> <img src="images/product/<%=rs.getString("image")%>" data-imagezoom="true" class="img-responsive"> </div>
			    
			    
			  </ul>
		</div>
	</div>	
<div class="col-md-7 single-top-in">
    <div class="span_2_of_a1 simpleCart_shelfItem">
				<h3>Description</h3>
				<p class="in-para"><%=rs.getString("description")%></p>
			    <div class="price_single">
				  <span class="reducedfrom item_price"> &#8377;<%=rs.getString("price")%></span>
				 <a ><%=rs.getString("name")%></a>
				 <div class="clearfix"></div>
				</div>
				<h4 class="quick">Quick Overview:</h4>
				<p class="quick_desc"><%=rs.getString("overview")%></p>
                                
			    <div class="wish-list">
				 	<ul>
				 		<li class="wish"><a href="#"><span class="glyphicon glyphicon-check" aria-hidden="true"></span>Add to Wishlist</a></li>
				 	    <li class="compare"><a href="#"><span class="glyphicon glyphicon-resize-horizontal" aria-hidden="true"></span>Add to Compare</a></li>
				 	</ul>
				 </div>
				 <div class="quantity"> 
								<div class="quantity-select">                           
									<div class="entry value-minus">&nbsp;</div>
									<div class="entry value"><span>1</span></div>
									<div class="entry value-plus active">&nbsp;</div>
								</div>
							</div>
                               
				
				 
        <a href="addcart?id=<%=rs.getInt("id")%>"  class="add-to item_add hvr-skew-backward">
        ADD TO CART</a>
       
			
          <%}
                                            } catch(Exception e1)
                                                    {out.println(e1);
                                                    }
                                        %>
        <div class="clearfix"> </div>
			</div>
		
					</div>
			<div class="clearfix"> </div>
			<!---->
			
			<!---->	
</div>
<!----->

<div class="col-md-3 product-bottom product-at">
			<!--categories-->
				
		<div class="clearfix"> </div>
	</div>
	</div>
			
			</div>
			
		</div>
	<!--//content-->
		<!--//footer-->
                
		<!--//footer-->
<script src="js/imagezoom.js"></script>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script defer src="js/jquery.flexslider.js"></script>


<script>
// Can also be used with $(document).ready()
$(window).load(function() {
  $('.flexslider').flexslider({
    animation: "slide",
    controlNav: "thumbnails"
  });
});
</script>

	<script src="js/simpleCart.min.js"> </script>
<!-- slide -->
<script src="js/bootstrap.min.js"></script>

							<!--quantity-->
	<script>
    $('.value-plus').on('click', function(){
    	var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)+1;
    	divUpd.text(newVal);
    });

    $('.value-minus').on('click', function(){
    	var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)-1;
    	if(newVal>=1) divUpd.text(newVal);
    });
	</script>
	<!--quantity-->

</body>
</html>