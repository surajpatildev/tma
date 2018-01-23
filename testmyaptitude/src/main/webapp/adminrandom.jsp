<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.testmyaptitude.pojo.*"%>
<%@page import="com.testmyaptitude.dao.*"%>
<%@page import="java.util.*" %>
<%
	if (session.getAttribute("admin") != null) {
	QuantDAO qd=new QuantDAO();
	List<question> ques=qd.getallquestions();
	String dir="";
%>

    <html lang="en">
    <head>
    <title>Admin TMA</title>
    <link rel="shortcut icon" type="image/icon"
        href="Images/Yootheme-Social-Bookmark-Social-twitter-button-blue.ico" />
        <link href="https://fonts.googleapis.com/css?family=Open+Sans|Pacifico" rel="stylesheet">
        <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"
        href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
         <link type="text/css" rel="stylesheet" href="css/admin.css">
    <script
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
    <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>
      <a class="navbar-brand" href="#">TestMyAptitude</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li ><a href="adminusers.jsp" >Users</a></li>
        <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Questions
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li class="active"><a href="adminrandom.jsp">Random</a></li>
          <li><a href="#">Quant</a></li>
          <li><a href="#">Reasoning</a></li>
          <li><a href="#">Verbal</a></li>
          <li><a href="#">Decision Making</a></li>
        </ul>
      </li>

        <li><a href="#">Blank for now</a></li> 
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="adminlogout"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
      </ul>
    </div>
  </div>
</nav>
    <div id="usersinfo">
    <div class="container">
    <div class="row">
        <div class="panel panel-primary filterable">
            <div class="panel-heading">
                <h3 class="panel-title" >Users</h3>
                <div class="pull-right">
                    <button class="btn btn-default btn-xs btn-filter"><span class="glyphicon glyphicon-plus"></span>Add</button>
                    <button class="btn btn-default btn-xs btn-filter"><span class="glyphicon glyphicon-remove"></span>Remove</button>
                    
                </div>
            </div>
            <table class="table">
                <thead>
                    <tr class="filters">
                        <th><input type="text" class="form-control" placeholder="#" disabled></th>
                        <th><input type="text" class="form-control" placeholder="Direction" disabled></th>
                        <th><input type="text" class="form-control" placeholder="Question" disabled></th>
                        <th><input type="text" class="form-control" placeholder="A" disabled></th>
                        <th><input type="text" class="form-control" placeholder="B" disabled></th>
                        <th><input type="text" class="form-control" placeholder="C" disabled></th>
                        <th><input type="text" class="form-control" placeholder="D" disabled></th>
                        <th><input type="text" class="form-control" placeholder="Answer" disabled></th>
                    </tr>
                </thead>
                <tbody>
                <%for(int i=0;i<ques.size();i++){
                	if(ques.get(i).getDirection()!=null){
                		dir=ques.get(i).getDirection();
                	}
                	%>
                    <tr>
                        <td><%=ques.get(i).getQid() %></td>
                        <td><%=dir%></td>
                        <td><%=ques.get(i).getQuestion()%></td>
                        <td><%=ques.get(i).getOption_1() %></td>
                        <td><%=ques.get(i).getOption_2() %></td>
                        <td><%=ques.get(i).getOption_3() %></td>
                        <td><%=ques.get(i).getOption_4() %></td>
                        <td><%=ques.get(i).getAnswer() %></td>
                    </tr>
                <%} %>
                </tbody>
            </table>
    
        </div>
        </div>
        </div>
    </div>
    </body>
    </html>
  <%
	}
%>
<%
	if (session.getAttribute("admin") == null) {
		response.sendRedirect("adminlogin.jsp");
	}
%>>