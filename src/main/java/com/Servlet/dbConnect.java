package com.Servlet;

import java.sql.Connection;
import java.sql.DriverManager;

public class dbConnect {

	public Connection getConnection() {

		final String url = "jdbc:mysql://localhost:3306/chandandb";
		final String usr = "root";
		final String pass = "govt";

		Connection con = null;
		// int flag=0;

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url, usr, pass);

			if (con != null) {
				System.out.println("database connected!!!");
			} else {
				System.out.println("error occured!!!");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}