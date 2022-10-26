<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DURGA PRASAD</title>
</head>
<body>
<h1>DURGA</h1>
<%
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","prasad");
        System.out.println("SUCESSSSS");
        String pin=request.getParameter("pin");  
        String name=request.getParameter("name");
        String branch=request.getParameter("branch");
        PreparedStatement ps=con.prepareStatement("insert into CSE1(pin,name,branch) values(?,?,?)");  
        ps.setString(1,pin);  
        ps.setString(2,name);  
        ps.setString(3,branch);  
        int j=ps.executeUpdate();  
       if(j>0) 
     
       response.sendRedirect("index.html");
        
		}
        catch(Exception e)
        {
        	e.printStackTrace();
        }
	    
	%>
	

</body>
</html>