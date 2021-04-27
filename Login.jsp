<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.mphasis.java.Library.ConnectionHelper"%>
<%@page import="java.sql.Connection"%>
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
	String pwd=request.getParameter("passWord");
	Connection con= ConnectionHelper.getConnection();
	String cmd="select count(*) cnt from LibUsers where Username=? AND Password=?";
	PreparedStatement pst=con.prepareStatement(cmd);
	pst.setString(1, user);
	pst.setString(2, pwd);
	ResultSet rs = pst.executeQuery();
	rs.next();
	int count = rs.getInt("cnt");
	if(count==1){
%>
	<jsp:forward page="Menu.jsp"></jsp:forward>
<%
	} else{
%>
	<jsp:include page="Login.html"></jsp:include>
	<p> <b>***INVALID CREDENTIALS***</b> </p>
<%
	}
%>
</body>
</html>