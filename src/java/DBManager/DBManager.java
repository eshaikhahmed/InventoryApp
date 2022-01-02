/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBManager;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.*;
import java.util.*;
import  java.io.*;
import java.io.File;
import java.util.Iterator;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

/**
 *
 * @author EJAZ
 */
public class DBManager {

    public String ImagePath="C://Users//EJAZ//Documents//NetBeansProjects//DeadStockInventory//web//images";
    Connection con;
    public DBManager()
    {
        try {

                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/deadstock","root","");

        } catch (ClassNotFoundException | SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
        }

		
    }
    
    public String getCurrentDate()
    {
        String created_date="";
       DateFormat format = new SimpleDateFormat("yyyy/MM/dd", Locale.ENGLISH);
        try
        {
            	Date currentDate=new Date();
                currentDate=format.parse(format.format(currentDate));
                created_date=format.format(currentDate);
        }
        catch(Exception ex)
        {
        
        }
        return created_date;
    }
    public ResultSet retrieve(String query)
    {
        ResultSet rs=null;
        try {
            Statement st = con.createStatement();

            rs=st.executeQuery(query);;
			}
        catch (SQLException e) {

                             
        }
       return rs;
    }
    
    
    public String fireSafeQuery(String tablename,String[] columns,String[] values)
		{
			String return_value="";
			PreparedStatement stmt = null;
			int columnCount=columns.length;
			int valuesCount=values.length;
			try
			{
				
				if(columnCount==valuesCount)
				{
					String column="";
					String value="";
					int i=0;
					for(String coming:columns)
					{
						if(i==0)
						{
							column=coming;
							value="?";
						}
						else
						{
							column=column+","+coming;
							value=value+",?";
						}
						i++;
					}
					String query="INSERT INTO "+tablename+"("+column+") VALUES("+value+")";
					System.out.println("Query :"+query);
					System.out.println("=================");
					stmt=con.prepareStatement(query);
					i=1;
					for(String value_s:values)
					{
						stmt.setString(i, value_s);
						System.out.println("Column :"+i+" -  Value "+value_s);
						i++;
					}
					 stmt.executeUpdate();
					 return_value="Done";
				}
				else
				{
					return_value="Number of columns and values provided are note same";
				}
			}
			catch(Exception ex)
			{
				return_value=ex.getMessage();
			}
			return return_value;
		}
		
		
		
		public String fireSafeUpdateQuery(String query,String[] values)
		{
			String return_value="";
			PreparedStatement stmt = null;
			 
			try
			{
			
				stmt=con.prepareStatement(query);
				int i=1;
				for(String data:values)
				{
					stmt.setString(i, data);
					i++;
				}
				 stmt.executeUpdate();
				 return_value="Done";
					 
			}
			catch(Exception ex)
			{
				return_value=ex.getMessage();
			}
			return return_value;
		} 
		public String Close()
		{ 
			String return_value="";
			try {
				con.close();
				return_value="Done";
			} catch (SQLException e) {
		 		e.printStackTrace();
		 		return_value=e.getMessage();
			}
			return "Done";
		}
    
   public String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length()-1);
            }
        }
        return "";
    }
    
    
   public String saveImage(HttpServletRequest request,DBManager db)
   {
       String itemName="";
        
    try
    {
       String ImageFile="";
          itemName = "";
        boolean isMultipart = ServletFileUpload.isMultipartContent(request);
        if (!isMultipart)
        {
        }
        else
        {
                FileItemFactory factory = new DiskFileItemFactory();
                ServletFileUpload upload = new ServletFileUpload(factory);
                List items = null;
                try
                {
                    items = upload.parseRequest(request);
                }
                catch (FileUploadException e)
                {
                    e.getMessage();
                }

                Iterator itr = items.iterator();
                while (itr.hasNext())
                {
                        FileItem item = (FileItem) itr.next();
                        if (item.isFormField())
                        {
                            String name = item.getFieldName();
                            String value = item.getString();
                            if(name.equals("upload_image"))
                            {
                            ImageFile=value;
                            }
 
                        }
                        else
                        {
                                try
                                {
                                itemName = item.getName();
                                File savedFile = new File(db.ImagePath+"//"+itemName);
                                item.write(savedFile);
                                }
                                catch (Exception e)
                                {
                                System.out.println("Error"+e.getMessage());
                                }
                        }
                }
                try
                {

                }
                catch(Exception el)
                {
                System.out.println("Inserting error"+el.getMessage());
                }
        }
    }
    catch (Exception e){
        System.out.println(e.getMessage());
    }
    return itemName;
  }   
}
