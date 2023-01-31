package com.ajay;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DataBase {

	Connection con;
	User user = new User();

	public void getConnection() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Bank2", "root", "Ajay@1611");
	}

	public boolean checkAcc(String acc_Num) {
		String query = "select * from SBI2 where AccountNumber=" + acc_Num;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Bank2", "root", "Ajay@1611");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			if (rs.next()) {
				return true;
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}

	public User userData(String acc_Num) {
		String query = "select * from SBI2 where AccountNumber=" + acc_Num;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Bank2", "root", "Ajay@1611");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			if (rs.next()) {
				user.setName(rs.getString("Name"));
				user.setPass_Word(rs.getInt("UserPin"));
				user.setAmount(rs.getInt("balance"));
				user.setPhone_Num(rs.getString("phoneNumber"));
			}

			return user;
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}
}
