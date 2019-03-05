<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*;" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/popup.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/admin/bootstrap.css" rel='stylesheet' type='text/css' />
        <link rel="icon" type="image/png" href="images/fav1.png">

<!-- Custom CSS -->
<link href="css/admin/style.css" rel='stylesheet' type='text/css' />

<!-- font-awesome icons CSS -->
<link href="css/font-awesome.min.css" rel="stylesheet"> 
<!-- //font-awesome icons CSS-->

<!-- side nav css file -->
<link href='css/admin/SidebarNav.min.css' media='all' rel='stylesheet' type='text/css'/>
<!-- //side nav css file -->
 
 <!-- js-->
<script src="js/jquery-1.12.3.min.js"></script>
<script src="js/admin/modernizr.custom.js"></script>

<!--webfonts-->
<link href="//fonts.googleapis.com/css?family=PT+Sans:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext" rel="stylesheet">
<!--//webfonts--> 

<!-- chart -->
<script src="js/admin/Chart.js"></script>
<!-- //chart -->

<!-- Metis Menu -->
<script src="js/admin/metisMenu.min.js"></script>
<script src="js/admin/custom.js"></script>
<link href="css/admin/custom.css" rel="stylesheet">
<!--//Metis Menu -->
<style>
#chartdiv {
  width: 100%;
  height: 295px;
}
</style>
<!--pie-chart --><!-- index page sales reviews visitors pie chart -->
<script src="js/admin/pie-chart.js" type="text/javascript"></script>
        <title>My Account</title>
    </head>
    <body class="cbp-spmenu-push"><%
          Connection con=null;
          Statement stmt=null;
          ResultSet rs=null;  
        String str=(String)session.getAttribute("aemail");
        String str1=(String)session.getAttribute("auser");
        if(str==null)
        {
            response.sendRedirect("adminLogin.jsp");
        }
        %>
        <div class="main-content">
	<div class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
		<!--left-fixed -navigation-->
		<aside class="sidebar-left">
      <nav class="navbar navbar-inverse">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".collapse" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            </button>
            <h1><a class="navbar-brand" href="index.html"><span class="fa fa-area-chart"></span> Glance<span class="dashboard_text">Design dashboard</span></a></h1>
          </div>
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="sidebar-menu">
              <li class="header">MAIN NAVIGATION</li>
              <li class="treeview">
                <a href="index.jsp">
                <i class="fa fa-dashboard"></i> <span>Home</span>
                </a>
              </li>
              <li class="treeview">
                <a href="adminPanel.jsp">
                <i class="fa fa-dashboard"></i> <span>Dashboard</span>
                </a>
              </li>
			  
              <li class="treeview">
                <a href="addProduct.jsp">
                <i class="fa fa-dashboard"></i> <span>Add Product</span>
                </a>
              </li>
              <li class="treeview">
                <a href="sellerProducts.jsp">
                <i class="fa fa-dashboard"></i> <span>Seller Requests</span>
                </a>
              </li>
              <li class="treeview">
                <a href="showProduct.jsp">
                <i class="fa fa-dashboard"></i> <span>Show Products</span>
                </a>
              </li>
              
              <li class="header">LABELS</li>
              <li><a href="#"><i class="fa fa-angle-right text-red"></i> <span>Important</span></a></li>
              <li><a href="#"><i class="fa fa-angle-right text-yellow"></i> <span>Warning</span></a></li>
              <li><a href="#"><i class="fa fa-angle-right text-aqua"></i> <span>Information</span></a></li>
            </ul>
          </div>
          <!-- /.navbar-collapse -->
      </nav>
    </aside>
	</div>
		<!--left-fixed -navigation-->
		
		<!-- header-starts -->
		<div class="sticky-header header-section ">
			<div class="header-left">
				<!--toggle button start-->
				<button id="showLeftPush"><i class="fa fa-bars"></i></button>
				<!--toggle button end-->
				<div class="profile_details_left"><!--notifications of menu start -->
					<ul class="nofitications-dropdown">
						<li class="dropdown head-dpdn">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-envelope"></i><span class="badge">4</span></a>
							<ul class="dropdown-menu">
								<li>
									<div class="notification_header">
										<h3>You have 3 new messages</h3>
									</div>
								</li>
								<li><a href="#">
								   <div class="user_img"><img src="images/admin/1.jpg" alt=""/></div>
                                                                   
								   <div class="notification_desc">
									<p>Lorem ipsum dolor amet</p>
									<p><span>1 hour ago</span></p>
									</div>
								   <div class="clearfix"></div>	
								</a></li>
								<li class="odd"><a href="#">
									<div class="user_img"><img src="images/admin/4.jpg" alt=""></div>
								   <div class="notification_desc">
									<p>Lorem ipsum dolor amet </p>
									<p><span>1 hour ago</span></p>
									</div>
								  <div class="clearfix"></div>	
								</a></li>
								<li><a href="#">
								   <div class="user_img"><img src="images/admin/3.jpg" alt=""></div>
								   <div class="notification_desc">
									<p>Lorem ipsum dolor amet </p>
									<p><span>1 hour ago</span></p>
									</div>
								   <div class="clearfix"></div>	
								</a></li>
								<li><a href="#">
								   <div class="user_img"><img src="images/admin/2.jpg" alt=""></div>
								   <div class="notification_desc">
									<p>Lorem ipsum dolor amet </p>
									<p><span>1 hour ago</span></p>
									</div>
								   <div class="clearfix"></div>	
								</a></li>
								<li>
									<div class="notification_bottom">
										<a href="#">See all messages</a>
									</div> 
								</li>
							</ul>
						</li>
						<li class="dropdown head-dpdn">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-bell"></i><span class="badge blue">4</span></a>
							<ul class="dropdown-menu">
								<li>
									<div class="notification_header">
										<h3>You have 3 new notification</h3>
									</div>
								</li>
								<li><a href="#">
									<div class="user_img"><img src="images/admin/4.jpg" alt=""></div>
								   <div class="notification_desc">
									<p>Lorem ipsum dolor amet</p>
									<p><span>1 hour ago</span></p>
									</div>
								  <div class="clearfix"></div>	
								 </a></li>
								 <li class="odd"><a href="#">
									<div class="user_img"><img src="images/admin/1.jpg" alt=""></div>
								   <div class="notification_desc">
									<p>Lorem ipsum dolor amet </p>
									<p><span>1 hour ago</span></p>
									</div>
								   <div class="clearfix"></div>	
								 </a></li>
								 <li><a href="#">
									<div class="user_img"><img src="images/admin/3.jpg" alt=""></div>
								   <div class="notification_desc">
									<p>Lorem ipsum dolor amet </p>
									<p><span>1 hour ago</span></p>
									</div>
								   <div class="clearfix"></div>	
								 </a></li>
								<li><a href="#">
								   <div class="user_img"><img src="images/admin/2.jpg" alt=""></div>
								   <div class="notification_desc">
									<p>Lorem ipsum dolor amet </p>
									<p><span>1 hour ago</span></p>
									</div>
								   <div class="clearfix"></div>	
								</a></li>
								 <li>
									<div class="notification_bottom">
										<a href="#">See all notifications</a>
									</div> 
								</li>
							</ul>
						</li>	
						<li class="dropdown head-dpdn">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-tasks"></i><span class="badge blue1">8</span></a>
							<ul class="dropdown-menu">
								<li>
									<div class="notification_header">
										<h3>You have 8 pending task</h3>
									</div>
								</li>
								<li><a href="#">
									<div class="task-info">
										<span class="task-desc">Database update</span><span class="percentage">40%</span>
										<div class="clearfix"></div>	
									</div>
									<div class="progress progress-striped active">
										<div class="bar yellow" style="width:40%;"></div>
									</div>
								</a></li>
								<li><a href="#">
									<div class="task-info">
										<span class="task-desc">Dashboard done</span><span class="percentage">90%</span>
									   <div class="clearfix"></div>	
									</div>
									<div class="progress progress-striped active">
										 <div class="bar green" style="width:90%;"></div>
									</div>
								</a></li>
								<li><a href="#">
									<div class="task-info">
										<span class="task-desc">Mobile App</span><span class="percentage">33%</span>
										<div class="clearfix"></div>	
									</div>
								   <div class="progress progress-striped active">
										 <div class="bar red" style="width: 33%;"></div>
									</div>
								</a></li>
								<li><a href="#">
									<div class="task-info">
										<span class="task-desc">Issues fixed</span><span class="percentage">80%</span>
									   <div class="clearfix"></div>	
									</div>
									<div class="progress progress-striped active">
										 <div class="bar  blue" style="width: 80%;"></div>
									</div>
								</a></li>
								<li>
									<div class="notification_bottom">
										<a href="#">See all pending tasks</a>
									</div> 
								</li>
							</ul>
						</li>	
					</ul>
					<div class="clearfix"> </div>
				</div>
				<!--notification menu end -->
				<div class="clearfix"> </div>
			</div>
			<div class="header-right">
				
				
				<!--search-box-->
				<div class="search-box">
					<form class="input">
						<input class="sb-search-input input__field--madoka" placeholder="Search..." type="search" id="input-31" />
						<label class="input__label" for="input-31">
							<svg class="graphic" width="100%" height="100%" viewBox="0 0 404 77" preserveAspectRatio="none">
								<path d="m0,0l404,0l0,77l-404,0l0,-77z"/>
							</svg>
						</label>
					</form>
				</div><!--//end-search-box-->
				
				<div class="profile_details">		
					<ul>
						<li class="dropdown profile_details_drop">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
								<div class="profile_img">	
									<span class="prfil-img"><img src="images/admin/2.jpg" alt=""> </span> 
									<div class="user-name">
										<p><%=str1%></p>
										<span>Administrator</span>
									</div>
									<i class="fa fa-angle-down lnr"></i>
									<i class="fa fa-angle-up lnr"></i>
									<div class="clearfix"></div>	
								</div>	
							</a>
							<ul class="dropdown-menu drp-mnu">
								<li> <a href="MyAccount.jsp"><i class="fa fa-cog"></i> Settings</a> </li> 
								<li> <a href="addProduct.jsp"><i class="fa fa-user"></i> Add Product</a> </li> 
								<li> <a href="#"><i class="fa fa-suitcase"></i> Profile</a> </li> 
								<li> <a href="logout"><i class="fa fa-sign-out"></i> Logout</a> </li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="clearfix"> </div>				
			</div>
			<div class="clearfix"> </div>	
		</div>
		<!-- //header-ends -->
		<!-- main content start-->
		<div id="page-wrapper">
			<div class="main-page">
			<div class="col_3">
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-dollar icon-rounded"></i>
                    <div class="stats">
                      <h5><strong>$452</strong></h5>
                      <span>Total Revenue</span>
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-laptop user1 icon-rounded"></i>
                    <div class="stats">
                      <h5><strong>$1019</strong></h5>
                      <span>Online Revenue</span>
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-money user2 icon-rounded"></i>
                    <div class="stats">
                      <h5><strong>$1012</strong></h5>
                      <span>Expenses</span>
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-pie-chart dollar1 icon-rounded"></i>
                    <div class="stats">
                      <h5><strong>$450</strong></h5>
                      <span>Expenditure</span>
                    </div>
                </div>
        	 </div>
        	<div class="col-md-3 widget">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-users dollar2 icon-rounded"></i>
                    <div class="stats">
                      <h5><strong>1450</strong></h5>
                      <span>Total Users</span>
                    </div>
                </div>
        	 </div>
        	<div class="clearfix"> </div>
		</div>
		
		<div class="row-one widgettable">
			<div class="col-md-7 content-top-2 card">
				<div class="agileinfo-cdr">
					
                        <h3>Account Info</h3>
                    
					
						<div id="Linegraph" style="width: 98%; height: 350px;margin-top: 20px">
                                                    
                            <%        
                                
                                String fn=" ";
                                String em=" ";
                                out.println("Welcome: "+str1+"<br>"); 
                                
                                
                                
                                try {
                                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                                con=DriverManager.getConnection("jdbc:sqlserver://localhost;Instance=SQLExpress;Database=Project;user=Project;Password=123");
                                stmt=con.createStatement();        
                                int flag=0;
                                rs = stmt.executeQuery("SELECT * FROM admin WHERE email='"+str+"' ");
                                
                                while (rs.next()){
                                fn=rs.getString("fname");
                                em=rs.getString("email");
                                
                                }
        
                        
           
            } catch (ClassNotFoundException ex) {
                
            }
            
                                
                               
                                out.println("Email:  "+em+"<br>");
                                out.println("Password:  *********  <button class='btn-link navbar-btn'  onclick=\"document.getElementById('modal-wrapper2').style.display='block'\"> Edit</button>");
                                
                            %> 
						</div>
						
				</div>
			</div>
			<div class="col-md-3 stat">
				<div class="content-top-1">
				<div class="col-md-6 top-content">
					<h5>Sales</h5>
					<label>1283+</label>
				</div>
				<div class="col-md-6 top-content1">	   
					<div id="demo-pie-1" class="pie-title-center" data-percent="45"> <span class="pie-value"></span> </div>
				</div>
				 <div class="clearfix"> </div>
				</div>
				<div class="content-top-1">
				<div class="col-md-6 top-content">
					<h5>Reviews</h5>
					<label>2262+</label>
				</div>
				<div class="col-md-6 top-content1">	   
					<div id="demo-pie-2" class="pie-title-center" data-percent="75"> <span class="pie-value"></span> </div>
				</div>
				 <div class="clearfix"> </div>
				</div>
				<div class="content-top-1">
				<div class="col-md-6 top-content">
					<h5>Visitors</h5>
					<label>12589+</label>
				</div>
				<div class="col-md-6 top-content1">	   
					<div id="demo-pie-3" class="pie-title-center" data-percent="90"> <span class="pie-value"></span> </div>
				</div>
				 <div class="clearfix"> </div>
				</div>
			</div>
			<div class="col-md-2 stat">
				<div class="content-top">
					<div class="top-content facebook">
						<a href="#"><i class="fa fa-facebook"></i></a>
					</div>
					<ul class="info">
						<li class="col-md-6"><b>1,296</b><p>Friends</p></li>
						<li class="col-md-6"><b>647</b><p>Likes</p></li>
						<div class="clearfix"></div>
					</ul>
				</div>
				<div class="content-top">
					<div class="top-content twitter">
						<a href="#"><i class="fa fa-twitter"></i></a>
					</div>
					<ul class="info">
						<li class="col-md-6"><b>1,997</b><p>Followers</p></li>
						<li class="col-md-6"><b>389</b><p>Tweets</p></li>
						<div class="clearfix"></div>
					</ul>
				</div>
				<div class="content-top">
					<div class="top-content google-plus">
						<a href="#"><i class="fa fa-google-plus"></i></a>
					</div>
					<ul class="info">
						<li class="col-md-6"><b>1,216</b><p>Followers</p></li>
						<li class="col-md-6"><b>321</b><p>shares</p></li>
						<div class="clearfix"></div>
					</ul>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
				
				
				
	
	

    
	
		
		
		
				
			</div>
		</div>
	<!--footer-->
	<div class="footer">
	   <p>&copy; 2018 Loot Hamper</p>		
	</div>
    <!--//footer-->
	</div>
       
                        <div id="modal-wrapper2" class="modal">
  
            <form class="modal-content animate" action="AchangePass" method="post">
        
    <div class="imgcontainer">
      <span onclick="document.getElementById('modal-wrapper2').style.display='none'" class="close" title="Close PopUp">&times;</span>
      <img src="images/loot_hamper.png" alt="Avatar" class="avatar">
      
      <h1 style="text-align:center">Change Password</h1>
    </div>

    <div class="container">
        <input type="password" placeholder="Current Password" name="cpass"  style="width:40% "><br>
        <input type="password" placeholder="New Password" name="npass"  style="width:40% "><br>
        <input type="password" placeholder="Retype New Password" name="renpass"  style="width:40% "><br>
      <input type="submit" value="Change Password"/>
      </div>
    
  </form>
  
</div>  
                                                 
         
                            
                            <script>
// If user clicks anywhere outside of the modal, Modal will close

var modal = document.getElementById('modal-wrapper2');
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}


</script>
<script src="js/admin/classie.js"></script>
		<script>
			var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
				showLeftPush = document.getElementById( 'showLeftPush' ),
				body = document.body;
				
			showLeftPush.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( body, 'cbp-spmenu-push-toright' );
				classie.toggle( menuLeft, 'cbp-spmenu-open' );
				disableOther( 'showLeftPush' );
			};
			

			function disableOther( button ) {
				if( button !== 'showLeftPush' ) {
					classie.toggle( showLeftPush, 'disabled' );
				}
			}
		</script>
                <script src="js/bootstrap.min.js"> </script>
    </body>
</html>
