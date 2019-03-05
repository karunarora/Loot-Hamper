<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.cart.CartItem"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>

<%@page import="java.sql.Connection"%>
<%

            String str=(String)session.getAttribute("email");
            
            
            
            
                try{
                    Connection con;
                    PreparedStatement pst;
                    PreparedStatement st;
                    ResultSet rs;
                    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                        con=DriverManager.getConnection("jdbc:sqlserver://localhost;databaseName=again;user=again;password=123");
                        pst=con.prepareStatement("update orderr set id=? where email=?");
                        String pcart=null;
                        st=con.prepareStatement("select id from orderr where email=?");
                        st.setString(1, str);
                        rs=st.executeQuery();
                        while(rs.next()){
                            pcart=rs.getString(1);
                        }
                        if(pcart!=null){
                        pst.setString(1, pcart+str1+",");
                        }else{
                            pst.setString(1, str1);
                        }
                        pst.setString(2, str);
                        int temp=pst.executeUpdate();
                        getServletContext().getRequestDispatcher("/shipping.jsp?").forward(request, response);
                }catch(Exception e){out.print(e.getMessage());}
            
            
            
            
            
            
           

%>
