package com.ajay;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@SuppressWarnings("serial")
public class UpDate extends HttpServlet {

	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		PrintWriter out = res.getWriter();
		HttpSession session = req.getSession();
		String acc_Num = (String) session.getAttribute("AccountNumber");
		int withDrawAmount = Integer.parseInt(req.getParameter("balance"));
		DataBase db = new DataBase();
		User u = db.userData(acc_Num);
		int oldBalance = u.getAmount();

		if (withDrawAmount > oldBalance) {
			
			res.sendRedirect("withdraw.jsp");
		} else {
			int newBalance = oldBalance - withDrawAmount;
			String query = "update SBI2 set balance= ? where AccountNumber=" + acc_Num;
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Bank2", "root", "Ajay@1611");
				PreparedStatement pst = con.prepareStatement(query);
				pst.setInt(1, newBalance);
				int i = pst.executeUpdate();
				if (i > 0) {
					out.println("Collect Your Amount " + withDrawAmount);
				} else {
					System.out.println("Amount not added");
				}
			} catch (Exception e) {
				System.out.println(e);
			}
		}

	}
}
