<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div style="align-items: center;">

		<h3>Register With Us</h3>

		<form action="register.jsp" method="post">

			Enter Name: <br> <input type="text" name="txtName" /><br>
			<br> 
			Enter Email : <br> <input type="email" name="txtEmail" /><br>
			<br> 
			Enter Password :<br> <input type="password"
				name="txtPassword" /> <br>
			<br> 
			<input type="submit" value="Register">

		</form>
	</div>

	<a href="login-user.html">Existing User? Login Here</a>
</body>
</html>