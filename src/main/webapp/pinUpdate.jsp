<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.ajay.DataBase"%>
<%@ page import="com.ajay.User"%>
<%@ page import="java.sql.*"%>
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
input[type=submit] {
	width: 3cm;
	height: 1cm;
	font-size: 30px;
	padding: 1px solid black;
}
</style>
</head>
<body style="align-content: center; font-size: x-large; margin-top: 10%">
	<h1 class="first">
	<% 
String acc_Num=(String)session.getAttribute("AccountNumber");
int newPin=Integer.parseInt(request.getParameter("pin"));
DataBase db=new DataBase();
User u=db.userData(acc_Num);
String query="update SBI2 set UserPin=? where AccountNumber=" + acc_Num;
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Bank2", "root", "Ajay@1611");
	PreparedStatement pst=con.prepareStatement(query);
	pst.setInt(1, newPin);
	int i=pst.executeUpdate();
	if(i>0){
		out.println("Pin UpDated Successfully");
	}else{
		System.out.println("Pin not UpDated");
	}
	
}catch(Exception e){
	System.out.println(e);
}
%>
</h1>
<div align="center" style="margin-top: 8%">
	<form action="index.jsp">
	<label style="font-size: 30px;">Press here to Continue :👉 </label>
	<input type="submit" value="Confirm"
			style="padding: 8px; color: darkblue; font-size: 20px; border-style: solid">
	</form>
	</div>
</body>
</html>