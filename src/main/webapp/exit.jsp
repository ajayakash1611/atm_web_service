
<%@page import="com.ajay.DataBase"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.ajay.DataBase"%>
<%@ page import="com.ajay.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String acc_Num = (String) session.getAttribute("AccountNumber");
	DataBase db = new DataBase();
	User u = db.userData(acc_Num);
	session.removeAttribute(u.getName());
	session.removeAttribute(acc_Num);
	session.invalidate();
	response.sendRedirect("index.jsp");
	%>

</body>
</html>