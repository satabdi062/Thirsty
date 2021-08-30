<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
   <link rel="stylesheet" href="css/mystyle.css">
   <style>

*:focus {
  outline: none;
}

 body {
  font-family: "Muli-Regular";
  font-size: 14px;
  margin: 0;
  color: #999;
  background-color:#bdcff4;
   }
  img {
  max-width: 100%; }
  .image-1 {
  position: absolute;
  bottom: 60px;
  left:8px;;
  z-index: -1; }

.image-2 {
  position: absolute;
  bottom: 70px;
  right: 300px;
  z-index:-1; }


.login-box {
  position: relative;
  margin: 5% auto;
  width: 600px;
  overflow: auto;
  height: 470px;
  background-color:white;
  border-radius: 2px;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.4);
}
.left {
  position: absolute;
  top: 0;
  left: 0;
  box-sizing: border-box;
  padding: 40px;
  width: 300px;
  height: 400px;
}
.c{
	/* padding-left: */
	top: 390px;
	left: 260px;
}

h1 {
  margin: 0 0 20px 0;
  font-weight: 300;
  font-size: 28px;
}

input[type="text"],
input[type="password"] {
  display: block;
  box-sizing: border-box;
  margin-bottom: 14px;
  padding: 4px;
  width: 220px;
  height: 32px;
  border: none;
  border-bottom: 1px solid #AAA;
  font-family: 'Roboto', sans-serif;
  font-weight: 400;
  font-size: 15px;
  transition: 0.2s ease;
}

input[type="text"]:focus,
input[type="password"]:focus {
  border-bottom: 2px solid #246ce3;
  color: #393939;
  transition: 0.2s ease;
}

input[type="submit"] {
  margin-top: 13px;
  width: 120px;
  height: 32px;
  padding: 4px;
  background: #246ce3;
  border: none;
   border-radius: 20px;
  color: #FFF;
  font-family: 'Roboto', sans-serif;
  font-weight: 500;
  text-transform: uppercase;
  transition: 0.1s ease;
  cursor: pointer;
}

input[type="submit"]:hover,
input[type="submit"]:focus {
  opacity: 0.8;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.4);
  transition: 0.1s ease;
}

input[type="submit"]:active {
  opacity: 1;
  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.4);
  transition: 0.1s ease;
}

.or {
  position: absolute;
  top: 180px;
  left: 280px;
  width: 40px;
  height: 40px;
  background: #DDD;
  border-radius: 50%;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.6);
  line-height: 40px;
  text-align: center;
}

.right {
  position: absolute;
  top: 0;
  right: 0;
  box-sizing: border-box;
  padding: 40px;
  width: 300px;
  height: 400px;
  border-radius: 0 2px 2px 0;
}

.right .loginwith {
  display: block;
  margin-bottom: 40px;
  font-size: 28px;
  color: #FFF;
  text-align: center;
}

button.social-signin {
  margin-bottom: 20px;
  width: 220px;
  height: 36px;
  border: none;
  border-radius: 20px;
  color: #FFF;
  font-family: 'Roboto', sans-serif;
  font-weight: 500;
  transition: 0.2s ease;
  cursor: pointer;
}

button.social-signin:hover,
button.social-signin:focus {
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.4);
  transition: 0.2s ease;
}

button.social-signin:active {
  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.4);
  transition: 0.2s ease;
}

button.social-signin.facebook {
  background: #32508E;
}

button.social-signin.twitter {
  background: #55ACEE;
}

button.social-signin.google {
  background: #DD4B39;
}
	}
 
