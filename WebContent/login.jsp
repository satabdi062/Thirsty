<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
   <link rel="stylesheet" href="css/mystyle.css">
   <style>
body  {
  background-image: url("body.jpg");
  min-height: 500px;
  background-attachment: fixed;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  }
  .login-form{  
  background-image: url("bottle.jpg");
     min-height: 200px;
     min-width:200px;
     background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  background-color:rgb(200, 200, 200) /* url("Daco.png") */;
	margin: 50px;
	box-shadow: 2px 2px 10px 3px black;
	border:3px solid #ccc;
	/* border: 35px solid transparent;
  border-image: url(border.jpg) 50 round; */
	text-align: center;
	width: 30%;
	 padding:40px;
	margin-left: 35%;
	margin-top: 10%;
	font-size: 25px;
	color:black /* rgb(255, 0, 0) */;
	}
 
</style>
</head>
<body>
<% 	String email="",password="";
			Cookie cookie[]=request.getCookies();
			for(Cookie c:cookie)
			{
				//out.println(c.getName()+" "+c.getValue()+"<br>");
				if(c.getName().equals("email"))
				{
					email=c.getValue();
				}
				if(c.getName().equals("password"))
				{
					password=c.getValue();
				}
			}
%>
<form class="login-form" action="login" method="post">
<p>
<div>
<input type="text" class="form-control" id="email" name="email" placeholder="Enter username">
</div></p>
<p>
<div>
<input type="password" class="form-control" id="pwd" name="password" placeholder="Enter password">
</div></P>
<div>
<button type="submit" class="btn btn-dark" name="Login">Login</button>
 <a href="register.jsp"> 
 <button type="button" class="btn btn-dark">Register</button>
 </a> 
</div>
<div><h1>${requestScope['msg']}</h1></div>
</form>
<footer style="background-color:white;position: absolute; width: 100%;bottom: 1px;">
 <div style="color: dark gray; margin-left:650px;">
 @Thristy
 </div>
 <div style="margin-left:635px;"><a style="color: #3b5998;" href="#!" role="button"
  ><i class="fab fa-facebook-f fa-lg"></i
></a>

<!-- Twitter -->
<a style="color: #55acee;" href="#!" role="button"
  ><i class="fab fa-twitter fa-lg"></i
></a>

<!-- Google -->
<a style="color: #dd4b39;" href="#!" role="button"
  ><i class="fab fa-google fa-lg"></i
></a>

<!-- Instagram -->
<a style="color: #ac2bac;" href="#!" role="button"
  ><i class="fab fa-instagram fa-lg"></i
></a>
<!-- Linkedin -->
<a style="color: #2492ff;" href="#!" role="button"
  ><i class="fab fa-linkedin fa-lg"></i
></a>
 </div>
 </footer>
</body>
</html>





