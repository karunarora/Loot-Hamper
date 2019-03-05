/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
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
@WebServlet(urlPatterns = {"/validate"})
public class validate extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            HttpSession session1=request.getSession(false);
            session1.invalidate();
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet validate</title>");            
            out.println("</head>");
            out.println("<body>");
            Connection con=null;
        Statement stmt=null;
        ResultSet rs=null;
        
        String u=request.getParameter("loginMail");
        String p=request.getParameter("loginPass");
        
        
        
            try {
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            
        con=DriverManager.getConnection("jdbc:sqlserver://localhost;Instance=SQLExpress;Database=Project;user=Project;Password=123");
        stmt=con.createStatement();        
        int flag=0;
        rs = stmt.executeQuery("SELECT * FROM Udata WHERE email='"+u+"' ");
        
                        
            if(rs!=null)
            {
            while(rs.next())
            {
            if((rs.getString("pwd").equals(p))) 
            {
                HttpSession session=request.getSession();
                   session.setAttribute("user",u);
                   session.setAttribute("user1",rs.getString("uname"));
                response.sendRedirect("user.jsp");
                flag=1;
                
                break;
            }
            else
                {
             request.setAttribute("error","Incorrect EmailId and Password.");
                RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
                rd.forward(request,response);
                
                }
            }
            }
            if(flag==0)
            {
                request.setAttribute("error","Incorrect EmailId and Password.");
                RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
                rd.forward(request,response);
            }
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(validate.class.getName()).log(Level.SEVERE, null, ex);
            }
            out.println("<h1>Servlet validate at " + request.getContextPath() + "</h1>");
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
            Logger.getLogger(validate.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(validate.class.getName()).log(Level.SEVERE, null, ex);
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
