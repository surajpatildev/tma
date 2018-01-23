package com.testmyaptitude.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class admin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		if(request.getParameter("id").equalsIgnoreCase("admin") && request.getParameter("password").equalsIgnoreCase("18061997")){
			HttpSession session=request.getSession();
			session.setAttribute("admin","admin");
			response.sendRedirect("adminusers.jsp");
		}
		else{
			response.sendRedirect("adminlogin.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
