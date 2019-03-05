<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shop</title>
        <!-- Styles -->
        <link rel="icon" type="image/png" href="images/fav1.png">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="js/jquery-1.12.3.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <link href="css/style4.css" rel="stylesheet" type="text/css" media="all" />
        
        <link rel="stylesheet" href="css/main.css">
     	
        <link href="css/shopstyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="css/jstarbox.css" type="text/css" media="screen" charset="utf-8" />
        <link href="css/form.css" rel="stylesheet" type="text/css" media="all" />
        <link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen" charset="utf-8">
        <!-- .End Styles -->
        <!-- script-->
        <script src="js/jstarbox.js"></script>
        <style>
            /* Full-width input fields */
input[type=text], input[type=password] {
    width: 40%;
    padding: 12px 20px;
    margin: 8px 26px;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
	font-size:16px;
}

/* Set a style for all buttons */

/* Center the image and position the close button */
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}
.avatar {
    width: 150px;
	height:180px;
   
}

/* The Modal (background) */
.modal {
	display:none;
    position: fixed;
    z-index: 1;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    overflow: auto;
    background-color: rgba(0,0,0,0.4);
}

/* Modal Content Box */
.modal-content {
    background-color: #fefefe;
    margin: 4% auto 15% auto;
    border: 1px solid #888;
    width: 40%; 
	padding-bottom: 30px;
}

/* The Close Button (x) */
.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}
.close:hover,.close:focus {
    color: red;
    cursor: pointer;
}

/* Add Zoom Animation */
.animate {
    animation: zoom 0.6s
}
@keyframes zoom {
    from {transform: scale(0)} 
    to {transform: scale(1)}
}
        </style>  
    </head>
    <body>
        <div class="body-container">
         <jsp:include page="navbar.jsp"/>
        
        
        
        <div id="wrap">
<div id="showcase" class="noselect"> <img class="cloud9-item" src="images/shopslider/deadpool.png" alt="Firefox"><img class="cloud9-item" src="images/shopslider/belt.png" alt="Firefox"><img class="cloud9-item" src="images/shopslider/harly.png" alt="Firefox"> <img class="cloud9-item" src="images/shopslider/gift.png" alt="Wyzo"> <img class="cloud9-item" src="images/shopslider/xmen.png" alt="Opera"> <img class="cloud9-item" src="images/shopslider/wwe.png" alt="Chrome"> <img class="cloud9-item" src="images/shopslider/anime.png" alt="Internet Explorer"> <img class="cloud9-item" src="images/shopslider/alien.png" alt="Safari"> </div>

</div>
        
        
        
        <!--Start-->
        
        
		
<!---//End-rate---->



<!--header-->

<!--banner-->

	<!--content-->
		<div class="product">
			<div class="container">
			<div class="col-md-9">
				<div class="mid-popular">
                                    <%
                                        try
                                            {
                                                Connection con=null;
                                                Statement stmt=null;
                                                ResultSet rs=null;
                                            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                                con=DriverManager.getConnection("jdbc:sqlserver://localhost;Instance=SQLExpress;Database=Project;user=Project;Password=123");
                                stmt=con.createStatement();  

                                           
                                            rs = stmt.executeQuery("SELECT * FROM product ");
                                            while(rs.next())
                                            {
                                              
                                                                         %>
					<div class="col-md-4 item-grid1 simpleCart_shelfItem">
					<div class=" mid-pop">
					<div class="pro-img">
						<img  src="images/product/<%=rs.getString("image")%>" class="img-responsive" alt="">
						<div class="zoom-icon ">
						<a class="picture" href="images/product/<%=rs.getString("image")%>" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
						<a href="Product.jsp?id=<%=rs.getString("id")%>"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                                                
						</div>
						</div>
						<div class="mid-1">
						<div class="women">
						<div class="women-top">
							<span>Gift</span>
							<h6><a href="Product.jsp?id=<%=rs.getString("id")%>"><%=rs.getString("name")%></a></h6>
							</div>
							<div class="img item_add">
								<a href="#">
                                                                    
                                                                    <img src="images/ca.png" alt=""></a>
							</div>
							<div class="clearfix"></div>
							</div>
							<div class="mid-2">
								<p ><label> &#8377;1000.00</label><em class="item_price"> &#8377;<%=rs.getString("price")%></em></p>
								  <div class="block">
									<div class="starbox small ghosting"> </div>
								</div>
								
								<div class="clearfix"></div>
							</div>
							
						</div>
					</div>
					</div>
                                        <%}
                                            } catch(Exception e1)
                                                    {out.println(e1);
                                                    }
                                        %>
					
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="col-md-3 product-bottom">
			<!--categories-->
				<div class=" rsidebar span_1_of_left">
						<h4 class="cate">Categories</h4>
							 <ul class="menu-drop">
							<li class="item1"><a href="#">Men </a>
								<ul class="cute">
									<li class="subitem1"><a href="product.html">Cute Kittens </a></li>
									<li class="subitem2"><a href="product.html">Strange Stuff </a></li>
									<li class="subitem3"><a href="product.html">Automatic Fails </a></li>
								</ul>
							</li>
							<li class="item2"><a href="#">Women </a>
								<ul class="cute">
									<li class="subitem1"><a href="product.html">Cute Kittens </a></li>
									<li class="subitem2"><a href="product.html">Strange Stuff </a></li>
									<li class="subitem3"><a href="product.html">Automatic Fails </a></li>
								</ul>
							</li>
							<li class="item3"><a href="#">Kids</a>
								<ul class="cute">
									<li class="subitem1"><a href="product.html">Cute Kittens </a></li>
									<li class="subitem2"><a href="product.html">Strange Stuff </a></li>
									<li class="subitem3"><a href="product.html">Automatic Fails</a></li>
								</ul>
							</li>
							<li class="item4"><a href="#">Accessories</a>
								<ul class="cute">
									<li class="subitem1"><a href="product.html">Cute Kittens </a></li>
									<li class="subitem2"><a href="product.html">Strange Stuff </a></li>
									<li class="subitem3"><a href="product.html">Automatic Fails</a></li>
								</ul>
							</li>
									
							<li class="item4"><a href="#">Shoes</a>
								<ul class="cute">
									<li class="subitem1"><a href="product.html">Cute Kittens </a></li>
									<li class="subitem2"><a href="product.html">Strange Stuff </a></li>
									<li class="subitem3"><a href="product.html">Automatic Fails </a></li>
								</ul>
							</li>
						</ul>
					</div>
				<!--initiate accordion-->
						<script type="text/javascript">
							$(function() {
							    var menu_ul = $('.menu-drop > li > ul'),
							           menu_a  = $('.menu-drop > li > a');
							    menu_ul.hide();
							    menu_a.click(function(e) {
							        e.preventDefault();
							        if(!$(this).hasClass('active')) {
							            menu_a.removeClass('active');
							            menu_ul.filter(':visible').slideUp('normal');
							            $(this).addClass('active').next().stop(true,true).slideDown('normal');
							        } else {
							            $(this).removeClass('active');
							            $(this).next().stop(true,true).slideUp('normal');
							        }
							    });
							
							});
						</script>
