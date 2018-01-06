package com.example.sample;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ValidationController extends HttpServlet{

		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doPost(request, response);
		}
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				response.setContentType("text/html");
				
				String userName =  request.getParameter("userName");
				String password =  request.getParameter("password");
		
					
				if(password.equals(""))
				{
					RequestDispatcher rd = request.getRequestDispatcher("WelcomePage.jsp");
					rd.forward(request, response);
				}
				else if(userName.equals("chinmay"))
				{
					if(password.equals("1234"))
					{
						RequestDispatcher rd = request.getRequestDispatcher("Profile.jsp");
						rd.forward(request, response);
					}
					else
					{
						RequestDispatcher rd = request.getRequestDispatcher("WelcomePage.jsp");
						rd.forward(request, response);
					}
				}
				else
				{
					RequestDispatcher rd = request.getRequestDispatcher("WelcomePage.jsp");
					rd.forward(request, response);
				}
				
		}

}
