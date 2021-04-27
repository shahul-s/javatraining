<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String user=request.getParameter("userName");
	out.println("Hello!!! "+user+"<br/>"+"Welcome to your Library Account"+"<br/><br/>");
%>
<form method="post" action="Login.html">
	<input type="submit" value="Logout"/>
</form>
</body>
</html>