
<%@page import="java.sql.ResultSet"%>
<%@page import="DBManager.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 
 <jsp:include page="header.jsp"></jsp:include>
 <center> <h1 style="font-size: 70px;color:white;">MONTHLY REPORT </h1></center>
 <%
      DBManager db=new DBManager();
      String select_query="SELECT * FROM `inventory` WHERE MONTH(created_date) = MONTH(CURDATE());";
      //out.println(select_query);
      String table="";
      int total=0,count=1;
      ResultSet select_result = db.retrieve(select_query);   
    while(select_result.next()) {
    //out.println("Welcome");
        table+="<tr>";
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
          table+="<td>"+inventory_name+"</td>";
        table+="<td>"+brand+"</td>";
        //table+="<td>"+inventory_type+"</td>";
        table+="<td>"+condition+"</td>";
       table+="<td>"+location+"</td>";
        table+="<td>"+price+"</td>";
       
        //table+="<td>"+created_by+"</td>";
        //table+="<td>"+created_date+"</td>";
        //table+="<td><a href='updateinventory.jsp?id="+inventoryid+"'>Edit</a>&nbsp;<a href='save.jsp?id="+inventoryid+"&page=delete'>Delete</a></td>";
        table+="</tr>";count++;
        total=total+Integer.parseInt(price.trim());
    }
    table+="<tr><td colspan='4'>Total</td><td>"+total+"</td></tr>";
    db.Close();

 %>       
 <center>
 <table >
    <th style='border:1px solid #c6c7cc;font-weight: bold;color:white;'>INVENTORY NAME</th>
    <th style='border:1px solid #c6c7cc;font-weight: bold;color:white;'>BRAND</th>
    <th style='border:1px solid #c6c7cc;font-weight: bold;color:white;'>INVENTORY TYPE</th>
    <th style='border:1px solid #c6c7cc;font-weight: bold;color:white;'>LOCATION</th>
    <th style='border:1px solid #c6c7cc;font-weight: bold;color:white;'>PRICE</th>
<%=table%>
</table> 
 </center>

<style>
 welcome   table {
  border-collapse: collapse;
  position:relative;
  
}
welcome th,td {
  border: 1px solid #c6c7cc;
  padding: 10px 15px;
  color:white;
}
welcome th {
  font-weight: bold;
   
  font-weight: bolder;
}
    
</style>
    </body>
</html>
