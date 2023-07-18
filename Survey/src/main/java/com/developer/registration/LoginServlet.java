package com.developer.registration;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private static final String DB_URL = "jdbc:mysql://localhost:3306/youtube";
	    private static final String DB_USER = "root";
	    private static final String DB_PASSWORD = "mahadeva";
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	       
		        String username = request.getParameter("un");
		        String password = request.getParameter("pd");
		        
		        
		        boolean isValidUser = validateCredentials(username, password);

		        if (isValidUser) {
		            response.sendRedirect("user.jsp"); 
		        } else {
		            // Set error message
		            String errorMessage = "Wrong credentials. Please try again.";
		            request.setAttribute("errorMessage", errorMessage);

		            // Forward back to the login page with error message
		            request.getRequestDispatcher("login.jsp").forward(request, response);
		        }
		    }

		    private boolean validateCredentials(String username, String password) {
		        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD)) {
		            String sql = "SELECT * FROM users WHERE username = ? AND password = ?";
		            try (PreparedStatement ps= conn.prepareStatement(sql)) {
		                ps.setString(1, username);
		               ps.setString(2, password);
		                try (ResultSet resultSet = ps.executeQuery()) {
		                    return resultSet.next(); // If a row is returned, credentials are valid
		                }
		            }
		        } catch (SQLException e) {
		            e.printStackTrace();
		        }
		        return false;
		    }
		}
