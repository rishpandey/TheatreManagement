package com.zensar.entry;

import java.io.IOException;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BookSeat extends HttpServlet {

	String arr[] = null;

	private static final long serialVersionUID = 1L;
	String str = "";
	
	public String method(){
		return " ";
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		if (req.getParameter("final") == null) {
			str += req.getParameter("button")+",";
			resp.sendRedirect("index.jsp?str="+str+"");
			System.out.println(str);
		} else {
			try {
				arr = str.split(",");
				System.out.println("Here");
				Class.forName("com.mysql.jdbc.Driver");
				java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/jdbc", "root", "root");
				java.sql.Statement smt = con.createStatement();
				for(String s : arr)
				smt.execute("update theatre set status = 1 where seat=" + Integer.parseInt(s) + ";");
				resp.getWriter().println("You booked the tickets. ");
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

	}
}
