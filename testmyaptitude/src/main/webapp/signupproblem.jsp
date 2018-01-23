<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <!DOCTYPE html>
            <html lang="en">
            <head>
              <title>TEST MY APTITUDE- Home</title>
              <link rel="shortcut icon" type="image/icon" href="Images/Yootheme-Social-Bookmark-Social-twitter-button-blue.ico"/>
              <meta charset="utf-8">
              <meta name="viewport" content="width=device-width, initial-scale=1">
              <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
              <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
              <link rel="stylesheet" href="css/style.css">
              <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
              <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
              <script src="js/signupproblem.js" type="text/javascript"></script>
            </head>
            <body>

            <nav class="navbar navbar-inverse">
              <div class="container-fluid">
                <div class="navbar-header">
                  <a class="navbar-brand" href="#">TestMyAptitude.com</a>
                </div>
                <ul class="nav navbar-nav">
                  <li class="active"><a href="index.html">Home</a></li>
                  <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Tests<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                      <li><a href="#">Quantitative</a></li>
                      <li><a href="#">Verbal</a></li>
                      <li><a href="#">Logical</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Contact Us</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                  <li>
                  <button type="button" class="btn btn-link btn-info btn-lg" data-toggle="modal" data-target="#myModalSignUp"><span class="glyphicon glyphicon-user"></span> Sign Up</button>
                  </li>

      <!-- Modal -->
      <div class="modal fade" id="myModalSignUp" role="dialog">
        <div class="modal-dialog">

          <!-- Modal content-->
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title"><mark>Sign Up</mark></h4>
            </div>
            <div class="modal-body">
              <form action="signup" id="signup">
       <div class="form-group">
          <label for="firstName">First Name:</label>
          <input type="text" class="form-control" id="firstName" placeholder="Enter First Name" name="fName">
        </div>

        <div class="form-group">
          <label for="lastName">Last Name:</label>
          <input type="text" class="form-control" id="lastName" placeholder="Enter Last Name" name="lName">
        </div>

        <div class="form-group">
          <label for="email">Email:</label>
          <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
        </div>
        <div class="form-group">
          <label for="pwd">Choose a Password:</label>
          <input type="password" class="form-control" id="pwd" placeholder="Between 6 to 14 characters" name="pwd">
        </div>
        <div class="form-group">
          <label for="pwdconfirm">Confirm Password:</label>
          <input type="password" class="form-control" id="pwdconfirm" placeholder="Enter password again" name="pwdconfirm">
        </div>

        <p><strong>I am:</strong></p>
        <div class="radio-inline">
          <label >
          <input type="radio" value="Male" name="gender">Male</label>
       </div>
       <div class="radio-inline">
          <label >
          <input type="radio" value="Female" name="gender">Female</label>
       </div><br><br>
        <label for="date">Date Of Birth</label>
        <div class="row">
        <div class="form-group col-lg-4">
      <select class="form-control" name="date">
        <option value="">Date</option>
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
      <select class="form-control" name="month">
        <option value="Month">Month</option>
        <option value="January">January</option>
        <option value="February">February</option>
        <option value="March">March</option>
        <option value="April">April</option>
        <option value="May">May</option>
        <option value="June">June</option>
        <option value="July">July</option>
        <option value="August">August</option>
        <option value="September">September</option>
        <option value="Octomber">Octomber</option>
        <option value="November">November</option>
        <option value="December">December</option>
      </select>
    </div>
     <div class="form-group col-lg-4">
      <select class="form-control" name="year">
        <option>Year</option>
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
          <label for="mobileNo">Mobile No:</label>
          <input type="text" class="form-control" id="mobileNo" placeholder="Enter 10 digit Mobile Number" name="MobileNo">
        </div>
        <div class="checkbox">
          <label><input type="checkbox" name="remember" required>I hearby Agree All Terms And Condtions</label>
        </div>
      </form>
            </div>
            <div class="modal-footer">
              <button class="btn btn-primary" type="submit" name="Register" value="Register" form="signup">Register</button>
            </div>
          </div>

        </div>
      </div>
                  <li>
                  <button type="button" class="btn btn-link btn-info btn-lg" data-toggle="modal" data-target="#myModalLogIn"><span class="glyphicon glyphicon-log-in"></span> Login</button>
                  </li>

      <!-- Modal -->
      <div class="modal fade" id="myModalLogIn" role="dialog">
        <div class="modal-dialog">

          <!-- Modal content-->
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Log In</h4>
            </div>
            <div class="modal-body">
        <form action="login" id="loginform" method="post">
        <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input id="email" type="text" class="form-control" name="email" placeholder="Email">
    </div><br>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
      <input id="password" type="password" class="form-control" name="password" placeholder="Password">
    </div>
    <br>
    <div class="checkbox">
          <label><input type="checkbox" name="remember"> Remember me</label>
  </div>
  </form>
            </div>
            <div class="modal-footer">
              <button type="submit" form="loginform" class="btn btn-lg btn-primary">Submit</button>
            </div>
          </div>

        </div>
      </div>
                </ul>
              </div>
            </nav>
            <div class="jumbotron text-center col-md-12 col-xs-12 row">
                <div class="box col-lg-2"></div>
            <div class="box col-lg-8">
              <h3 class="h1">Practice Aptitude Tests for Job Applicants & Graduates.</h3>
              <p>Aptitude and ability tests are designed to assess your logical reasoning or thinking performance.</p>
              <a href="#"><button type="button" class="btn btn-info btn-lg text-uppercase ">Take a Sample tEST</button></a><br><br>
            </div>
            <div class="box col-lg-2"></div>
            </div>
            <div class="container">
              <div class="row infoapti">
                 <div class="col-md-2"></div>
                 <div class="col-md-8 text-center text-primary">
                  <p>Numerical, Verbal & Diagrammatic reasoning tests are psychometric aptitude tests used by recruiters and employers offering graduate & professional jobs. Practice Aptitude Tests.com offer industry standard employer psychometric tests designed for graduates & professionals seeking careers in: banking, accountancy, finance, law, engineering, business, marketing & similar.</p>
              </div>
              </div>