</style>
<script type="text/javascript">
 function validateUser(){
	 
	 var d1=document.getElementById("name");
	 var d2=document.getElementById("email");
	 var d3=document.getElementById("contact");
	 var d4=document.getElementById("address");
	 var d7=document.getElementById("pincode");
	 var d5=document.getElementById("pwd");
	 var d6=document.getElementById("pass2");
	 var e1= document.getElementById("error1");
	 var e2= document.getElementById("error2");
	 var e3= document.getElementById("error3");
	 var e4= document.getElementById("error4");
	 var e5= document.getElementById("error5");
	 var e6= document.getElementById("error6");
	 var e7= document.getElementById("error7");
	 e1.innerHTML="";
	 e2.innerHTML="";
	 e3.innerHTML="";
	 e4.innerHTML="";
	 e5.innerHTML="";
	 e6.innerHTML="";
	 e7.innerHTML="";
	 ret_value=true; 
	 var x=document.getElementById("email").value; 
	 var atposition=x.indexOf("@");  
	 var dotposition=x.lastIndexOf(".");  
	 if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){  
		 e7.innerHTML="Please enter a valid e-mail address";  
	   ret_value=false;  
	   }  
	   
	 
		  var pw = document.getElementById("pwd").value;
		 //minimum password length validation
		  if(pw.length < 8) {
		     e5.innerHTML = "**Password length must be atleast 8 characters";
		     ret_value=false;
		  }

		//maximum length of password validation
		  if(pw.length > 15) {
		     e5.innerHTML = "**Password length must not exceed 15 characters";
		     ret_value=false;
		  }
	   
		  
		  if(d5.value != d6.value)  
		  {   
			  e6.innerHTML="Passwords did not match";
			  ret_value=false;
		  }

	 if(d1.value.trim()==""||d1.value.trim()==null){
		 
		 e1.innerHTML="*This field is required";
		 ret_value=false;
	 }
	 if(d2.value.trim()==""||d2.value.trim()==null){
		 
		 e7.innerHTML="*This field is required";
		 ret_value=false;
	 }
	 if(d3.value.trim()==""||d3.value.trim()==null){
	
	 e2.innerHTML="*This field is required";
	 ret_value=false;
 	}
 	if(d4.value.trim()==""||d4.value.trim()==null){
	 
	 e3.innerHTML="*This field is required";
	 ret_value=false;
	}

	if(d5.value.trim()==""||d5.value.trim()==null){
	 
	 e5.innerHTML="*This field is required";
	 ret_value=false;
	}
	if(d6.value.trim()==""||d6.value.trim()==null){
		
		 e6.innerHTML="*This field is required";
		 ret_value=false;
		}
	if(d7.value.trim()==""||d7.value.trim()==null){
		
		 e4.innerHTML="*This field is required";
		 ret_value=false;
		}
	return ret_value;
}
 

</script>

</head>
<body>
<form class="login-box" action="register" method="post">
  <div class="left">
    <h1>Sign up</h1>
    
   <div> <input type="text" name="name" id="name" placeholder="Username" />
    <span style='color:red' id='error1'></span></div>
   <div> <input type="text" class="form-control" id="contact" name="contact" placeholder="Contact no"/>
    <span style='color:red' id='error2'></span></div>
    <div>
    <input type="text" class="form-control" id="address" name="address" placeholder="Address" />
     <span style='color:red' id='error3'></span>
    </div>
    <div>
    <input type="text" class="form-control" id="pincode" name="pincode" placeholder="Pincode"/>
    <span style='color:red' id='error4'></span>
    </div>
    <div>
	<input type="text" class="form-control" id="email" name="email" placeholder="Username"/>
	<span style='color:red' id='error7'></span>
	</div>
    <div>
    <input type="password" class="form-control" id="pwd" name="password" placeholder="Password"/>
    <span style='color:red' id='error5'></span>
    </div>
    <div>
    <input type="password" name="password2" id="pass2" placeholder="Retype password" />
    <span style='color:red' id='error6'></span>
    </div>
    <input class="left c" type="submit" name="signup_submit" value="Sign me up" onclick='return validateUser()' />
  </div>
  
  <div class="right">
    <h1>Sign in with<br />social network</h1>
    
    <button class="social-signin facebook">Sign in with facebook</button>
    <button class="social-signin twitter">Sign in with Twitter</button>
    <button class="social-signin google">Sign in with Google+</button>
  </div>
  <div class="or">OR</div>
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