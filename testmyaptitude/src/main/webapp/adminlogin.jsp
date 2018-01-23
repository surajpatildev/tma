<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>

<html>
	<head>
		<title>Admin Login</title>
		<meta charset="UTF-8">
		<meta name="viewport" content="initial-scale=1.0">
		<!--Pulling Awesome Font -->
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans|Pacifico" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<style>
@import url(http://fonts.googleapis.com/css?family=Roboto:400);
body {
  background-color:#fff;
  font: normal 14px Roboto,arial,sans-serif;
}

.container {
    padding: 25px;
    position: fixed;
}

.form-login {
    background-color: #EDEDED;
    padding-top: 10px;
    padding-bottom: 20px;
    padding-left: 20px;
    padding-right: 20px;
    border-radius: 15px;
    border-color:#d2d2d2;
    border-width: 5px;
    box-shadow:0 1px 0 #cfcfcf;
}

h4 { 
 border:0 solid #fff; 
 border-bottom-width:1px;
 padding-bottom:10px;
 text-align: center;
}

.form-control {
    border-radius: 10px;
}

.wrapper {
    text-align: center;
}
</style>
	</head>

	<body>
    
<div class="container">
    <div class="row">
        <div class="col-md-offset-5 col-md-3">
           
            <div class="form-login">
            <h4>Login</h4>
            <form action="admin" method="post" id="admin">
            <input type="text" id="userName" class="form-control input-sm chat-input" placeholder="username" name="id" required />
            <br>
            <input type="password" id="userPassword" class="form-control input-sm chat-input" placeholder="password" name="password" required />
            <br>
            <div class="wrapper">
                 
                <button type="submit" form="admin" class="btn btn-primary btn-md">login <i class="fa fa-sign-in"></i></button>
            </form>
            </div>
             </div>
            
            
           
        
        </div>
    </div>
</div>
	</body>
</html>