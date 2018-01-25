<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<c:if test="${not empty sessionScope.user}">
 <c:redirect url="./"/>              
 </c:if>
<!DOCTYPE html>
<html lang="en">
<head>
<%@include file="WEB-INF/imports.jsp" %>
</head>
<body>
	<%@include file="WEB-INF/navbar.jsp" %>
	<div class="container">
	<div class="row">
       <div class="col-md-2"></div>
        <div class="col-md-8">
            <form action="signup" method="post" id="fileForm" role="form">
            <h2>Registration Form:</h2>
            <div class="form-group"> 	 
                <label for="firstname"><span class="req">* </span> First name: </label>
                    <input class="form-control" type="text" name="firstname" id = "txt"placeholder="Enter your first name"  onkeyup = "Validate(this)" required /> 
                        <div id="errFirst"></div>    
            </div>
            <div class="form-group">
                <label for="lastname"><span class="req">* </span> Last name: </label> 
                    <input class="form-control" type="text" name="lastname" id = "txt" placeholder="Enter your last name" required />  
                        <div id="errLast"></div>
            </div>
               <div class="form-group">
                <label for="emailid"><span class="req">* </span> Email Address: </label> 
                    <input class="form-control" required type="text" placeholder="Enter your email" name="emailid" id = "emailid" onchange="email_validate(this.value);"/>   
                        <div class="status" id="status"></div>
            </div>
             <div class="form-group">
                <label for="password"><span class="req">* </span> Password: </label>
                    <input required name="password" type="password" class="form-control inputpass" minlength="4" maxlength="16"  id="pass1" placeholder="please enter the password of mininmum 4 characters"   title="please enter the password of mininmum 4 characters" /><br>

                <label for="password"><span class="req">* </span> Password Confirm: </label>
                    <input required name="password" type="password" class="form-control inputpass" minlength="4" maxlength="16" placeholder="Enter password again"  id="pass2" title="Enter password again"/>
                        <span id="confirmMessage" class="confirmMessage"></span>
            </div>
                                    <p><strong>I am:</strong></p>
									<div class="radio-inline">
										<label> <input type="radio" value="Male"
											name="gender" required>Male
										</label>
									</div>
									<div class="radio-inline">
										<label> <input type="radio" value="Female"
											name="gender">Female
										</label>
									</div><br>
           <br> <label for="date">Date Of Birth</label>
									<div class="row">
										<div class="form-group col-lg-4">
											<select class="form-control" name="date" oninvalid="setCustomValidity('please choose the Date.')"
    onchange="try{setCustomValidity('')}catch(e){}" required>
												<option value="" disabled selected>Date</option>
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
												<option value="6">6</option>
												<option value="7">7</option>
												<option value="8">8</option>
												<option value="9">9</option>
												<option value="10">10</option>
												<option value="11">11</option>
												<option value="12">12</option>
												<option value="13">13</option>
												<option value="14">14</option>
												<option value="15">15</option>
												<option value="16">16</option>
												<option value="17">17</option>
												<option value="18">18</option>
												<option value="19">19</option>
												<option value="20">20</option>
												<option value="21">21</option>
												<option value="22">22</option>
												<option value="23">23</option>
												<option value="24">24</option>
												<option value="25">25</option>
												<option value="26">26</option>
												<option value="27">27</option>
												<option value="28">28</option>
												<option value="29">29</option>
												<option value="30">30</option>
												<option value="31">31</option>
											</select>
										</div>
										<div class="form-group col-lg-4">
											<select class="form-control" required oninvalid="setCustomValidity('please choose the Month.')"
    onchange="try{setCustomValidity('')}catch(e){}" name="month">
												<option value="" disabled selected>Month</option>
												<option value="01">January</option>
												<option value="02">February</option>
												<option value="03">March</option>
												<option value="04">April</option>
												<option value="05">May</option>
												<option value="06">June</option>
												<option value="07">July</option>
												<option value="08">August</option>
												<option value="09">September</option>
												<option value="10">Octomber</option>
												<option value="11">November</option>
												<option value="12">December</option>
											</select>
										</div>
										<div class="form-group col-lg-4">
											<select class="form-control" required oninvalid="setCustomValidity('please choose the year.')"
    onchange="try{setCustomValidity('')}catch(e){}" name="year">
												<option value="" disabled selected>Year</option>
												<option value="1981">1981</option>
												<option value="1982">1982</option>
												<option value="1983">1983</option>
												<option value="1984">1984</option>
												<option value="1985">1985</option>
												<option value="1986">1986</option>
												<option value="1987">1987</option>
												<option value="1988">1988</option>
												<option value="1989">1989</option>
												<option value="1990">1990</option>
												<option value="1991">1991</option>
												<option value="1992">1992</option>
												<option value="1993">1993</option>
												<option value="1994">1994</option>
												<option value="1995">1995</option>
												<option value="1996">1996</option>
												<option value="1997">1997</option>
												<option value="1998">1998</option>
												<option value="1999">1999</option>
												<option value="2000">2000</option>
												<option value="2001">2001</option>
												<option value="2002">2002</option>
												<option value="2003">2003</option>
												<option value="2004">2004</option>
												<option value="2005">2005</option>
												<option value="2006">2006</option>
												<option value="2007">2007</option>
												<option value="2008">2008</option>
												<option value="2009">2009</option>
												<option value="2010">2010</option>
											</select>
										</div>
									</div>
            <div class="form-group">
            <label for="phonenumber"><span class="req">* </span> Mobile Number: </label>
                    <input required type="text" name="phonenumber" id="phone" class="form-control phone" maxlength="15" placeholder="Enter your mobile number." pattern="[7-9]{1}[0-9]{9}" title="Please enter correct phone number."/> 
            </div>
            <div class="form-group">
                <hr>
                <input type="checkbox" required name="terms" oninvalid="setCustomValidity('Please accept the Terms and Conditions')"
    onchange="try{setCustomValidity('')}catch(e){}" id="field_terms">   <label for="terms">I agree with the terms and conditions for Registration.</label><span class="req">* </span>
            </div>
            <div class="form-group">
                <input class="btn btn-primary" id ="submitbtnsignup" type="submit" name="submit_reg" value="Register">
            </div>   
            </form><!-- ends register form -->
        </div>
        <div class="col-md-2"></div>
        </div>
    </div>
    <%@include file="WEB-INF/footer.jsp" %>
    
    <script src="js/formvalidate.js" type="text/javascript"></script>
</body>
</html>
