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
	font-size: 40px;
	background-color: cadetblue;
}

.comment {
	font-size: 20px;
	border: 2px solid black;
	margin: 10px auto;
	background-color: lightgreen;
	width: 650px;
	height: 350px;
}

input[type=text] {
	width: 3cm;
	height: 1cm;
	font-size: 20px;
	padding: 2px solid black;
	border-style: solid;
}

input[type=submit] {
	width: 3cm;
	height: 1cm;
	font-color: blue;
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
	<h1 class="first">Pin Change</h1>
	<div class="comment" align="center" style="margin-top: 4%">
		<form action="pinUpdate.jsp" method="post">
			<label style="font-size: 30px;"> Please Enter the New Pin
				Number : 👉 </label> <input type="text" name="pin"
				style="padding: 3px 8px; border-style: solid; margin-top: 5%"
				required><br><br><br><br>  <input type="submit" value="Confirm"
				style="padding: 8px 12px; color: darkblue; font-size: 25px; border-style: solid; ">
		</form>
	</div>
</body>
</html>