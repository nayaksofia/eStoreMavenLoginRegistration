<%@ page import="com.estore.model.User" %>
<%@ page import="com.estore.db.DB" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//Created User Object
 User  user = new User();

//Extract Data From Form [email | password | name]
 user.email = request.getParameter("txtEmail");
 user.password = request.getParameter("txtPassword");
 user.name = request.getParameter("txtName");
 
 DB db = DB.getDB();
 
 String sql = "insert into User values(null, ?, ?, ?)";
 
 PreparedStatement preparedStatement = db.connection.prepareStatement(sql);
 preparedStatement.setString(1, user.email);
 preparedStatement.setString(2, user.password);
 preparedStatement.setString(3, user.name);
 
 int result = db.executeUpdate(preparedStatement);
 
 if(result>= 1){
	 out.println("User registered successfully!");
%>
 <h3>Thank You for Registration:: <%=user.name %></h3>
 
<% 	 
 }else{
	 out.println("Error in registration.");
%>	 
<h3>Registration Failed:: <%=user.name %></h3>
<%
 }
%>

 