<!--//menu-->
 <section  class="sky-form">
					<h4 class="cate">Discounts</h4>
					 <div class="row row1 scroll-pane">
						 <div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Upto - 10% (20)</label>
						 </div>
						 <div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>40% - 50% (5)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>30% - 20% (7)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>10% - 5% (2)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Other(50)</label>
						 </div>
					 </div>
				 </section> 				 				 
				 
					
					 <!---->
					 
		</div>
			<div class="clearfix"></div>
			</div>
				<!--products-->
			
			<!--//products-->
		
			
			
		</div>
	<!--//content-->
		
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

	<script src="js/simpleCart.min.js"> </script>
<!-- slide -->

 <!--light-box-files -->
		<script src="js/jquery.chocolat.js"></script>
		<link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen" charset="utf-8">
		<!--light-box-files -->
		<script type="text/javascript" charset="utf-8">
		$(function() {
			$('a.picture').Chocolat();
		});
		</script>
        
        <!--end-->
        
        
        
        
        
        
        
        
        
        
        <!-- Scripts -->
	
	
        
        
        
         
<script src="js/jquery.reflection.js"></script> 
<script src="js/jquery.cloud9carousel.js"></script> 
<script>
    $(function() {
      var showcase = $("#showcase");

      showcase.Cloud9Carousel( {
        yPos: 42,
        yRadius: 48,
        mirrorOptions: {
          gap: 12,
          height: 0.2
        },
        buttonLeft: $(".nav > .left"),
        buttonRight: $(".nav > .right"),
        autoPlay: true,
        bringToFront: true,
        onRendered: showcaseUpdated,
        onLoaded: function() {
          showcase.css( 'visibility', 'visible' )
          showcase.css( 'display', 'none' )
          showcase.fadeIn( 1500 )
        }
      } )

      function showcaseUpdated( showcase ) {
        var title = $('#item-title').html(
          $(showcase.nearestItem()).attr( 'alt' )
        )

        var c = Math.cos((showcase.floatIndex() % 1) * 2 * Math.PI)
        title.css('opacity', 0.5 + (0.5 * c))
      }

      
      

      $(document).keydown( function( e ) {
       
        
      } )
    })
  </script> 
  
  
  
  <script src="js/simpleCart.min.js"> </script>
<!-- slide -->
<script src="js/bootstrap.min.js"></script>
 <!--light-box-files -->
		
                <script src="js/jquery.chocolat.js"></script>
		
		<!--light-box-files -->
		<script type="text/javascript" charset="utf-8">
		$(function() {
			$('a.picture').Chocolat();
		});
		</script>
        </div>
                                        
                                        
                                         <div id="modal-wrapper" class="modal">
  
            <form class="modal-content animate" action="validate" method="post">
        
    <div class="imgcontainer">
      <span onclick="document.getElementById('modal-wrapper').style.display='none'" class="close" title="Close PopUp">&times;</span>
      <img src="images/loot_hamper.png" alt="Avatar" class="avatar">
      
      <h1 style="text-align:center">Log in</h1>
    </div>

    <div class="container">
      <input type="text" placeholder="Enter Username" name="loginMail" value=""><br>
      <input type="password" placeholder="Enter Password" name="loginPass" value="">     <br>   
      <input type="submit" value="Log in"/><br>
      <input type="checkbox" style="margin:26px 30px;"> Remember me      
      <a href="Forgot.jsp" style="text-decoration:none;  margin-right:34px; margin-top:26px; margin-left: 50px;">Forgot Password ?</a>
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
        <input type="text" placeholder="Enter Username" name="uname" width="45%"><br>
      <input type="text" placeholder="Enter Email" name="email"><br>
      <input type="password" placeholder="Enter Password" name="psw"><br>
     
      <button type="submit">Sign up</button><br>
      <input type="checkbox" style="margin:26px 30px;"> Remember me    
      <a href="Forgot.jsp" style="text-decoration:none;  margin-right:34px; margin-top:26px; margin-left: 50px">Forgot Password ?</a>
    </div>
    
  </form>
  
</div>
      <script>
// If user clicks anywhere outside of the modal, Modal will close

var modal = document.getElementById('modal-wrapper');
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}


</script>

<script>
// If user clicks anywhere outside of the modal, Modal will close

var modal = document.getElementById('modal-wrapper1');
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}


</script>
    </body>
</html>
