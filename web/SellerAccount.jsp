

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*;" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" type="image/png" href="images/fav1.png">
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <script src="js/jquery-1.12.3.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <title>Manage Account</title>
    </head>
    <body>
        <%
          Connection con=null;
          Statement stmt=null;
          ResultSet rs=null;  
        String str=(String)session.getAttribute("semail");
        String str1=(String)session.getAttribute("suser");
        if(str==null)
        {
            response.sendRedirect("sellerLogin.jsp");
        }
        %>
        <jsp:include page="navbar1.jsp"/>
        <h3>Account Info</h3>
                            <%        
                                
                                String fn=" ";
                                String em=" ";
                                out.println("Welcome: "+str1+"<br>"); 
                                
                                
                                
                                try {
                                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                                con=DriverManager.getConnection("jdbc:sqlserver://localhost;Instance=SQLExpress;Database=Project;user=Project;Password=123");
                                stmt=con.createStatement();        
                                int flag=0;
                                rs = stmt.executeQuery("SELECT * FROM seller WHERE email='"+str+"' ");
                                
                                while (rs.next()){
                                fn=rs.getString("fname");
                                em=rs.getString("email");
                                
                                }
        
                        
           
            } catch (ClassNotFoundException ex) {
                
            }
            
                                
                                out.println("Full name:  "+fn+"<br>");
                                out.println("Email:  "+em+"<br>");
                                out.println("Password:  *********  <button class='btn-link navbar-btn'  onclick=\"document.getElementById('modal-wrapper2').style.display='block'\"> Edit</button>");
                                
                            %>
                            
                            
                            <div id="modal-wrapper2" class="modal">
  
            <form class="modal-content animate" action="SchangePass" method="post">
        
    <div class="imgcontainer">
      <span onclick="document.getElementById('modal-wrapper2').style.display='none'" class="close" title="Close PopUp">&times;</span>
      <img src="images/loot_hamper.png" alt="Avatar" class="avatar">
      
      <h1 style="text-align:center">Change Password</h1>
    </div>

    <div class="container">
        <input type="password" placeholder="Current Password" name="cpass" value=""><br>
        <input type="password" placeholder="New Password" name="npass" value=""><br>
        <input type="password" placeholder="Retype New Password" name="renpass" value=""><br>
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
    </body>
</html>
