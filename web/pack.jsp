<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
<%@ page import="java.sql.*;" %>
<%
 Connection con=null;
          Statement stmt=null;
          ResultSet rs=null;  
          String remail=null;
         
        String str=(String)session.getAttribute("user");
        String str1=(String)session.getAttribute("user1");
        String str2=request.getParameter("rec");
        String user=null;
        String pass=null;
        String link = "<a href=\"http://abcd.efg.com\" target=\"_blank\">http://abcd.efg.com</a>";
        if(str==null)
        {
            response.sendRedirect("index.jsp");
        }
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet pack</title>");            
            out.println("</head>");
            out.println("<body>");
            
                     
                                
                                
                                try {
                                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                                con=DriverManager.getConnection("jdbc:sqlserver://localhost;Instance=SQLExpress;Database=Project;user=Project;Password=123");
                                stmt=con.createStatement();        
                                int flag=0;
                                rs = stmt.executeQuery("SELECT * FROM Udata WHERE uname='"+str2+"' ");
                                while(rs.next())
                                remail=rs.getString("email");
                                out.println(remail);
                                out.println(str);
                                
            } catch (ClassNotFoundException ex) {
                
            }
            
            String host ="smtp.gmail.com" ;
            user = "AbcXdef1234@gmail.com";
            pass = "javaproject";
            String to = str;
            out.println(to);
            String from = "AbcXdef1234@gmail.com";
            String subject = "Pay now To Subscribe";
           
           
                   
                   session.setAttribute("user",to);
                   String q="thank you"+link;
            String messageText = q ;
            out.println(messageText);
            
          boolean sessionDebug = false;

            Properties props = System.getProperties();

            props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.host", host);
            props.put("mail.smtp.port", "587");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.starttls.required", "true");


            java.security.Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
            Session mailSession = Session.getInstance(props,
            new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(user,pass);
            }
            });
            Message msg = new MimeMessage(mailSession);
            msg.setFrom(new InternetAddress(from));
            msg.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
            msg.setSubject(subject); 
            msg.setSentDate(new java.util.Date());
            msg.setText(messageText);        
           Transport.send(msg);
           System.out.println("message send successfully"); 
           
           
            
            to = remail;
            out.println(to);
            from = "AbcXdef1234@gmail.com";
            subject = "Pay now To Subscribe";
           
           
                   
                   session.setAttribute("user",to);
                   q="Thank you";
                           
            messageText = q;
            out.println(messageText);
            
          sessionDebug = false;

            props = System.getProperties();

            props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.host", host);
            props.put("mail.smtp.port", "587");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.starttls.required", "true");


            java.security.Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
            Session mailSession1 = Session.getInstance(props,
            new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(user,pass);
            }
            });
            Message msg1 = new MimeMessage(mailSession1);
            msg1.setFrom(new InternetAddress(from));
            msg1.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
            msg1.setSubject(subject); 
            msg1.setSentDate(new java.util.Date());
            msg1.setText(messageText);        
           Transport.send(msg1);
           System.out.println("message send successfully"); 
           response.sendRedirect("friendlist.jsp");
%>