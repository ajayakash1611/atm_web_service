package com.ajay;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class Login extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		PrintWriter out = res.getWriter();
		String acc_Num = req.getParameter("AccountNumber");
		String pass = req.getParameter("UserPin");
		DataBase db = new DataBase();
		User u = db.userData(acc_Num);
		if (db.checkAcc(acc_Num)) {
			if (pass.equals(u.getPass_Word() + "")) {
				HttpSession session = req.getSession();
				session.setAttribute("Name", u.getName());
				session.setAttribute("AccountNumber", acc_Num);
				res.sendRedirect("welcome.jsp");
			} else {
				out.println("Incorrect PassWord ");
				res.sendRedirect("index.jsp");
			}
		} else {
			out.println("Incorrect Account Number");
			res.sendRedirect("index.jsp");
		}
	}

}
