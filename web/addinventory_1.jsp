<%-- 
    Document   : addinventory
    Created on : Feb 21, 2017, 12:18:03 AM
    Author     : EJAZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> 
        <style>
.hidden {
 
    display: none;
  
}
</style>
<jsp:include page="header.jsp"></jsp:include>

    <center><h1 style='font-size:30px;'>Add Inventory</h1>
    <table  >        
   <form action='save_with_image.jsp' method="post"  enctype="multipart/form-data">
       <%
      if(request.getParameter("error")!=null)
      {
          String error=request.getParameter("error").toString();
          out.println("<span style='color:white;'>"+error+"</span>");
      }
      %>
       <tr><td colspan="2">
			<center><img id="show_image" height="200" width="300" src="images/image_upload.png" onclick="callhidden();" /></center>
			<input class="hidden" type='file' name='upload_image' id='upload_image' onchange="loadFile(this,'1')" />
   </td>	  </tr>
<tr style='line-height: 10px;'>
    <td>Inventory Name : </td>
        <td><input type="text" placeholder="Inventory Name" name="inventory_name" id="inventory_name" value="" required/> 
    </td>
</tr>
<tr>
    <td>  Brand :   </td>
    <td>
    <input type="text" placeholder="Brand" name="brand" id="brand" value="" required/>
   </td>
</tr>
<tr>
    <td>Price :   </td>
    <td> <input type="number" placeholder="Price" name="price" id="price" value="" required/> 
    </td>
</tr>
<input type="hidden" placeholder="inventory_type" name="inventory_type" id="inventory_type" value="New" />  
  <tr>
    <td>Condition : 
    </td>
    <td><select placeholder="Condition" name="condition" id="condition" value="" >
            <option>Working</option>
            <option>Non Working</option>
             <option>Scrap</option>
        </select>
    </td>
  </tr>
  <tr>
      <td>  
  Location : 
     </td>
     <td>  
        <select  name="location" id="location" >
            <option>Lab 1</option>
            <option>Lab 2</option>
            <option>Lab 3</option>
        </select>
     </td>
  </tr>
   
        <tr>
            <td>
                <input type="submit" style='height:30px;width:100px;color:white;border:none;background:red;font-weight:bold;' name="submit" id="submit" value="Save" /> 
            </td>
        </tr>
        <input type="hidden" placeholder="created_by" name="created_by" id="created_by" value="1" />       
         <input type="hidden" placeholder="page" name="page" id="created_by" value="test" />       

   </form>
    </table>
    </center>
    
    
    <script src="../js/jquery.min.js"></script>
<script>
function loadFile(input,row) {

		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function (e) {
				$('#show_image').attr('src', e.target.result);
			}

			reader.readAsDataURL(input.files[0]);
			}
}
function callhidden()
{
	 $("#upload_image").click();
	 return false;
}
</script>
    </body>
</html>
