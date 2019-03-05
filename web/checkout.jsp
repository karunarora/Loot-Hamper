

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>

<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link rel="icon" type="image/png" href="images/fav1.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/shopstyle.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style4.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <script src="js/jquery-1.12.3.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <title>Order Summary</title>
    </head>
    <body>
        
        <%
            String m=null;
            int total=0;
        String user=(String)session.getAttribute("user");
        
        try
                    {
                    Connection con;
                   
                    PreparedStatement st;
                    ResultSet rs;
                    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                        con=DriverManager.getConnection("jdbc:sqlserver://localhost;databaseName=Project;user=Project;password=123");
                        
                    
                        
                        st=con.prepareStatement("select cart from Udata where email=?");
                        st.setString(1,user);
                        rs=st.executeQuery();
                        
                        while(rs.next()){
                            m=rs.getString(1);
                        }
                        
                    }catch(Exception e){out.println(e);}
        
        
        if(user==null)
        {
            response.sendRedirect("index.jsp");
        }
        else if(m!=null){
            
            
            
           
        
        %>
        <div class="body-container" ">
             <jsp:include page="navbar.jsp"/>
	<div class="check-out" style="margin-left: 70px;margin-right: 70px">
	
                        
                        <div class="bs-example4" data-example-id="simple-responsive-table">
    <div class="table-responsive">
    	    <table class="table-heading simpleCart_shelfItem">
		  <tr>
			<th class="table-grid">Item</th>
					
			<th>Prices</th>
			<th >Delivery </th>
			<th>Subtotal</th>
		  </tr>
                  
                  <%
                  String str=(String)session.getAttribute("user");
                  String pcart=null;
                  try
                    {
                    Connection con;
                   
                    PreparedStatement st;
                    ResultSet rs;
                    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                        con=DriverManager.getConnection("jdbc:sqlserver://localhost;databaseName=Project;user=Project;password=123");
                        
                    
                        
                        st=con.prepareStatement("select cart from Udata where email=?");
                        st.setString(1, str);
                        rs=st.executeQuery();
                        
                        while(rs.next()){
                            pcart=rs.getString(1);
                        }
                        
                    }catch(Exception e){out.println(e);}
                  
                  
                  
                    int i=0;
                   String[] k = pcart.split(",");
                   while( i<k.length)
                   {
                   
                   
                   int k1=Integer.parseInt(k[i]);
                   try
                    {
                    Connection con;
                   
                    PreparedStatement st;
                    ResultSet rs;
                    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                        con=DriverManager.getConnection("jdbc:sqlserver://localhost;databaseName=Project;user=Project;password=123");
                        
                        st=con.prepareStatement("select * from product where id=?");
                        st.setInt(1, k1);
                        rs=st.executeQuery();
                    
                   while(rs.next())
                   {
                   
                   %>
                  
                  <tr class="cart-header">
                        
                      <td class="ring-in"><a href="#" class="at-in"><img src="images/product/<%=rs.getString("image") %>" class="img-responsive" alt=""></a>
			<div class="sed">
                            <h5><a href="#"><%=rs.getString("name") %></a></h5>
				<p>(<%=rs.getString("description") %> ) </p>
			
			</div>
			</td>
			<td>$<%=rs.getString("price")%></td>
                        
                        <% total+=Integer.parseInt(rs.getString("price"));
                            
                        %>
			<td>FREE SHIPPING</td>
			<td class="item_price"><%=total%></td>
                        <td class="add-check"><a class="item_add hvr-skew-backward" href="removecart.jsp?rem=<%=rs.getString("id")%>">Delete</a></td>

			
		  </tr>
                  <%}
                    }catch(Exception e1)
                    {}
                    i++;
                    }
                  %>
            </table>
                        
	<div class="produced">
            <%
        session.setAttribute("total", total);
%>
            <a href="shipping.jsp" class="hvr-skew-backward">Proceed To Buy</a>
	 </div>
    </div>
</div>
        </div>
        </div>
            <%}else{
            %>
            <div class="body-container" >
                 <jsp:include page="navbar.jsp"/>
	<div class="check-out" style="margin-left: 70px;margin-right: 70px">
        <div class="bs-example4" data-example-id="simple-responsive-table">
    <div class="table-responsive">
    	    <table class="table-heading simpleCart_shelfItem">
		  <tr>
			<th class="table-grid">Item</th>
					
			<th>Prices</th>
			<th >Delivery </th>
			<th>Subtotal</th>
		  </tr>
                        </table>
                <h2>Cart is Empty</h2>
                        </div>
             <a href="Shop.jsp" class="hvr-skew-backward">Continue Shopping</a>
        </div>
        </div>
            </div>
    
            <%
            
            
        }
            %>
            
    </body>
</html>
