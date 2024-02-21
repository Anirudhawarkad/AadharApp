package org.nlt.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.classic.Session;
import org.nlt.model.Users;

public class AadharController extends HttpServlet implements ParentInterface
{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		
		String pageName = req.getParameter("page");
		
		if(pageName.equals("LoginPage"))
		{
			String username = req.getParameter("username");
			String password = req.getParameter("password");
			
			try
			{
				Users loginUser = loginService.getLoginUser(username, password);
				if(loginUser!=null)
				{
					RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
					session.setAttribute("LoginUser", loginUser);  /*("key",value) */
					session.setAttribute("IP", req.getRemoteAddr());  /*("key",value) */
					rd.include(req, resp);
				}
				else
				{
					RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
					session.setAttribute("ErrorMessage", "<h6>Invalid Username or Password</h6>");
					rd.include(req, resp);
				}
			}
			catch (Exception e) {
				System.out.println(e);
			}
			
		}
		
		else if(pageName.equals("LogoutPage"))
		{
			session.invalidate();
			RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
			rd.forward(req, resp);
		}
	}
}
