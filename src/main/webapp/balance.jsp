<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.ajay.DataBase"%>
<%@ page import="com.ajay.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	background: aqua;
}
.first {
	border: 2px solid black;
	text-align: center;
	font-size: 40px;
	background-color: cadetblue;
}
</style>
</head>
<body style="align-content: center; font-size: x-large; margin-top: 10%">
	<%
if(session.getAttribute("Name")==null)
	response.sendRedirect("index.jsp");
%>

	<h1 class="first">
		<% 
String acc_Num=(String)session.getAttribute("AccountNumber");
DataBase db=new DataBase();
User u=db.userData(acc_Num);
int Balance=u.getAmount();
out.println("Available Balance : Rs."+ Balance);
%>
	</h1>

	<div align="center" style="margin-top: 10%">
		
		<form action="exit.jsp">
		<label style="font-size:30px; ">
		Press here to Exit :👉
			</label>
			 <input type="submit" value="Confirm" style="padding: 8px; color: darkblue; font-size: 20px; border-style: solid">
		</form>
	</div>
</body>
</html>




