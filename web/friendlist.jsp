

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*;" %>
<!DOCTYPE html>
<html lang="en">
<head>
    
    
    <title>Friend List</title><link rel="icon" type="image/png" href="images/fav1.png">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
    	.list-content{
 min-height:300px;
}
.list-content .list-group .title{
  background:#5bc0de;
  border:2px solid #DDDDDD;
  font-weight:bold;
  color:#FFFFFF;
}
.list-group-item img {
    height:80px; 
    width:80px;
}

.jumbotron .btn {
    padding: 5px 5px !important;
    font-size: 12px !important;
}
.prj-name {
    color:#5bc0de;    
}
.break{
    width:100%;
    margin:20px;
}
.name {
    color:#5bc0de;    
}
    </style>
</head>
<body>
    <%
          Connection con=null;
          Statement stmt=null;
          ResultSet rs=null; 
          ResultSet rss=null; 
          String email=null;
          int flag=0;
        String str=(String)session.getAttribute("user");
        String str1=(String)session.getAttribute("user1");
        if(str==null)
        {
            response.sendRedirect("index.jsp");
        }
        
        
        
        try {
                                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                                con=DriverManager.getConnection("jdbc:sqlserver://localhost;Instance=SQLExpress;Database=Project;user=Project;Password=123");
                                stmt=con.createStatement();        
                                
                                rs = stmt.executeQuery("SELECT * FROM udata WHERE uname='"+str1+"'");
                                
                                while (rs.next()){
                                email=rs.getString("email");
                                }
                                
                                } catch (Exception ex) {
                                        out.println(ex);
       }
        
        %>
        
        
        
        <div class="body-container">
            <jsp:include page="navbar.jsp"/>
        </div>
<link href="http://getbootstrap.com/examples/jumbotron-narrow/jumbotron-narrow.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css">
<div class="container bootstrap snippet">

  <div class="header">
    <h3 class="text-muted prj-name">
        <span class="fa fa-users fa-2x principal-title"></span>
        Friend List
    </h3>
  </div>
 

  <div class="jumbotron list-content">
      <form action="AddFriend" method="post">
                            <input type="text" name="addfriend" placeholder="Friend's Username">
                            <input type="submit" value="Add Friend">
      </form><br>
    <ul class="list-group">
      <li href="#" class="list-group-item title">
        Your friend zone
      </li>
       <%
                            try {
                                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                                con=DriverManager.getConnection("jdbc:sqlserver://localhost;Instance=SQLExpress;Database=Project;user=Project;Password=123");
                                stmt=con.createStatement();        
                                
                                rs = stmt.executeQuery("SELECT * FROM Friend WHERE sender='"+str1+"' ");
                                
                                while (rs.next()){
                                    if(flag==0){
                                    try {
                                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                                con=DriverManager.getConnection("jdbc:sqlserver://localhost;Instance=SQLExpress;Database=Project;user=Project;Password=123");
                                stmt=con.createStatement();        
                                
                                rss = stmt.executeQuery("SELECT * FROM pack WHERE second='"+email+"' ");
                                
                                while (rss.next()){
                                flag++;
                                }
                                
                                } catch (Exception ex) {
                                        out.println(ex);
       }}
                                %>
                            
                           
                  
                  
                            
                           
      <li href="#" class="list-group-item text-left">
        <img class="img-thumbnail" src="images/Use.png">
        <label class="name">
            <%=rs.getString("receiver")%><br>
        </label>
        
        <label class="pull-right">
       <% if(flag==1){%>
       <a href="pack?rec=<%=rs.getString("receiver")%>" class="btn btn-success btn-xs ">Packed</a>
            
             <a  class="btn btn-danger btn-xs" href="#" title="Delete">Delete</a><% }
         else  {%>
         <a href="pack?rec=<%=rs.getString("receiver")%>" class="btn btn-success btn-xs ">Pack</a>
            <a  class="btn btn-danger btn-xs" href="#" title="Delete">Delete</a>
            
        </label>
        <div class="break"></div>
      </li>
       <%}
                                
                                }
                                
                                } catch (Exception ex) {
                                        out.println(ex);
       }
                            %>
      
     
    </ul>
  </div>
  </div>
</div>                                                                                

<script src="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script type="text/javascript">
	
</script>
</body>
</html>