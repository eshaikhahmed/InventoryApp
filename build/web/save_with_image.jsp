<%-- 
    Document   : save_with_image
    Created on : Feb 22, 2017, 12:58:10 AM
    Author     : EJAZ
--%>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="java.util.*, java.io.*" %>
<%@page import="DBManager.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    DBManager db=new DBManager();
     List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
    String inputName = null;
    String filename ="";
    String inventory_name="";
    String brand="";
    String price="";
    String condition="";
    String location="";
    String created_by="";
    String inventory_type = "New";
     String created_date =db.getCurrentDate();
     
     
     try
     {
    for(FileItem item : multiparts)
    {
        if(!item.isFormField()){   // Check regular field.
          filename = new File(item.getName()).getName();
          item.write( new File(db.ImagePath + File.separator + filename));
        }
        if(item.isFormField())
        {  // Check regular field.
           inputName = (String)item.getFieldName(); 
           if(inputName.equalsIgnoreCase("inventory_name")){ 
                  inventory_name = (String)item.getString(); 
           }
            if(inputName.equalsIgnoreCase("brand")){ 
                  brand = (String)item.getString(); 
           }
             if(inputName.equalsIgnoreCase("price")){ 
                  price = (String)item.getString(); 
           }
              if(inputName.equalsIgnoreCase("condition")){ 
                  condition = (String)item.getString(); 
           }
               if(inputName.equalsIgnoreCase("location")){ 
                  location = (String)item.getString(); 
           }
                if(inputName.equalsIgnoreCase("created_by")){ 
                  created_by = (String)item.getString(); 
           }
        } 
    }
    
       String safeColumns[]={"image","inventory_name","brand","inventory_type","price","condition1","location","created_by","created_date"};
            String safeValues[]={filename,inventory_name,brand,inventory_type,price,condition,location,created_by,created_date};            

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
     catch(Exception ex)
     {
          response.sendRedirect("addinventory_1.jsp?error=Please select image");
     }
    db.Close();
    %>