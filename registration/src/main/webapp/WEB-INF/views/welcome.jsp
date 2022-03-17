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
		<%try {
		String url="jdbc:mysql://localhost:3306/employees";
		String sqlusername="root";
		String sqlpass="rootpassword1";
		String query="select * from amit_111915014_detail where username=?";
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,sqlusername,sqlpass);
	
		PreparedStatement st=con.prepareStatement(query);
		
		String uname=request.getParameter("username");
		System.out.println(uname);
		
		
		st.setString(1, uname);
		

		ResultSet rs=st.executeQuery();
		
		
		%>

		<%
		while (rs.next()) {
		%>
		rs.getString(2);
		out.println(rs.getString(2));
		<% } %>
		
		<%
		rs.close();
		st.close();
		con.close();
		} 
		
		catch (Exception ex) {
		%>
		
		</font>
		<font size="+3" color="red"></b>
		
		<%
		out.println("Unable to connect to database.");
		}
		%>

</div>
	</body>
		
</html>