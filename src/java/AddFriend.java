/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import static javax.persistence.metamodel.PluralAttribute.CollectionType.SET;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Karun
 */
@WebServlet(urlPatterns = {"/AddFriend"})
public class AddFriend extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    Connection con;
        PreparedStatement pst;
        ResultSet rs; 
        String stql, ssql;
        Statement stmt=null,stmt1=null,stmt2=null;
        
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>AddFriend</title>");            
            out.println("</head>");
            out.println("<body>");
            HttpSession session=request.getSession(false);
                   String user1=(String)session.getAttribute("user1");
                 String us=request.getParameter("addfriend");
                 
              if(!user1.equals(us))
        {   
              try {
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            
        con=DriverManager.getConnection("jdbc:sqlserver://localhost;Instance=SQLExpress;Database=Project;user=Project;Password=123");
        stmt=con.createStatement();
        stmt1=con.createStatement();
        
        rs = stmt.executeQuery("SELECT * FROM Udata WHERE uname='"+us+"' ");
        
                        
            if(rs.next())
            {
                rs = stmt.executeQuery("SELECT * FROM Friend where sender='"+user1+"' and receiver='"+us+"' ");
                if(rs.next())
                {
                   out.println("<script>alert('Already Friends')</script>");
                   response.sendRedirect("friendlist.jsp");
                }
                else{
                
               try{
                   
                pst=con.prepareStatement("INSERT INTO Friend VALUES(?,?),(?,?)");
                
                pst.setString(1,user1);
                pst.setString(2,us);
                pst.setString(3,us);
                pst.setString(4,user1);
                rs=pst.executeQuery();
                
                 
               }catch(Exception e){response.sendRedirect("friendlist.jsp");}
                }
            }
            else
            {
                out.println("<script>alert('User Not Found')</script>");
                response.sendRedirect("friendlist.jsp"); 
            }
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(validate.class.getName()).log(Level.SEVERE, null, ex);
            }
              }
              else
               response.sendRedirect("friendlist.jsp");   
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
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AddFriend.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(AddFriend.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AddFriend.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(AddFriend.class.getName()).log(Level.SEVERE, null, ex);
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
