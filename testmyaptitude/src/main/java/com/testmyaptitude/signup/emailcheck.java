package com.testmyaptitude.signup;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.testmyaptitude.dao.UsersDAO;

public class emailcheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		PrintWriter out=response.getWriter();
			try{
				UsersDAO u=new UsersDAO();
				 if (u.check(email)) {
		                out.println(0);
		            } else {
		            	out.println(1);
		            }
				
			}catch (Exception e){
				out.println(0);
			}
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
