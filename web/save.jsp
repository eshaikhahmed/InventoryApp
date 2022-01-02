<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="java.util.*, java.io.*" %>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.List"%>
<%@ page import="java.io.File"%> 
<%@page import="DBManager.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  DBManager db=new DBManager();

if(request.getParameter("page").toString().equals("register"))
{
   String username = request.getParameter("username");
    String password = request.getParameter("password");
    String fullname = request.getParameter("fullname");
    String mobile = request.getParameter("mobile");
    String email = request.getParameter("email");

    String safeColumns[]={"username","password","fullname","mobile","email"};
    String safeValues[]={username,password,fullname,mobile,email};

     String result=db.fireSafeQuery("users", safeColumns, safeValues);
             if(result.equalsIgnoreCase("Done"))
            {
                //out.println("<br> You have succesfully registered data");
                response.sendRedirect("index.jsp?error=You have successfully added");
            }
            else
            {
                out.println("<br> "+result);
                response.sendRedirect("register1.jsp?error="+result);

            }
}
  
if(request.getParameter("page").toString().equals("create"))
{
    
            String inventory_name = request.getParameter("inventory_name");
            String brand = request.getParameter("brand");
            String inventory_type = "New";
            String price = request.getParameter("price");
            String condition = request.getParameter("condition");
            String location = request.getParameter("location");
            String created_by = request.getParameter("created_by");
            String created_date =db.getCurrentDate();
             out.println("Problem "+price);
            String image="";//db.saveImage(request, db);
            
            String safeColumns[]={"image","inventory_name","brand","inventory_type","price","condition1","location","created_by","created_date"};
            String safeValues[]={image,inventory_name,brand,inventory_type,price,condition,location,created_by,created_date};            

             String result=db.fireSafeQuery("inventory", safeColumns, safeValues);
             if(result.equalsIgnoreCase("Done"))
            {
                //out.println("<br> You have succesfully registered data");
                response.sendRedirect("show_inventory.jsp?error=You have successfully added");
            }
            else
            {
                out.println("<br> "+result);
          response.sendRedirect("show_inventory.jsp?error="+result);

            }
}

if(request.getParameter("page").toString().equals("update"))
{
            String id = request.getParameter("id");
            String inventory_name = request.getParameter("inventory_name");
            String brand = request.getParameter("brand");
            String price = request.getParameter("price");
            String condition = request.getParameter("condition");
            String location = request.getParameter("location");
            String array[] ={inventory_name,brand,price,condition,location,id};   
            String updateQuery="UPDATE inventory SET inventory_name= ?,brand=?,price=?,condition1=?,location=? WHERE inventoryid=?";
            String result=db.fireSafeUpdateQuery(updateQuery, array);
            if(result.equalsIgnoreCase("Done"))
            {
                //out.println("<br> You have succesfully registered data");
                response.sendRedirect("show_inventory.jsp?error=You have successfully updated");
            }
            else
            {
                out.println("<br> "+result);
              response.sendRedirect("show_inventory.jsp?error="+result);

            }
            
}            

if(request.getParameter("page").toString().equals("delete"))
{
    
            String id = request.getParameter("id");
            String values[]={id};
            String updateQuery="DELETE FROM inventory WHERE inventoryid=?";
            String result=db.fireSafeUpdateQuery(updateQuery, values);
            if(result.equalsIgnoreCase("Done"))
            {
                //out.println("<br> You have succesfully registered data");
                response.sendRedirect("show_inventory.jsp?error=You have successfully updated");
            }
            else
            {
                out.println("<br> "+result);
                response.sendRedirect("show_inventory.jsp?error="+result);

            }
    
}
           // out.println("Image "+image);
  db.Close();
    
 
//        try
//{
//String ImageFile="";
//String itemName = "";
//boolean isMultipart = ServletFileUpload.isMultipartContent(request);
//if (!isMultipart)
//{
//}
//else
//{
//FileItemFactory factory = new DiskFileItemFactory();
//ServletFileUpload upload = new ServletFileUpload(factory);
//List items = null;
//try
//{
//    items = upload.parseRequest(request);
//}
//catch (FileUploadException e)
//{
//e.getMessage();
//}
// 
//Iterator itr = items.iterator();
//while (itr.hasNext())
//{
//FileItem item = (FileItem) itr.next();
//if (item.isFormField())
//{
//String name = item.getFieldName();
//String value = item.getString();
//if(name.equals("upload_image"))
//{
//ImageFile=value;
//}
// 
//}
//else
//{
//try
//{
//itemName = item.getName();
//File savedFile = new File(db.ImagePath+"//"+itemName);
//item.write(savedFile);
//}
//catch (Exception e)
//{
//out.println("Error"+e.getMessage());
//}
//}
//}
//try
//{
//  
//}
//catch(Exception el)
//{
//out.println("Inserting error"+el.getMessage());
//}
//}
//}
//catch (Exception e){
//out.println(e.getMessage());
//}
%>
 