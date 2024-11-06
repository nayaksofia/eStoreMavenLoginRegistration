<%@ page import="java.net.URLDecoder" %>
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
   %>
   
</center>
</body>
</html>
