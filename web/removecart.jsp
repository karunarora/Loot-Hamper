<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
    
    
           HttpSession hsession=request.getSession();
            String str=(String)hsession.getAttribute("user");
            out.println(str);
            Connection con=null;
            PreparedStatement st=null;
            ResultSet rs=null;
            String temp=null;
            ArrayList <String> list=new ArrayList <String>();
            try{
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                con=DriverManager.getConnection("jdbc:sqlserver://localhost;databaseName=Project;user=Project;password=123");
                st=con.prepareStatement("Select cart from Udata where email=?");
                st.setString(1, str);
                rs=st.executeQuery();
                while(rs.next()){
                    temp=rs.getString(1);
                }
            }catch(SQLException e){
                out.print(e.getMessage());
            }
            String x=null;
            int c=0;
            for(int i=0;i<temp.length();i++){
                if(temp.charAt(i)==','){
                    list.add(x);
                    x=null;
                    c=0;
                    continue;
                    }
                if(c==0){
                x=String.valueOf(temp.charAt(i));
                c++;
                }else{
                x=x+temp.charAt(i);
                }
            }
            
            for(String mf:list){
                if(request.getParameter("rem").equals(mf)){
                    list.remove(mf);break;
                }
            }
            c=0;
            temp=null;
            for(String mf:list){
                if(c==0){
                    temp=mf+",";
                    c++;
                }else{
                    temp=temp+mf+",";
                }
            }
            try{
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                con=DriverManager.getConnection("jdbc:sqlserver://localhost;databaseName=Project;user=Project;password=123");
                st=con.prepareStatement("update Udata set cart=? where email=?");
                st.setString(1, temp);
                st.setString(2, str);
                st.executeUpdate();
            }catch(SQLException e){
                out.print(e.getMessage());
            }
            response.sendRedirect("checkout.jsp");
           

%>