<%@ page import="com.estore.bean.Customer" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<center>
   
   <h3>Welcome to JSP Action Tags Demo!!! </h3>
   <h3>User Name:<%=request.getParameter("username") %> </h3>
   
   <jsp:include page="header.jsp"></jsp:include>
   
   <%
     Customer customer1 = new Customer();
    customer1.setName("Fionna");
   
   %>
   
   <jsp:useBean id="customer2" class="com.estore.bean.Customer"/>
   <jsp:setProperty property="cid" name="customer2" value="101"/>
   <jsp:setProperty property="name" name="customer2" value="Sona"/>
   <jsp:setProperty property="email" name="customer2" value="sona2023@gmail.com"/>
   
   <%
     String data1 = customer1.sayHello();
     out.print("Data: " +data1);
   %>
   
   <br>
   
    <%
     String data2 = customer2.sayHello();
     out.print("Data: " +data2);
    %>
   <br>
   
   Customer ID: <jsp:getProperty property="cid" name="customer2" /><br>
   Customer Name: <jsp:getProperty property="name" name="customer2" /><br>
   Customer Email: <jsp:getProperty property="email" name="customer2" /><br>

</center>

</body>
</html>