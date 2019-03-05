<link rel="stylesheet" href="css/bootstrap.min.css">

<nav class="navbar navbar-inverse ">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.jsp">Loot Hamper</a>
    </div>
    <ul class="nav navbar-nav">
      <li ><a href="Shop.jsp">Shop</a></li>
      
      <li><a href="index.jsp#about">About Us</a></li>
       <li><a href="index.jsp#contact">Contact</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right ">
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
      
     