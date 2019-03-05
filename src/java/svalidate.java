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
import java.sql.Statement;
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
@WebServlet(urlPatterns = {"/svalidate"})
public class svalidate extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
             HttpSession session1=request.getSession(false);
            session1.invalidate();
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet svalidate</title>");            
            out.println("</head>");
            out.println("<body>");
            Connection con=null;
        Statement stmt=null;
        ResultSet rs=null;
        
        String u=request.getParameter("email");
        String p=request.getParameter("pass");
        
        
        
            try {
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        con=DriverManager.getConnection("jdbc:sqlserver://localhost;Instance=SQLExpress;Database=Project;user=Project;Password=123");
        stmt=con.createStatement();
        int flag=0;
        rs = stmt.executeQuery("SELECT * FROM seller WHERE email='"+u+"' ");
        
                        
            if(rs!=null)
            {
            while(rs.next())
            {
            if((rs.getString("pass").equals(p))) 
            {
                HttpSession session=request.getSession();
                   session.setAttribute("semail",u);
                   session.setAttribute("suser",rs.getString("username"));
                response.sendRedirect("Seller.jsp");
                flag=1;
                
                break;
            }else{
            response.sendRedirect("sellerLogin.jsp");
            }
            }
            }
            if(flag==0)
            {
                request.setAttribute("error","Incorrect EmailId and Password.");
                RequestDispatcher rd=request.getRequestDispatcher("sellerLogin.jsp");
                rd.forward(request,response);
            }
            }catch(Exception e)
                    {}
            out.println("<h1>Servlet svalidate at " + request.getContextPath() + "</h1>");
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
