<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.testmyaptitude.pojo.*"%>
<%@page import="com.testmyaptitude.dao.*"%>
<%@page import="java.util.*"%>
<%
	if (session.getAttribute("admin") != null) {
	QuantDAO qd=new QuantDAO();
	List<Quant> ques=qd.getallquestions();
	String dir="";
%>

<html lang="en">
<head>
<title>Admin TMA</title>
<link rel="shortcut icon" type="image/icon"
	href="Images/Yootheme-Social-Bookmark-Social-twitter-button-blue.ico" />
<link href="https://fonts.googleapis.com/css?family=Open+Sans|Pacifico"
	rel="stylesheet">
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
<script type="text/javascript" src="js/adminquestion.js"></script>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">TestMyAptitude</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="adminusers.jsp">Users</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Questions <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li class="active"><a href="adminrandom.jsp">Random</a></li>
							<li><a href="#">Quant</a></li>
							<li><a href="#">Reasoning</a></li>
							<li><a href="#">Verbal</a></li>
							<li><a href="#">Decision Making</a></li>
						</ul></li>

					<li><a href="#">Blank for now</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="adminlogout"><span
							class="glyphicon glyphicon-log-out"></span>Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div id="usersinfo">
		<div class="container">
			<div class="row">
				<div class="panel panel-primary filterable">
					<div class="panel-heading">
						<h3 class="panel-title">Users</h3>
						<div class="pull-right">
							<button class="btn btn-default btn-xs btn-filter" id="addques">
								<span class="glyphicon glyphicon-plus"></span>Add
							</button>
							<button class="btn btn-default btn-xs btn-filter">
								<span class="glyphicon glyphicon-remove"></span>Remove
							</button>

						</div>
					</div>
					<div id='addquestion' style='width: 90%;margin: auto;display: none;'>
							<div id="addresponse"></div>

								<div class="row">
									<div class="col-md-3">
										<div class="form-group">
											<label for="form_direction">Direction</label>
											<textarea id="form_direction" name="direction"
												class="form-control" placeholder="Add Direction" cols="20" rows="4"></textarea>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label for="form_passage">Passage</label>
											<textarea id="form_passage" name="passage"
												class="form-control" placeholder="Enter passage" rows="4" cols="20"></textarea>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<label for="question">Question *</label>
											<textarea id="question" name="question"
												class="form-control" placeholder="Enter the question" cols="20" rows="4"
												required="required"></textarea>
										</div>
									</div>
									<div class="form-group col-lg-2"><br><label for="answer">Select Answer</label><br><br>
											<select class="form-control" required name="answer" id="answer">
												<option value="" disabled selected>Select Answer</option>
												<option value="1">01</option>
												<option value="2">02</option>
												<option value="3">03</option>
												<option value="4">04</option>
											</select>
										</div>
								</div>
								<div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="option1">Option 1*</label>
                                        <input id="option1" type="text" name="option1" class="form-control" placeholder="Please enter option 1 *" required="required" data-error="Valid option is required.">
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="option2">Option 2*</label>
                                        <input id="option2" type="text" name="option2" class="form-control" placeholder="Please enter option 2 *" required="required" data-error="Valid option is required.">
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="option3">Option 3*</label>
                                        <input id="option3" type="text" name="option3" class="form-control" placeholder="Please enter option 3 *" required="required" data-error="Valid option is required.">
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="option4">Option 4*</label>
                                        <input id="option4" type="text" name="option1" class="form-control" placeholder="Please enter option 4 *" required="required" data-error="Valid option is required.">
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
								<div class="col-md-12">
										<input type="submit" id='addaques' class="btn btn-block btn-primary btn-send"
											value="Add Question">
									</div>
								<div class="row">
									<div class="col-md-12">
										<p class="text-muted">
											<strong>*</strong> These fields are required.
										</p>
									</div>
								</div>
							</div>

					</div>
					<table class="table">
						<thead>
							<tr class="filters">
								<th><input type="text" class="form-control" placeholder="#"
									disabled></th>
								<th><input type="text" class="form-control"
									placeholder="Direction" disabled></th>
								<th><input type="text" class="form-control"
									placeholder="Question" disabled></th>
								<th><input type="text" class="form-control" placeholder="A"
									disabled></th>
								<th><input type="text" class="form-control" placeholder="B"
									disabled></th>
								<th><input type="text" class="form-control" placeholder="C"
									disabled></th>
								<th><input type="text" class="form-control" placeholder="D"
									disabled></th>
								<th><input type="text" class="form-control"
									placeholder="Answer" disabled></th>
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
								<td><%=ques.get(i).getOption1() %></td>
								<td><%=ques.get(i).getOption2() %></td>
								<td><%=ques.get(i).getOption3() %></td>
								<td><%=ques.get(i).getOption4() %></td>
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
