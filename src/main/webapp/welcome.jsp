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
.center{
font-size: 40px;
}
input[type=submit] {
	width: 5cm;
	height: 1cm;
	font-size: 20px;
	padding: 1px solid black;
}
</style>
</head>
<body style="align-content: center; font-size: 25px;">
	<%
	if (session.getAttribute("Name") == null)
		response.sendRedirect("index.jsp");
	%>
	<h1  class="first" style="margin-top:5%">
	<%
	String name = (String) session.getAttribute("Name");
	out.println("🙏Welcome to SBI ATM :Mr/Ms " + name);
	%>
	</h1>
	<div align="center" style="margin-top: 5%" >
		<div>
			<h1 class="center" style="margin-top: 2%">Please Select the Transaction</h1>
			<form action="withdraw.jsp" >
				Click Here 👉💰<input type="submit" value="Withdraw"
					style="padding: 10px; color: darkblue;  border-style: solid;">
			</form>
		</div>
		<br>
		<div>
			<form action="balance.jsp">
				Click Here 👉💲<input type="submit" value="Balance Inquiry"
					style="padding: 10px; color: darkblue; border-style: solid;">
			</form>
		</div>
		<br>
		<div>
			<form action="deposit.jsp">
				Click Here 👉💸<input type="submit" value="Deposit"
					style="padding: 10px; color: darkblue; border-style: solid;">
			</form>
		</div>
		<br>
		<div>
			<form action="pinchange.jsp">
				Click Here 👉🏧<input type="submit" value="Pin Change"
					style="padding: 10px; color: darkblue; border-style: solid;">
			</form>
		</div>
		<br>
		<div>
			<form action="exit.jsp">
				Click Here 👉🚶<input type="submit" value="Exit"
					style="padding: 10px; color: darkblue; border-style: solid;">
			</form>
		</div>
	</div>
</body>
</html>