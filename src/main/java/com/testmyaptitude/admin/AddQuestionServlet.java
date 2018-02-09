package com.testmyaptitude.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.testmyaptitude.dao.QuantDAO;
import com.testmyaptitude.pojo.Quant;

/**
 * Servlet implementation class AddQuestionServlet
 */
public class AddQuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Quant ques=new Quant();
		if(request.getParameter("direction")!=null)
			ques.setDirection(request.getParameter("direction"));
		if(request.getParameter("passage")!=null)
			ques.setPassage(request.getParameter("passage"));
		ques.setQuestion(request.getParameter("question"));
		ques.setOption1(request.getParameter("option1"));
		ques.setOption2(request.getParameter("option2"));
		ques.setOption3(request.getParameter("option3"));
		ques.setOption4(request.getParameter("option4"));
		ques.setAnswer(Integer.parseInt(request.getParameter("answer")));
		QuantDAO qd=new QuantDAO();
		qd.addquestion(ques);
		response.getWriter().println("Added Successfully");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
