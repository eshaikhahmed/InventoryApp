<%@page import="java.sql.ResultSet"%>
<%@page import="DBManager.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/index.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
   
    
 <jsp:include page="header.jsp"></jsp:include>
    <center> <h1 style="font-size: 70px;color:white;">Inventory </h1></center>
<center><h1><a href="addinventory_1.jsp">
            <button style='border:none;background:red;width:150px;font-size:15px;height:50px;font-weight:bold;'>Add Inventory</button></a></h1></center>
    
  
<br>
<table>
<%
         DBManager db=new DBManager();
String select_query="SELECT * FROM inventory";
//out.println(select_query);
String table="";
ResultSet select_result = db.retrieve(select_query);
int i=1;
select_result.last();
int last = select_result.getRow();
select_result.beforeFirst();
while(select_result.next()) {
    //out.println("Welcome");
 // table+="<tr>";
  String inventoryid=select_result.getString("inventoryid");
  String inventory_name=select_result.getString("inventory_name");
  String brand=select_result.getString("brand");
  String inventory_type=select_result.getString("inventory_type");
  String price=select_result.getString("price");
  String condition=select_result.getString("condition1");
  String location=select_result.getString("location");
  String created_by=select_result.getString("created_by");
  String created_date=select_result.getString("created_date");
  String image=select_result.getString("image");
 if(i==1)
  {
       //table+="<tr>"; 
       out.println("<tr >");
  }
  if(i%5==0)
  {
     // out.println("Hello ");
       //table+="</tr>"; 
       //table+="<tr>"; 
       out.println("</tr>");
       out.println("<tr>");
  }
 
  %>
  <td>
  <div class="main_div"  >
    <center><img class="img_show" src="images/<%=image%>"  height="170" width="180"></center>
    <table class="gtable">
        <tr>
            <td style="font-weight:bold;margin-right:10px;">Inventory</td>
            <td><%=inventory_name%></td>
        </tr>
         <tr>
            <td style="font-weight:bold;margin-right:10px;" >Brand</td>
            <td><%=brand%></td>
        </tr>
          <tr>
            <td style="font-weight:bold;margin-right:10px;">Price</td>
            <td style="color:#FF0000; width:10px;">Rs.<%=price%> </td>
        </tr>
        <tr>
            <td ><a href="save.jsp?id=<%=inventoryid%>&page=delete">Delete</a></td>
          <td ><a href="updateinventory.jsp?id=<%=inventoryid%>&page=update">Edit</a> </td>
        </tr>
    </table>
</div>
  </td>
  <%
 
  
  
  
  if(i==last)
  {
     out.println("</tr>");
   //table+="</tr>";   
  }
//  table+="<td>"+inventory_name+"</td>";
//  table+="<td>"+brand+"</td>";
//  //table+="<td>"+inventory_type+"</td>";
//  table+="<td>"+price+"</td>";
//  table+="<td>"+condition+"</td>";
//  table+="<td>"+location+"</td>";
//  table+="<td>"+created_by+"</td>";
//  table+="<td>"+created_date+"</td>";
//  table+="<td><a href='updateinventory.jsp?id="+inventoryid+"'>Edit</a>&nbsp;<a href='save.jsp?id="+inventoryid+"&page=delete'>Delete</a></td>";
//  table+="</tr>";
    i++;
} 
  select_result.close();
  db.Close();
    %>
</table>
<style>
    .main_div
    {
        background: white;
        margin-left:40px;
        padding:10px;
        border:1px solid #B9B9B9;
        border-radius:10px;
        width:270px;
        height:320px;
        margin-bottom: 10px;
    }
    .img_show
    {
     border-radius:10px;   
    }
    .gtable { 
    border-spacing: 10px;
    border-collapse: separate;
}
</style>
<br>
<!--<div class="main_div"  >
    <center><img class="img_show" src="images/marriage.jpg"  height="170" width="180"></center>
    <table>
        <tr>
            <td style="font-weight:bold;">Inventory</td>
            <td></td>
        </tr>
         <tr>
            <td style="font-weight:bold;" >Brand</td>
            <td></td>
        </tr>
          <tr>
            <td style="font-weight:bold;">Price</td>
            <td style="color:#FF0000; width:10px;">Rs. </td>
        </tr>
    </table>
</div>
 
-->

</body>
</html>
