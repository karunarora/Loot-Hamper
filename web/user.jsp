

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*;" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
       
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="css/popup.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/png" href="images/fav1.png">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
        <title>Panel</title>
        
    </head>
    <body>
        
        <%
          Connection con=null;
          Statement stmt=null;
          ResultSet rs=null;  
        String str=(String)session.getAttribute("user");
        String str1=(String)session.getAttribute("user1");
        if(str==null)
        {
            response.sendRedirect("index.jsp");
        }
        %><jsp:include page="navbar.jsp"/> 
        <div class="container">
            
            
            
            <h3>Account Info</h3>
                            <%        
                                HttpSession sessionUser=request.getSession(true);
                                String n=(String)sessionUser.getAttribute("user");
                                String fn=" ";
                                String em=" ";
                                out.println("Welcome: "+str1+"<br>"); 
                                
                                
                                
                                try {
                                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                                con=DriverManager.getConnection("jdbc:sqlserver://localhost;Instance=SQLExpress;Database=Project;user=Project;Password=123");
                                stmt=con.createStatement();        
                                int flag=0;
                                rs = stmt.executeQuery("SELECT * FROM Udata WHERE email='"+n+"' ");
                                
                                while (rs.next()){
                                fn=rs.getString("fullname");
                                em=rs.getString("email");
                                
                                }
        
                        
           
            } catch (ClassNotFoundException ex) {
                
            }
            
                                
                                out.println("Full name:  "+fn+"<button class='btn-link navbar-btn'  onclick=\"document.getElementById('modal-wrapper').style.display='block'\"> Edit</button><br>");
                                out.println("Email:  "+em+"<br>");
                                out.println("Password:  *********  <button class='btn-link navbar-btn'  onclick=\"document.getElementById('modal-wrapper2').style.display='block'\"> Edit</button>");
                                
                            %>
        </div>
                            
             <div id="modal-wrapper" class="modal">
  
            <form class="modal-content animate" action="fullname" method="post">
        
    <div class="imgcontainer">
      <span onclick="document.getElementById('modal-wrapper').style.display='none'" class="close" title="Close PopUp">&times;</span>
      <img src="images/loot_hamper.png" alt="Avatar" class="avatar">
      
      <h1 style="text-align:center">Full name</h1>
    </div>

    <div class="container">
      <input type="text" placeholder="Full name" name="fname" value="">       
      <input type="submit" value="Submit"/>
      </div>
    
  </form>
  
</div>          
                            
                            <div id="modal-wrapper1" class="modal">
  
            <form class="modal-content animate" action="EmailEdit" method="post">
        
    <div class="imgcontainer">
      <span onclick="document.getElementById('modal-wrapper1').style.display='none'" class="close" title="Close PopUp">&times;</span>
      <img src="images/loot_hamper.png" alt="Avatar" class="avatar">
      
      <h1 style="text-align:center">Email</h1>
    </div>

    <div class="container">
      <input type="text" placeholder="Email" name="email" value="">       
      <input type="submit" value="Submit"/>
      </div>
    
  </form>
  
</div>       
                            
                            <div id="modal-wrapper2" class="modal">
  
            <form class="modal-content animate" action="ChangePass" method="post">
        
    <div class="imgcontainer">
      <span onclick="document.getElementById('modal-wrapper2').style.display='none'" class="close" title="Close PopUp">&times;</span>
      <img src="images/loot_hamper.png" alt="Avatar" class="avatar">
      
      <h1 style="text-align:center">Change Password</h1>
    </div>

    <div class="container">
      <input type="password" placeholder="Current Password" name="cpass" value="">
      <input type="password" placeholder="New Password" name="npass" value="">
      <input type="password" placeholder="Retype New Password" name="renpass" value="">
      <input type="submit" value="Change Password"/>
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
<script>
// If user clicks anywhere outside of the modal, Modal will close

var modal = document.getElementById('modal-wrapper2');
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}


</script>
        

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
         <script src="js/jquery-1.12.3.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    </body>
</html>
