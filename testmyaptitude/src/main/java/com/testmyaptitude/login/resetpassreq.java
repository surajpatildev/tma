package com.testmyaptitude.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.testmyaptitude.dao.UsersDAO;

public class resetpassreq extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();		
		try{
					String email=request.getParameter("resetemail");
					System.out.println(email);
					String mobile=request.getParameter("mob");
					System.out.println(mobile);
					UsersDAO u=new UsersDAO();
					HttpSession session=request.getSession();
					System.out.println(u.resetreq(email, mobile));
					if(u.resetreq(email, mobile)){
						session.setAttribute("resetreq",email);
						out.println(1);
						
					}else{
						out.println(0);
					}
					
				}catch (Exception e){
					out.println(0);
				}
	
	
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
