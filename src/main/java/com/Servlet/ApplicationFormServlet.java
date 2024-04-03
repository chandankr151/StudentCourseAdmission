package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;


public class ApplicationFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ApplicationFormServlet() {
        super();
    }

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		String name = null, caste = null, cert_name = null, sub1 = null, sub2 = null, sub3 = null, sub4 = null,
				sub5 = null;

		name = request.getParameter("nm");
		caste = request.getParameter("cst");
		sub1 = request.getParameter("sub1");
		sub2 = request.getParameter("sub2");
		sub3 = request.getParameter("sub3");
		sub4 = request.getParameter("sub4");
		sub5 = request.getParameter("sub5");

//		System.out.println("name: " + name);
		System.out.println("caste: " + caste);
//		System.out.println("Subject1: " + sub1);
//		System.out.println("Subject2: " + sub2);
//		System.out.println("Subject3: " + sub3);
//		System.out.println("Subject4: " + sub4);
//		System.out.println("Subject5: " + sub5);

		if (!caste.equals("gen")) {
			// Get the file part from request 
			Part filePart = request.getPart("files");

			String fileName = filePart.getSubmittedFileName();
			cert_name = fileName;
			for (Part part : request.getParts()) {
				part.write("E:\\SpringFrameworkDurgesh\\SessionLoginProj\\src\\main\\webapp\\document\\" + fileName);
			}
		}

		dbConnect obj = new dbConnect();
		String query = "insert into studentdetails(std_name, std_caste, cert_name, std_sub1, std_sub2, std_sub3, std_sub4, std_sub5) values(?,?,?,?,?,?,?,?)";

		try {
			Connection con = obj.getConnection();
			PreparedStatement ptmt = con.prepareStatement(query);
			ptmt.setString(1, name);
			ptmt.setString(2, caste);
			ptmt.setString(3, cert_name);
			ptmt.setString(4, sub1);
			ptmt.setString(5, sub2);
			ptmt.setString(6, sub3);
			ptmt.setString(7, sub4);
			ptmt.setString(8, sub5);

			int i = ptmt.executeUpdate();
			if (i == 1) {
				out.println("<html>");
				out.println("<head>");
				out.println("</head>");
				out.println("<body>");
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Data saved into database successfully!!!');");
				out.println("location='index.jsp';");
				out.println("</script>");
				out.println("</body></htm>");
			} else {
				out.println("<html>");
				out.println("<head>");
				out.println("</head>");
				out.println("<body>");
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Error occured during data save into database!!!');");
				out.println("location='index.jsp';");
				out.println("</script>");
				out.println("</body></htm>");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}