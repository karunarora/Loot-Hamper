
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
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
@WebServlet(urlPatterns = {"/packdb"})
public class packdb extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            Connection con=null;
             PreparedStatement pst;
          Statement stmt=null;
          ResultSet rs=null;
          String first=null,second=null;
          int id=Integer.parseInt(request.getParameter("id"));
          String email=request.getParameter("email");
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet packdb</title>");            
            out.println("</head>");
            out.println("<body>");
            Random ran = new Random();
            int a=ran.nextInt(9);
            int b=ran.nextInt(11);
            
             try {
                                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                                con=DriverManager.getConnection("jdbc:sqlserver://localhost;Instance=SQLExpress;Database=Project;user=Project;Password=123");
                                stmt=con.createStatement();        
                                
                                rs = stmt.executeQuery("SELECT * FROM pack WHERE id='"+id+"' ");
                                while(rs.next()){
                                first=rs.getString("first");
                                second=rs.getString("second");}
                                
                                
                                
            } catch (ClassNotFoundException ex) {
                
            }
             
             if(first==null){
                 try {
                                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                                con=DriverManager.getConnection("jdbc:sqlserver://localhost;Instance=SQLExpress;Database=Project;user=Project;Password=123");
                                stmt=con.createStatement();        
                                
                                rs = stmt.executeQuery("update pack set first='"+email+"' where id='"+id+"' ");
                                
                                
                                
                                
            } catch (Exception ex) {
                
            }
             
             }
             else{
             
             try {
                                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                                con=DriverManager.getConnection("jdbc:sqlserver://localhost;Instance=SQLExpress;Database=Project;user=Project;Password=123");
                                stmt=con.createStatement();        
                                
                                rs = stmt.executeQuery("update pack set second='"+email+"' where id='"+id+"' ");
                                
                                
                                
            } catch (Exception ex) {
                
            }
             
              
             
             }
             if(first!=null){
             try{
                                 pst=con.prepareStatement("INSERT INTO pack_order(email,category) VALUES(?,?),(?,?)");
                
                pst.setString(1,first);
                pst.setInt(2,a);
                pst.setString(3,email);
                pst.setInt(4,b);
                
                rs=pst.executeQuery();}catch(Exception e){response.sendRedirect("friendlist.jsp");}
             
             }
             response.sendRedirect("friendlist.jsp");
            out.println("<h1>Servlet packdb at " + request.getContextPath() + "</h1>");
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
            Logger.getLogger(packdb.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(packdb.class.getName()).log(Level.SEVERE, null, ex);
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
