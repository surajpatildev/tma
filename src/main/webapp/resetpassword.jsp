<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>TEST MY APTITUDE- Home</title>
<%@include file="WEB-INF/imports.jsp" %>
</head>
<body>
	<%@include file="WEB-INF/navbar.jsp" %>
	<div class="container resetpass">
	 <div class="form-gap"></div>
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
            <div class="panel panel-default">
              <div class="panel-body">
                <div class="text-center" >
                  <h3><i class="fa fa-lock fa-3x"></i></h3><div id="resetpassdiv">
                  <h2 class="text-center">Forgot Password?</h2>
                  <p id="errtextreset">You can reset your password here.</p>
                  <div class="panel-body">
    
                    
    
                      <div class="form-group">
                        <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                          <input id="resetemail" name="email" placeholder="email address" class="form-control" required  type="email">
                        </div><br>
                        <p class="text-justify text-success">Enter your phone number in the box below to reset the password</p>
                        <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-phone color-blue"></i></span>
                          <input id="mob" name="mobilenumber" placeholder="enter your Mobile Number." required class="form-control"  type="number">
                        </div>
                      </div></div></div>
                      <div class="form-group">
                        <input name="recover-submit" id="resetbtn" class="btn btn-lg btn-primary btn-block" value="Reset Password" type="submit">
                       	<button name="recover" id="resetbtnconfirm" class="btn btn-lg btn-primary btn-block" type="submit">Reset Password</button>
                      </div> 
                   
    
                  </div>
                </div>
            </div>
          </div>
        <div class="col-md-2"></div>
        </div>
    </div>
    <div class="form-gap"></div>
 <%@include file="WEB-INF/footer.jsp" %>
</body>
</html>
