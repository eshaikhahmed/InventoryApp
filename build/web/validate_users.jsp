<%-- 
    Document   : validate_users.php
    Created on : Feb 18, 2017, 2:52:05 PM
    Author     : EJAZ
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DBManager.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         
        
        
        <%
            String username="";
            String password="";
            
            DBManager db=new DBManager();
            if(request.getParameter("username")!=null)
            {
                username=request.getParameter("username").toString();
                password=request.getParameter("password").toString();
                
                int a=0;
                
                String query="SELECT * FROM users WHERE username='"+username+"' AND password='"+password+"' ";
                ResultSet rs=db.retrieve(query);
                
                while(rs.next())
                {
                    String userid=rs.getString("userid");
                    String fullname=rs.getString("fullname");
                    a=1;
                    session.setAttribute("userid", userid);
                    session.setAttribute("fullname", fullname);
                }
                
                if(a==1)
                {
                    response.sendRedirect("show_inventory.jsp");
                }else
                {
                   response.sendRedirect("index.jsp?error=Wrong Username & Password"); 
                }
            }
            %>
    </body>
</html>
