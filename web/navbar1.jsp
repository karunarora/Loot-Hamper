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
         String str=(String)session.getAttribute("semail");
        String str1=(String)session.getAttribute("suser");
        if(str!=null){
        %>
      <li> <span class="navbar-text">
    Welcome: <%=str1%>
  </span> </li>
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">My Account <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="SellerAccount.jsp">Manage Account</a></li>
          <li><a href="Seller.jsp">Add Product</a></li>
          <li><a href="#">Your Orders</a></li>
          <li><a href="logout">Logout</a></li>
        </ul>
      </li>
      
      <%
        
        }
        %>
      </ul>
  </div>
</nav>