<!-- rowinfo ends -->
                <div class="courses"></div>
        <div class="row">
            <div class="col-lg-1 col-md-1 col-sm-3 col-xs-1"></div>
            <div class="col-lg-3 col-md-2 col-sm-6 col-xs-11">
                <img src="Images/hp-monitor-numerical.png" alt="Image" class="img img-responsive img-fluid">
            </div>
            <div class="col-lg-8 col-md-9 col-sm-12 col-xs-12">
                <h1 class="text-primary">Numerical Reasoning Tests</h1><br>
                <p class="infoimp">Numerical Reasoning tests demonstrate a candidates ability to deal with numbers quickly and accurately. These tests contain questions that assess your knowledge of ratios, percentages, cost and sales analysis, rates, trends and currency conversions.</p>
                <a><button class="btn btn-lg btn-primary">SEE TESTS</button></a>
            </div>

            <div class="row">
                <div class="col-lg-8 col-md-9 col-sm-12 col-xs-12">
                    <h1 class="text-primary">Verbal Reasoning Tests</h1><br>
                    <p class="infoimp">Verbal Reasoning tests require you to read short passages of writing and then answer questions assessing their comprehension of the text. Rather than evaluating your vocabulary or fluency, these tests assess your ability to think constructively.</p>
                    <a><button class="btn btn-lg btn-primary">SEE TESTS</button></a>
                </div>
                <div class="col-lg-3 col-md-2 col-sm-6 col-xs-11">
                    <img src="Images/hp-monitor-numerical.png" alt="Image" class="img img-responsive img-fluid">
                </div>
                <div class="col-lg-1 col-md-1 col-sm-3 col-xs-1"></div>
        </div>
        <div class="row">
            <div class="col-lg-1 col-md-1 col-sm-3 col-xs-1"></div>
            <div class="col-lg-3 col-md-2 col-sm-6 col-xs-11">
                <img src="Images/hp-monitor-numerical.png" alt="Image" class="img img-responsive img-fluid">
            </div>
            <div class="col-lg-8 col-md-9 col-sm-12 col-xs-12">
                <h1 class="text-primary">Diagrammatic Reasoning Tests</h1><br>
                <p class="infoimp">Diagrammatic reasoning questions are designed to assess your logical reasoning ability. The questions measure your ability to infer a set of rules from a flowchart or sequence of diagrams and then to apply those rules to new situation.</p>
                <a><button action="review.html" class="btn btn-lg btn-primary">SEE TESTS</button></a>
            </div>

            <div class="row">
                <div class="col-lg-8 col-md-9 col-sm-12 col-xs-12">
                    <h1 class="text-primary">Situational Judgement Tests</h1><br>
                    <p class="infoimp">Situational Judgement Tests (SJT's) assess how you approach situations encountered in the workplace. They test your suitability for a particular role. Our test experts have identified 8 key competencies which are essential to get ahead of the competition.</p>
                    <a><button class="btn btn-lg btn-primary">SEE TESTS</button></a>
                </div>
                <div class="col-lg-3 col-md-2 col-sm-6 col-xs-11">
                    <img src="Images/hp-monitor-numerical.png" alt="Image" class="img img-responsive img-fluid">
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
           <div class="col-md-2"></div>
            <div class="col-md-3 ">
                        <img src="Images/my.jpg" alt="Suraj" class="img-circle img-responsive .img-thumbnail">
                    </div>
                    <div class="col-md-6">
                    <blockquote><em>The tools are simple to use, and a teacher could easily create study materials and share them with a class. Although the homepage, largely devoted to registration, doesn't immediately engage visitors, a Facebook log-in option makes opening a free account fairly straightforward.</em><br><br>
                    <footer class="blockquote-footer">Suraj Patil from <cite title="Source Title">MIT College, Pune.</cite></footer></blockquote> <br>
                   </div>
          </div>

          <div class="item">
            <div class="col-md-2"></div>
            <div class="col-md-3 ">
                        <img src="Images/my.jpg" alt="Suraj" class="img-circle img-responsive .img-thumbnail">
                    </div>
                    <div class="col-md-6">
                    <blockquote><em>The tools are simple to use, and a teacher could easily create study materials and share them with a class. Although the homepage, largely devoted to registration, doesn't immediately engage visitors, a Facebook log-in option makes opening a free account fairly straightforward.</em><br><br>
                    <footer class="blockquote-footer">Suraj Patil from <cite title="Source Title">MIT College, Pune.</cite></footer></blockquote> <br>
                   </div>
          </div>

          <div class="item">
           <div class="col-md-2"></div>
            <div class="col-md-3 ">
                        <img src="Images/my.jpg" alt="Suraj" class="img-circle img-responsive .img-thumbnail">
                    </div>
                    <div class="col-md-6">
                    <blockquote><em>The tools are simple to use, and a teacher could easily create study materials and share them with a class. Although the homepage, largely devoted to registration, doesn't immediately engage visitors, a Facebook log-in option makes opening a free account fairly straightforward.</em><br><br>
                    <footer class="blockquote-footer">Suraj Patil from <cite title="Source Title">MIT College, Pune.</cite></footer></blockquote> <br>
                   </div>
          </div>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right"></span>
          <sxczss="sr-only">Next</span>
        </a>
      </div>

      <%@include file="footer.jsp" %>
                </body>
            </html>
    