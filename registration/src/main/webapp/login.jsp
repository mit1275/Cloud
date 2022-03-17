<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert data here</title>
</head>
<body>

<form action="<%= request.getContextPath() %>/login" method="post">

Enter username:<input type="text" name="uname"><br>
Enter password:<input type="password" name="pass"><br>
<input type="submit" value="login"><br>
</form>
</body>
</html>