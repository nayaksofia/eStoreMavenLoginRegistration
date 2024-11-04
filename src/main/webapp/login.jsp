<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.estore.model.User" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="com.estore.db.DB" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
   User user = new User();
   user.email = request.getParameter("txtEmail");
   user.password = request.getParameter("txtPassword"); 
   
   DB db = DB.getDB();  //singleTone 
   
   String sql = "select * from user where email = ? and password = ? ";
   
   PreparedStatement preparedStatement = db.connection.prepareStatement(sql);
   preparedStatement.setString(1, user.email);
   preparedStatement.setString(2, user.password);
   
   ResultSet set = db.executeQuery(preparedStatement);
   
   if(set !=null && set.next()){
	   user.name = set.getString("name");//We are getting the name from the database
	    
%>
   
   <h3>Thank You For Logging In : <%=user.name %></h3>
<%  
   }else{
%>
  <h3> Login Failed. Please Try Again !!!</h3>
<%
   }
%>