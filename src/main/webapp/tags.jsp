<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
 <%@ include file="header.jsp" %>
 <%@ page errorPage="error-page.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Tags</title>
</head>
<body>

 <h3>Accessing elements from the Declarative Tag in the Beginning of the Page. </h3>
 
 <%
  out.print("AppName: "+appName+"<br>");
  out.print("PunchLine: " +punchLine +"<br>");
  out.print("Discount: " + getDiscount("JUMBO") + "<br>");
 %>


<h3>Scriplet Tags</h3>

<%
  int x = 10;
  int y = 20;
  int z = x * y;
  
  String name = "Fionna";
  out.print("<h4>z is ::  </h4> <br>" + z);
  out.print("<h4>Name is:  </h4>" + name);
%>

<h3> Declarative Tag</h3>

<%!
  String appName = "eStore";
  String punchLine = "We Deliver in No Time ";
  
  double getDiscount(String promoCode){
	  if(promoCode.equals("JUMBO")){
		  return 0.40;
	  }
	  
	  return 0.20;
  }

  
  
%>

<%
 out.print("Name is: " + name + "<br>");
 out.print("Discount is: " + getDiscount("APPY") + "<br>");
%>


<h3> Expression Tag</h3>
<b>  App Name Is:: <%=  appName %> </b>
<br>
<i> Discount is :: <%= getDiscount("JUMBO") %></i>

</body>
</html>