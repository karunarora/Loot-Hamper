

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URL;
import java.sql.*;
import java.util.Properties;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(urlPatterns = {"/pack"})
public class pack extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, AddressException, MessagingException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
             Connection con=null;
             PreparedStatement ps;
          Statement stmt=null;
          ResultSet rs=null;  
          String remail=null;
          HttpSession session =request.getSession();
        String str=(String)session.getAttribute("user");
        
        String str2=request.getParameter("rec");
        if(str==null)
        {
            response.sendRedirect("index.jsp");
        }
        
        int dat = 0;
             Random ran = new Random();
            int top = 6;
            int data = 0;
       
            for (int i=0; i<top; i++) 
            {
            data = (ran.nextInt(10000));
            dat=(ran.nextInt(1000));
            dat = data + dat;
            }
            session.setAttribute("dat", dat);
            try {
                                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                                con=DriverManager.getConnection("jdbc:sqlserver://localhost;Instance=SQLExpress;Database=Project;user=Project;Password=123");
                                stmt=con.createStatement();        
                                int flag=0;
                                stmt.executeQuery("insert into pack(id) values('"+dat+"')");
                                
                                
            } catch (Exception ex) {
                out.println(ex);
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
            String user = "AbcXdef1234@gmail.com";
            String pass = "javaproject";
            
            String to = remail;
            out.println(to);
            String from = "AbcXdef1234@gmail.com";
            String subject = "Pay now To Subscribe";
           
           
            URL myURLL = new URL("http://localhost:8080/Main/packdb?email="+remail+"&id="+dat);
            String q="Thank you "+str2+" "+myURLL;
            String messageText = q;
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
           response.sendRedirect("packs");
           
           
            
           //response.sendRedirect("friendlist.jsp");
            out.println("</body>");
            out.println("</html>");
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(pack.class.getName()).log(Level.SEVERE, null, ex);
        } catch (MessagingException ex) {
            Logger.getLogger(pack.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(pack.class.getName()).log(Level.SEVERE, null, ex);
        } catch (MessagingException ex) {
            Logger.getLogger(pack.class.getName()).log(Level.SEVERE, null, ex);
        }
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
