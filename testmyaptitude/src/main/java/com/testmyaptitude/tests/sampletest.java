package com.testmyaptitude.tests;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.testmyaptitude.dao.QuantDAO;
import com.testmyaptitude.pojo.*;


public class sampletest extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		QuantDAO qd=new QuantDAO();
		List<question> ques=qd.getallquestions();
		PrintWriter out=response.getWriter();
		Gson gson = new GsonBuilder().create();
		JsonArray jarray = gson.toJsonTree(ques).getAsJsonArray();
		JsonObject jsonObject = new JsonObject();
		out.print(gson.toJson(ques));		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
