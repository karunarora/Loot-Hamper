


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;



public class Sforgot extends HttpServlet {

   
        Connection cn;
        PreparedStatement pst;
        ResultSet rs; 
        String stql, ssql;
        int flag=0;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) 
        {
            String dat = "";
        Random ran = new Random();
            int top = 6;
            char data = ' ';
       
            for (int i=0; i<top; i++) 
            {
            data = (char)(ran.nextInt(25)+97);
            dat = data + dat;
            }
            
             try
        {
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url="jdbc:sqlserver://localhost;instance=LALLYINFOSYS;databaseName=Project;user=Project;password=123";        
            cn=DriverManager.getConnection(url);
            String un=request.getParameter("uname");      
           stql="Select * From seller Where email=?";
           pst=cn.prepareStatement(stql);
           pst.setString(1,un);
           rs=pst.executeQuery();
          if(rs.next())
          {
          
              flag=1;
              ssql="UPDATE seller SET pass=? where email=?";
              pst=cn.prepareStatement(ssql);
              pst.setString(1,dat);
              pst.setString(2,un);
              
              pst.executeUpdate();
              
              
          }
          else{
          response.sendRedirect("SForgot.jsp");
          }
        }
        catch(Exception e)
        {
            
        }
            if(flag==1)
            {
            String host ="smtp.gmail.com" ;
            String user = "AbcXdef1234@gmail.com";
            String pass = "javaproject";
            String to = request.getParameter("uname");
            out.println(to);
            String from = "AbcXdef1234@gmail.com";
            String subject = "This is an Email for Password Recovery.";
            
            HttpSession session=request.getSession();
                   session.setAttribute("dat",dat);
                   session.setAttribute("user",to);
            String messageText = "Your Temporary Password Is:"+dat;
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
            msg.setSentDate(new Date());
            msg.setText(messageText);        
           Transport.send(msg);
           System.out.println("message send successfully");          
           response.sendRedirect("sellerLogin.jsp");
            }
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
       
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
}// </editor-fold>
}

