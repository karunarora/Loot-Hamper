

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>

<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" type="image/png" href="images/fav1.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/shopstyle.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style4.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <script src="js/jquery-1.12.3.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <title>Seller Products</title>
    </head>
    <body>
        
        <%
            
            int flag=0;
        String user=(String)session.getAttribute("aemail");
        
        try
                    {
                    Connection con;
                   
                    PreparedStatement st;
                    ResultSet rs;
                    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                        con=DriverManager.getConnection("jdbc:sqlserver://localhost;databaseName=Project;user=Project;password=123");
                        
                    
                        
                        st=con.prepareStatement("select * from seller_product");
                        
                        rs=st.executeQuery();
                        
                        while(rs.next()){
                            flag++;
                        }
                        
                    }catch(Exception e){out.println(e);}
        
        
        if(user==null)
        {
            response.sendRedirect("adminLogin.jsp");
        }
        else if(flag!=0){
            
            
            
           
        
        %>
        <div class="body-container" ">
            <jsp:include page="navbar2.jsp"/>
            
	<div class="check-out" style="margin-left: 70px;margin-right: 70px">
	
                        
                        <div class="bs-example4" data-example-id="simple-responsive-table">
    <div class="table-responsive">
    	    <table class="table-heading simpleCart_shelfItem">
		  <tr>
			<th class="table-grid">Item</th>
					
			<th>Prices</th>
			<th >Seller name</th>
			<th>Decide</th>
		  </tr>
                  
                  <%
                 
                  try
                    {
                    Connection con;
                   
                    PreparedStatement st;
                    ResultSet rs;
                    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                        con=DriverManager.getConnection("jdbc:sqlserver://localhost;databaseName=Project;user=Project;password=123");
                        
                    
                        
                        st=con.prepareStatement("select * from seller_product");
                        
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
			<td>&#8377;<%=rs.getString("price")%></td>
                        
                        
			<td><%=rs.getString("sname")%></td>
			
                        <td class="add-check"><a class="item_add hvr-skew-backward" href="removeSProduct?rem=<%=rs.getString("id")%>">Reject</a></td>
                         <td class="add-check"><a class="item_add hvr-skew-backward" href="addSProduct?rem=<%=rs.getString("id")%>">Approve</a></td>

			
		  </tr>
                  <%}
                    }catch(Exception e1)
                    {}
                    
                    
                  %>
            </table>
                        
	
    </div>
</div>
        </div>
        </div>
            <%}else{
            %>
            <div class="body-container" >
                 
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
                <h2>No Item</h2>
                        </div>
        </div>
        </div>
            </div>
    
            <%
            
            
        }
            %>
            
    </body>
</html>
