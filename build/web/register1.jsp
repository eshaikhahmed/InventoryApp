<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <jsp:include page="header_1.jsp"></jsp:include>
 <br><br><br><br>
  <center>
      
     <form action="save.jsp" > 
     <table>
         <tr>
             <td style='color:white;font-weight: bold;'>Full Name </td>
             <td><input type='text' style='height:30px;width:180px;' name='fullname' placeholder='Full Name' /></td>
         </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        
        
        <tr>
             <td style='color:white;font-weight: bold;'>Username  </td>
             <td><input type='text' style='height:30px;width:180px;' name='username' placeholder='Username' required/></td>
         </tr>
        <tr>
            <td>&nbsp;</td>
        </tr> 
         
         
         <tr>
             <td style='color:white;font-weight: bold;'>Password</td>
             <td><input type='password' style='height:30px;width:180px;' name='password' placeholder='Password' required/></td>
         </tr>
         <tr>
             <td>&nbsp;</td>
             
         </tr>
         
         
        <tr>
             <td style='color:white;font-weight: bold;'>Mobile</td>
             <td><input type='number' style='height:30px;width:180px;' name='mobile' placeholder='Mobile' required/></td>
        </tr>
        <tr>
             <td>&nbsp;</td>  
        </tr>
        
        <tr>
             <td style='color:white;font-weight: bold;'>Email</td>
             <td><input type='email' style='height:30px;width:180px;' name='email' placeholder='Email' required/></td>
        </tr>
        <tr>
             <td>&nbsp;</td>  
        </tr>
        
         
         <tr>
             
             <td><input style='border:none;border-radius:3px;background:red;font-size:20px;color:white;width:120px;height:35px;' type='submit' value='Sign Up' /></td>
             <td>&nbsp;<a href='index.jsp' style='border:none;font-size:15px;color:white;width:100px;height:30px;'>&nbsp;Already User?</a></td>
         </tr>
     </table>
         <input type='hidden' name='page' value='register' />
     </form>
   
     
 </center>
     </body>
</html>
