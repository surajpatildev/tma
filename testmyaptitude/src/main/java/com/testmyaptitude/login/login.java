package com.testmyaptitude.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.testmyaptitude.dao.UsersDAO;
import com.testmyaptitude.pojo.user;
import com.testmyaptitude.signup.signup;

/**
 * Servlet implementation class login
 */
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		try {
            String email = request.getParameter("email");
            String pass = request.getParameter("password");
            System.out.println(email);
            System.out.println(pass);
            UsersDAO u = new UsersDAO();
            if (u.checkuser(email,pass)) {
                HttpSession session=request.getSession();
                session.setAttribute("uname",email);
               user user=u.getUser(email);
                session.setAttribute("user",user);
                out.println(1);
            } else {
                out.println(0);
            }
        } catch (Exception ex) { 
        	out.println(-10);
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
