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
  .first{
            border: 2px solid black;
            text-align: center;
            font-size: 30px;
            background-color: cadetblue;
        }
        </style>
</head>
<body style="align-content: center; font-size: x-large; margin-top: 10%">
<h1 class="first">
	<%
	String acc_Num = (String) session.getAttribute("AccountNumber");
	int withDraw = Integer.parseInt(request.getParameter("amount"));
	DataBase db = new DataBase();
	User u = db.userData(acc_Num);
	int oldBalance = u.getAmount();
	if (withDraw % 100 != 0) {
		response.sendRedirect("withdraw.jsp");
	} else {
		int newBalance = oldBalance - withDraw;
		String query = "update SBI2 set balance=? where AccountNumber=" + acc_Num;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Bank2", "root", "Ajay@1611");
			PreparedStatement pst = con.prepareStatement(query);
			pst.setInt(1, newBalance);
			int i = pst.executeUpdate();
			if (i > 0) {
		out.println("Collect Your Amount 💰: Rs. " + withDraw);
			} else {
		System.out.println("Error");
			}

		} catch (Exception e) {
			System.out.println(e);
		}
	}
	%>
	</h1>
	<div align="center" style="margin-top: 10%">
		<form action="balance.jsp">
		<h2>
		You want display in Your current balance
		</h2>
		<label style="font-size:30px; ">
			Yes : 👉
			</label>
			<input type="submit" value="Confirm" style="padding: 8px; color: darkblue;font-size:16px; border-style: solid">
		</form>
		<form action="exit.jsp"><br>
		<label style="font-size:30px; ">
		No: 👉
		</label>
			<input type="submit" value="Exit" style="padding:3px 16px; color: darkblue;font-size:16px; border-style: solid">
		</form>
	</div>
</body>
</html>



