package com.testmyaptitude.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.testmyaptitude.dao.UsersDAO;

public class resetpassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		PrintWriter out=response.getWriter();
		if(session.getAttribute("resetreq")!= null){
			UsersDAO u=new UsersDAO();
			try{
				String password=request.getParameter("password");
				if(password==""){
					out.println(0);
					session.removeAttribute("resetreq");
				}
				else{
				String email=(String)session.getAttribute("resetreq");
				session.removeAttribute("resetreq");
				out.println(u.changepass(email, password));
				}
			}catch (Exception e){
				out.println(0);
			}
			
			
		}else{
			out.println(-5);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
