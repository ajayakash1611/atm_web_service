<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	font-size: 30px;
	background-color: cadetblue;
}

.comment {
	font-size: 20px;
	border: 2px solid black;
	margin: 10px auto;
	background-color: indianred;
	width: 550px;
	height: 350px;
}

input[type=text] {
	width: 3cm;
	height: 1cm;
	font-size: 20px;
	padding: 2px solid black;
}

input[type=submit] {
	width: 3cm;
	height: 1cm;
	font-size: 20px;
	padding: 1px solid black;
	border-style: solid;
}
</style>
</head>
<body style="align-content: center; font-size: x-large; margin-top: 10%">
	<%
	if (session.getAttribute("Name") == null)
		response.sendRedirect("index.jsp");
	%>
	<h1 class="first">💰 Withdraw</h1>
	<div class="comment" align="center" style="margin-top: 4%">
		<form action="update.jsp" method="get">
			<label style="font-size: 20px; margin-top: 35%"> Please Enter
				the Amount Multiples of 100: </label> <input type="text" name="amount"
				style="padding: 3px 8px; border-style: solid; margin-top: 5%"
				required> <br> <br> <br> <input type="submit"
				value="Confirm"
				style="color: blue; font-size: medium; border-style: solid; padding: 3px 8px">
		</form>
		<br>
		<form action="exit.jsp">
			<input type="submit" value="Exit"
				style="color: blue; font-size: medium; border-style: solid; padding: 3px 8px">
		</form>
	</div>
</body>
</html>