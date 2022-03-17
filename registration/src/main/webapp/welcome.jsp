<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<h1>Welcome to Report Page!</h1><br>
		<h4>Here are your details...</h4>
		<%
		response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
		if(session.getAttribute("username")==null)
		{
			response.sendRedirect("login.jsp");
		}
	%>

	<h1>Welcome ${username}</h1>
	<form action="Logout">
	   Enter user id: <input type="text"><br>
		<input type="submit" value="submit">
	</form>
	
	<h4>First name:${firstName}</h4>
	<h4>Last name:${lastName}</h4>
	<h4>Contact number:${contact}</h4>
	<h4>Job role:${Job_role}</h4>
	<h4>Monthly salary:$Monthly_salary}</h4>
	<h4>Yearly Bonus:${Yearly_bonus}</h4>
	<h4>Total Anual Salary :${Anual_sal}</h4>

</div>
	</body>
		
</html>
