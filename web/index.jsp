<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <jsp:include page="header_1.jsp"></jsp:include>
 <br><br><br><br><br><br>
  <center>
  <%
      if(request.getParameter("error")!=null)
      {
          String error=request.getParameter("error").toString();
          out.println("<span style='color:white;'>"+error+"</span>");
      }
      %>
     <form action="validate_users.jsp" > 
     <table>
         <tr>
             <td style='color:white;font-weight: bold;'>Username</td>
             <td><input type='text' style='height:30px;width:180px;' name='username' placeholder='Username' /></td>
         </tr>
             <tr>
             <td>&nbsp;</td>
             
         </tr>
           <tr>
             <td style='color:white;font-weight: bold;'>Password</td>
             <td><input type='password' style='height:30px;width:180px;' name='password' placeholder='Password' /></td>
         </tr>
         <tr>
             <td>&nbsp;</td>
             
         </tr>
           <tr>
             
             <td><input style='border:none;background:blue;border-radius:3px;font-size:20px;color:white;width:120px;height:35px;' type='submit' value='Sign In' /></td>
             <td>&nbsp;<a href='register1.jsp' style='border:none;font-size:15px;color:white;width:100px;height:30px;'>New User?</a></td>
         </tr>
     </table>
     </form>
   
     
 </center>
     </body>
</html>
