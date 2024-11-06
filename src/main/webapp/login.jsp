<%@ page import="java.sql.ResultSet"%>
<%@ page import="com.estore.model.User"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="com.estore.db.DB"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
User user = new User();
user.email = request.getParameter("txtEmail");
user.password = request.getParameter("txtPassword");

DB db = DB.getDB(); // Singleton instance

String sql = "select * from user where email = ? and password = ? ";

PreparedStatement preparedStatement = db.connection.prepareStatement(sql);
preparedStatement.setString(1, user.email);
preparedStatement.setString(2, user.password);

ResultSet set = db.executeQuery(preparedStatement);

if (set != null && set.next()) {
    user.name = set.getString("name"); // Retrieve name from database

    // Set cookies
    Cookie cookie1 = new Cookie("keyName", URLEncoder.encode(user.name, "UTF-8"));
    Cookie cookie2 = new Cookie("keyEmail", URLEncoder.encode(user.email, "UTF-8"));

    response.addCookie(cookie1);
    response.addCookie(cookie2);
%>

<h3>Thank You For Logging In: <%= user.name %></h3>
<a href='home.jsp'>Enter Home</a>

<%
} else {
%>

<h3>Login Failed. Please Try Again !!!</h3>

<%
}
%>
