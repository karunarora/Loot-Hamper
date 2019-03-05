

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(urlPatterns = {"/addcart"})
public class addcart extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet addcart</title>");            
            out.println("</head>");
            out.println("<body>");
            HttpSession session=request.getSession();
            
            if(session.getAttribute("user")==null){response.sendRedirect("index.jsp");}
                try{
                    Connection con;
                    PreparedStatement pst;
                    PreparedStatement st;
                    ResultSet rs;
                    
                    String str=(String)session.getAttribute("user");
                    out.println(str);
                    out.println(request.getParameter("id"));
                    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                        con=DriverManager.getConnection("jdbc:sqlserver://localhost;databaseName=Project;user=Project;password=123");
                        pst=con.prepareStatement("update Udata set cart=? where email=?");
                        String pcart=null;
                        st=con.prepareStatement("select cart from Udata where email=?");
                        st.setString(1, str);
                        rs=st.executeQuery();
                        while(rs.next()){
                            pcart=rs.getString(1);
                        }
                        if(pcart!=null){
                        pst.setString(1, pcart+request.getParameter("id")+",");
                        }else{
                            pst.setString(1, request.getParameter("id")+",");
                        }
                        pst.setString(2, str);
                        int temp=pst.executeUpdate();
                        getServletContext().getRequestDispatcher("/Shop.jsp").forward(request, response);
                }catch(Exception e){out.print(e.getMessage());}
            
            out.println("<h1>Servlet addcart at " + request.getContextPath() + "</h1>");
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
