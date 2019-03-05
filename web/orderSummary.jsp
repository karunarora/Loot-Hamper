

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
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="css/style4.css" rel="stylesheet" type="text/css" media="all" />
        <script src="js/jquery-1.12.3.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        
        <title>Order Summary</title>
    </head>
    <body><% String str=(String)session.getAttribute("user");
        String str1=(String)session.getAttribute("user1");
        if(str==null)
        {
            response.sendRedirect("index.jsp");
        }
        %>
        <div class="body-container">
            <jsp:include page="navbar.jsp"/>
        
            <div class="check-out" style="margin-left: 70px;margin-right: 70px">
	
                        
	
                        
                        <div class="bs-example4" data-example-id="simple-responsive-table">
    <div class="table-responsive">
        <table class="table-heading simpleCart_shelfItem" style="border: 2px solid #dddddd; text-align: center;">
            <tr style="border: 2px solid #dddddd;">
            <td  style="border: 2px solid #dddddd; margin-left: 20px;"><h4>Item</h4></td>
					
            <td style="border: 2px solid #dddddd; "><h4>Prices</h4></td>
            <td style="border: 2px solid #dddddd; "><h4>Delivery</h4> </td>
			
		  </tr>
                  
                  <%
                  
                  String pcart=null;
                  try
                    {
                    Connection con;
                   
                    PreparedStatement st;
                    ResultSet rs;
                    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                        con=DriverManager.getConnection("jdbc:sqlserver://localhost;databaseName=Project;user=Project;password=123");
                        
                    
                        
                        st=con.prepareStatement("select cart from orderdetails where email=?");
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
                  
                  <tr class="cart-header" style="border: 2px solid #dddddd; ">
                        
                      <td class="ring-in"><a href="#" class="at-in"><img src="images/product/<%=rs.getString("image") %>" class="img-responsive" alt=""></a>
			<div class="sed">
                            <h5><a href="#"><%=rs.getString("name") %></a></h5>
				<p>(<%=rs.getString("description") %> ) </p>
			
			</div>
			</td>
			<td> &#8377;<%=rs.getString("price")%></td>
			<td>FREE SHIPPING</td>
			
                  </tr>
			
		  
                  <%}
                    }catch(Exception e1)
                    {}
                    i++;
                    }
                  %>
                  
            </table>
                     
	
    </div>
</div>
        </div>
        </div>
    </div>
</div>
    </body>
</html>
