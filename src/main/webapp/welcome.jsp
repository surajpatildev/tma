<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.testmyaptitude.pojo.*"%>
<%!user user;%>
<%
	if (session.getAttribute("user") != null) {
%><!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="imports.jsp" %>
<style>
.logoutbtn {
	margin-top: 8px;
}
</style>
</head>
<body>
	<%
		if (session.getAttribute("uname") == null) {
				response.sendRedirect("index.html");
			}
			user = (user) session.getAttribute("user");
	%>

	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="welcome.jsp">TestMyAptitude.com</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="">Home</a></li>
		</ul>
		
		<ul class="nav navbar-nav navbar-right">
			<li>
				<form action="logout">
					<button type="submit" class="logoutbtn btn btn-danger btn-sm">Logout</button>
				</form>
			</li>
		</ul>
		<ul class="nav navbar-nav navbar-right"><li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">Welcome <%=user.getFname()%><span
					class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="#">My Profile</a></li>
					<li><a href="#">My Tests</a></li>
					<li><a href="logout">Log Out</a></li>
				</ul></li>
		</ul>
	</div>
	</nav>
	<div class="container">
		<br><br><br>
		<!-- rowinfo ends -->
		<div class="courses"></div>
		<div class="row rowsmall">
			<div class="col-lg-1 col-md-1 col-sm-3 col-xs-1"></div>
			<div class="hidebelow col-lg-3 col-md-2 col-sm-6 col-xs-11">
				<img src="Images/hp-monitor-numerical.png" alt="Image"
					class="img img-responsive img-fluid">
			</div>
			<div class="col-lg-8 col-md-9 col-sm-12 col-xs-12">
				<h1 class="text-primary">Numerical Reasoning Tests</h1>
				<br>
				<p class="infoimp">Numerical Reasoning tests demonstrate a
					candidates ability to deal with numbers quickly and accurately.
					These tests contain questions that assess your knowledge of ratios,
					percentages, cost and sales analysis, rates, trends and currency
					conversions.</p>
				<a><button class="btn btn-lg btn-primary">SEE TESTS</button></a>
			</div>

			<div class="row rowsmall">
				<div class="col-lg-8 col-md-9 col-sm-12 col-xs-12">
					<h1 class="text-primary">Verbal Reasoning Tests</h1>
					<br>
					<p class="infoimp">Verbal Reasoning tests require you to read
						short passages of writing and then answer questions assessing
						their comprehension of the text. Rather than evaluating your
						vocabulary or fluency, these tests assess your ability to think
						constructively.</p>
					<a><button class="btn btn-lg btn-primary">SEE TESTS</button></a>
				</div>
				<div class="hidebelow col-lg-3 col-md-2 col-sm-6 col-xs-11">
					<img src="Images/hp-monitor-numerical.png" alt="Image"
						class="img img-responsive img-fluid">
				</div>
				<div class="col-lg-1 col-md-1 col-sm-3 col-xs-1"></div>
			</div>
			<div class="row rowsmall">
				<div class="col-lg-1 col-md-1 col-sm-3 col-xs-1"></div>
				<div class="hidebelow col-lg-3 col-md-2 col-sm-6 col-xs-11">
					<img src="Images/hp-monitor-numerical.png" alt="Image"
						class="img img-responsive img-fluid">
				</div>
				<div class="col-lg-8 col-md-9 col-sm-12 col-xs-12">
					<h1 class="text-primary">Diagrammatic Reasoning Tests</h1>
					<br>
					<p class="infoimp">Diagrammatic reasoning questions are
						designed to assess your logical reasoning ability. The questions
						measure your ability to infer a set of rules from a flowchart or
						sequence of diagrams and then to apply those rules to new
						situation.</p>
					<a ><button class="btn btn-lg btn-primary">SEE
							TESTS</button></a>
                    
				</div>

				<div class="row rowsmall">
					<div class="col-lg-8 col-md-9 col-sm-12 col-xs-12">
						<h1 class="text-primary">Situational Judgement Tests</h1>
						<br>
						<p class="infoimp">Situational Judgement Tests (SJT's) assess
							how you approach situations encountered in the workplace. They
							test your suitability for a particular role. Our test experts
							have identified 8 key competencies which are essential to get
							ahead of the competition.</p>
						<a><button class="btn btn-lg btn-primary">SEE TESTS</button></a>
					</div>
					<div class="hidebelow col-lg-3 col-md-2 col-sm-6 col-xs-11">
						<img src="Images/hp-monitor-numerical.png" alt="Image"
							class="img img-responsive img-fluid">
					</div>
					<div class="col-lg-1 col-md-1 col-sm-3 col-xs-1"></div>
				</div>
			</div>
			<h2>Feedback Testimonials</h2>
		</div>
	</div>
	<!--Container Ends Here -->
	<!-- Carousel starts -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner">
			<div class="item active">
				<div class="blank col-md-2 col-sm-1"></div>
				<div class="col-md-3 col-sm-4 col-xs-12">
					<img src="Images/my.jpg" alt="Suraj"
						class="img-circle img-responsive .img-thumbnail">
				</div>
				<div class="col-md-6 col-sm-6 col-xs-12">
					<blockquote>
						<em>It is a perfect and site to overcome all competitive exams. Especially it is very easy to learn aptitude as an beginner. When we complete all tests, then we can able to face all the exam and interviews aptitude test. Alligator and mixture, partnership, number system, ratio and proportion, permutations and combination, profit and loss, simple interest and compound interest etc. are covered.</em><br>
						<br>
						<footer class="blockquote-footer">
							Suraj Patil from <cite title="Source Title">MIT College,
								Pune.</cite>
						</footer>
					</blockquote>
					<br>
				</div>
			</div>

			<div class="item">
				<div class="blank col-md-2 col-sm-1"></div>
				<div class="col-md-3 col-sm-4 col-xs-12">
					<img src="Images/IMAG1272.jpg" alt="Suraj"
						class="img-circle img-responsive .img-thumbnail">
				</div>
				<div class="col-md-6 col-sm-6 col-xs-12">
					<blockquote>
						<em>For my recruitment examinations I really needed a best practice for the preparation of aptitude paper. I researched a lot and finally found this site.Guys, I have gone through almost every test of this site and I am really impressed by its simple approach and topics it covers. I am recommending this site for every aspirants of competitive examinations and freshers for campus recruitments.</em><br>
						<br>
						<footer class="blockquote-footer">
							Suraj Patil's Friends from <cite title="Source Title">MIT College,
								Pune.</cite>
						</footer>
					</blockquote>
					<br>
				</div>
			</div>

			<div class="item">
				<div class="blank col-md-2 col-sm-1"></div>
				<div class="col-md-3 col-sm-4 col-xs-12">
					<img src="Images/eltis.jpg" alt="Suraj"
						class="img-circle img-responsive .img-thumbnail">
				</div>
				<div class="col-md-6 col-sm-6 col-xs-12">
					<blockquote>
						<em>It consists of many subjects like number system, profit-loss , patnerships, percentage, ratios etc.
 It is a very useful site and many students are following this site.Every one can use this book one who is preparing for compitative exams.</em><br>
						<br>
						<footer class="blockquote-footer">
							Suraj Patil's Friends from <cite title="Source Title">ELTIS, Pune</cite>
						</footer>
					</blockquote>
					<br>
				</div>
			</div>
			<div class="item">
				<div class="blank col-md-2 col-sm-1"></div>
				<div class="col-md-3 col-sm-4 col-xs-12">
					<img src="Images/hos.jpg" alt="Suraj"
						class="img-circle img-responsive .img-thumbnail">
				</div>
				<div class="col-md-6 col-sm-6 col-xs-12">
					<blockquote>
						<em>TestMyAptitude is made for the preparation of competitive examinations.
As a fresher I don't know how to start preparation for placements especially Quantitative Aptitude. One of my lecturer suggested me to start prepation through this site.
If any doubt arises while solving the questions, answers were given soon after the test.TestMyAptitude helped me a lot in preparing for placements.</em><br>
						<br>
						<footer class="blockquote-footer">
							Suraj Patil's friend's from <cite title="Source Title">His Hostel</cite>
						</footer>
					</blockquote>
					<br>
				</div>
			</div>
		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
	<%@include file="footer.jsp" %>
</body>
</html>
<%
	}
%>
<%
	if (session.getAttribute("uname") == null) {
		response.sendRedirect("index.html");
	}
%>