<%@ page import="java.net.URLDecoder" %>
<%@ page import="com.estore.model.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<center>
   <h3>Welcome To Home!!!</h3>
   
   <%
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie cookie : cookies) {
            String name = URLDecoder.decode(cookie.getName(), "UTF-8");
            String value = URLDecoder.decode(cookie.getValue(), "UTF-8");   
            
   %>
            <%= name %> | <%= value %> <br>
   <%
        }
    }
    
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    
    String txtName = request.getParameter("txtName");
    String txtEmail = request.getParameter("txtEmail");
   %>
   <br>
   
   <h3>URL ReWritting!</h3>
   Name: <%=name %> <br> 
   Email: <%=email %>
   
   <br>
    <h3>Hidden Form Field Data</h3>
   Name: <%=txtName %> <br> 
   Email: <%=txtEmail %>
   
   <h3>Http Session</h3>
   
   <%
   User user = (User)session.getAttribute("keyUser");
   %> 
   Name: <%=user.name %> <br> 
   Email: <%=user.email %> <br>
   Password: <%=user.password %>
   
</center>
</body>
</html>
