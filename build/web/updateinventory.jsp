<%-- 
    Document   : updateinventory
    Created on : Feb 21, 2017, 12:33:36 PM
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
    String id="";
    String inventoryname="";
    String brand="";
    String price="";
    String condition="";
    String location="";
    
    if(request.getParameter("id")!=null)
    {
        id=request.getParameter("id").toString();
    }
    
    DBManager db=new DBManager();
    String query="SELECT * FROM inventory WHERE inventoryid='"+id+"' ";
    ResultSet rs=db.retrieve(query);
    while(rs.next())
    {
        
        inventoryname=rs.getString("inventory_name");
        brand=rs.getString("brand");
        price=rs.getString("price");
        condition=rs.getString("condition1");
        location=rs.getString("location");
    }
    db.Close();

%>
          <center><h1 style='font-size:30px;'>Add Inventory</h1>
    <table  >        
   <form action='save.jsp' method="post"  >
<!--       <p>
			<center><img id="show_image" height="200" width="300" src="images/image_upload.png" onclick="callhidden();" /></center>
			<input class="hidden" type='file' name='upload_image' id='upload_image' onchange="loadFile(this,'1')" />
		  </p>-->

<tr style='line-height: 10px;'>
    <td>Inventory Name : </td>
        <td><input type="text" placeholder="Inventory Name" name="inventory_name" 
                   id="inventory_name" value="<%=inventoryname%>" required/> 
    </td>
</tr>
<tr>
    <td>  Brand :   </td>
    <td>
    <input type="text" placeholder="Brand" name="brand" id="brand" value="<%=brand%>" required/>
   </td>
</tr>
<tr>
    <td>Price :   </td>
    <td> <input type="number" placeholder="Price" name="price" id="price" value="<%=price%>" required/> 
    </td>
</tr>
<input type="hidden" placeholder="inventory_type" name="inventory_type" id="inventory_type" value="New" /> <br>
  <tr>
    <td>Condition : 
    </td>
    <td><input type="text" placeholder="Condition" name="condition" id="condition" value="<%=condition%>" required/> 
    </td>
  </tr>
  <tr>
      <td>  
  Location : 
     </td>
     <td>  
        <input type="text" placeholder="Location" name="location" id="location" value="<%=location%>"  required/> 
     </td>
  </tr>
   
        <tr>
            <td>
                <input type="submit" style='height:30px;width:100px;color:white;border:none;background:red;font-weight:bold;' name="submit" id="submit" value="Update" /> 
            </td>
        </tr>
          <input type="hidden" placeholder="id" name="id" id="created_by" value="<%=id%>" /> <br>      
        <input type="hidden" placeholder="created_by" name="created_by" id="created_by" value="1" /> <br>        
        <input type="hidden" placeholder="page" name="page" id="created_by" value="update" /> <br>        

   </form>
    </table>
    </center>
    
    </body>
</html>
