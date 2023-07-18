package com.developer.registration;

import java.io.IOException;
import java.io.PrintWriter;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("nm");
		String pwd=request.getParameter("pw");
		Connection con=null;
		PreparedStatement ps=null;
		RequestDispatcher dispatcher=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/youtube?useSSL=false","root","mahadeva");
			ps=con.prepareStatement("insert into users(uname,upwd) values(?,?) ");
			ps.setString(1,name);
			ps.setString(2,pwd);
			int count=ps.executeUpdate();
			dispatcher=request.getRequestDispatcher("registration.jsp");
			if(count>0) {
				request.setAttribute("status","success");
			}
			else {
				request.setAttribute("status","fail");
			}
			dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
