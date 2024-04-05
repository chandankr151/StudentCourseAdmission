package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class LoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginCheck() {
		super();
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String userid = request.getParameter("usr");
		String pass = request.getParameter("pass");

		String userid_db = null;
		String pass_db = null;

		dbConnect obj = new dbConnect();
		String query = "select * from login";

		try {
			Connection con = obj.getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			while (rs.next()) {
				userid_db = rs.getString(1);
				pass_db = rs.getString(2);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		if (userid.equals(userid_db) && pass.equals(pass_db)) {

			out.println("<html>");
			out.println("<head>");
			out.println("</head>");
			out.println("<body>");
			out.println("<script type=\"text/javascript\">");
			out.println("alert('login Successful!!!');");
			out.println("location='ApplicationForm.jsp';");
			out.println("</script>");
			out.println("</body></htm>");

		} else {
			out.println("<html>");
			out.println("<head>");
			out.println("</head>");
			out.println("<body>");
			out.println("<script type=\"text/javascript\">");
			out.println("alert('User or password incorrect');");
			out.println("location='index.jsp';");
			out.println("</script>");
			out.println("</body></htm>");
		}
	}
}

/*
 * System.out.println(userid); System.out.println(pass);
 */
/*
 * out.println("<html>"); out.println("<head>"); out.println("</head>");
 * out.println("<body>"); out.println("<h1>Login Successfully</h1>");
 * out.println("</body></htm>");
 */