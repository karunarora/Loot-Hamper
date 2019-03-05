

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(urlPatterns = {"/order"})
public class order extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, MessagingException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet order</title>");            
            out.println("</head>");
            out.println("<body>");
            
            Connection con=null;
        Statement stmt=null;
        HttpSession session = request.getSession();
        String email=(String)session.getAttribute("user");
        String str1=(String)session.getAttribute("user1");
        String pcart=null;
       
        String totall=session.getAttribute("total").toString();
        
        
       try
                    {
                    
                  
                    PreparedStatement st;
                    ResultSet rs;
                    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                        con=DriverManager.getConnection("jdbc:sqlserver://localhost;databaseName=Project;user=Project;password=123");
                        
                    
                        
                        st=con.prepareStatement("select cart from Udata where email=?");
                        st.setString(1, email);
                        rs=st.executeQuery();
                        while(rs.next()){
                            pcart=rs.getString(1);
                        }
                        
                    }catch(Exception e){out.println(e);}
       
       
            try {
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        con=DriverManager.getConnection("jdbc:sqlserver://localhost;Instance=SQLExpress;Database=Project;user=Project;Password=123");
        stmt=con.createStatement();        
                
        stmt.execute("INSERT INTO orderdetails (email,cart,total) VALUES('"+email+"','"+pcart+"','"+totall+"')");
        
        } catch (ClassNotFoundException ex) {
                Logger.getLogger(insert.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            try {
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        con=DriverManager.getConnection("jdbc:sqlserver://localhost;Instance=SQLExpress;Database=Project;user=Project;Password=123");
        stmt=con.createStatement();        
                
        stmt.execute("UPDATE Udata SET cart = null WHERE email='"+email+"'");
        
        } catch (ClassNotFoundException ex) {
                Logger.getLogger(insert.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            
            
            String host ="smtp.gmail.com" ;
            String user = "AbcXdef1234@gmail.com";
            String pass = "javaproject";
            String to = email;
            //out.println(to);
            String from = "AbcXdef1234@gmail.com";
            String subject = "Order Placed";
           
           
                   
                   session.setAttribute("user",to);
                   String q="Thank you"+str1+". Your order has been successfully placed";
            String messageText = q;
            //out.println(messageText);
            
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
           response.sendRedirect("orderSummary.jsp");
            out.println("<h1>Servlet order at " + request.getContextPath() + "</h1>");
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
            Logger.getLogger(order.class.getName()).log(Level.SEVERE, null, ex);
        } catch (MessagingException ex) {
            Logger.getLogger(order.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(order.class.getName()).log(Level.SEVERE, null, ex);
        } catch (MessagingException ex) {
            Logger.getLogger(order.class.getName()).log(Level.SEVERE, null, ex);
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
