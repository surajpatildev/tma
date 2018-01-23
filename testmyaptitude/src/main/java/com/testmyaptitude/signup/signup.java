package com.testmyaptitude.signup;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.testmyaptitude.dao.UsersDAO;
import com.testmyaptitude.pojo.user;

/**
 * Servlet implementation class signup
 */
public class signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public signup() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		try {
            String email = request.getParameter("emailid");
            System.out.println(email);
            UsersDAO u = new UsersDAO();
            if (u.check(email)) {
                
            } else {
          	  System.out.println("it is"+u.check(email));
                user us=new user();
                us.setFname(request.getParameter("firstname"));
                us.setLname(request.getParameter("lastname"));
                us.setEmail(request.getParameter("emailid"));
                us.setPassword(request.getParameter("pass1"));
                us.setGender(request.getParameter("gender"));
                us.setDate(request.getParameter("date"));
                us.setMonth(request.getParameter("month"));
                us.setYear(request.getParameter("year"));
                us.setMobileno(request.getParameter("phonenumber"));
                PrintWriter out=response.getWriter();
                System.out.println("added into user");
                u.adduser(us);
                System.out.println("returned");
                HttpSession session=request.getSession();
                session.setAttribute("uname",email);
                user user=u.getUser(email);
                session.setAttribute("user",user);
                response.sendRedirect("welcome.jsp");
                System.out.println("all done");
            }
        } catch (SQLException ex) {
            Logger.getLogger(signup.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(signup.class.getName()).log(Level.SEVERE, null, ex);
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
