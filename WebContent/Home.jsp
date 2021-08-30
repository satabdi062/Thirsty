<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%
    	//Need to check session object for checking my email is null or not.
    	HttpSession hs=request.getSession(false);
    	String email=(String)hs.getAttribute("email");
    			String l=("Log Out");
    	if(email==null)
    	{
    		email="Guest User";
    		l=("Log In");
    	}	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
   <link rel="stylesheet" href="css/mystyle.css">
<title>Home</title>
<style>
body  {
  background-image: url("body.jpg");
  min-height: 500px;
  background-attachment: fixed;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  }
 
</style>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
<div id="mySidebar" class="sidebar">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
  <a  href="edit.jsp" style="width:250px; color:white;">
    <div style="width:250px; color:white;">
     <div>
    <img class="rounded-circle"  src="all.jpg" alt="Card image" style="width:50px;">
    </div>
    
       <h6><%=email %></h6>
  </div>
  </a>
  <a href="Home.jsp">Home</a>
  <a href="category.jsp">Shop by Category</a>
  <a href="order.jsp">Your Orders</a>
  <a href="about.jsp">About Us</a>
  <a href="contact.jsp">Contact</a>
</div>

<div id="main">
  <button class="openbtn" onclick="openNav()"><i class="fas fa-bars"></i></button>  
</div>

<script>
function openNav() {
  document.getElementById("mySidebar").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
}

function closeNav() {
  document.getElementById("mySidebar").style.width = "0";
  document.getElementById("main").style.marginLeft= "0";
}
</script>
  <!-- Brand/logo -->
  <a class="navbar-brand" href="#">
    <img src="logo3.jpg" alt="logo" style="width:40px;">
  </a>
  <form class="form-inline">
    <input class="form-control ml-5 mr-2 col-3 col-sm-4 col-md-6 col-lg-8"style="width:600px;"id="myInput" type="text" placeholder="Search">
    <button class="btn btn-secondary" "id="search"type="button"><i class="fa fa-search"></i></button>
  </form>
  <script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $(".col-md-4").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
<script>
$(document).ready(function(){
  $("#search").on("click", function() {
    var value = $(this).val().toLowerCase();
    $(".col-md-4").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
  <ul class="navbar-nav ml-auto"> 

            <li class="nav-item"> 

                <a class="nav-link" href="#"> 

                 <button type="button" class="btn btn-dark"><i style="font-size:24px" class="fa">&#xf07a;</i></button>

                </a> 

            </li> 
             <li class="nav-item"> 
             
                <form class="nav-link" action="logout">
                
					<button type="submit" class="btn btn-dark"><%=l %></button>
					</form>
                
            </li> 
            
            </ul>
  </nav>
<div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
    <li data-target="#demo" data-slide-to="3"></li>
  </ul>
  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="2502580.jpg" alt="summer is here" width="640" height="400">
    </div>
    <div class="carousel-item">
      <img src="3226877.jpg" alt="fresh juice" width="640" height="360">
    </div>
    <div class="carousel-item">
      <img src="3201717.jpg" alt="blueberry" width="640" height="360">
    </div>
    <div class="carousel-item">
      <img src="all.jpg" alt="fresh juice" width="640" height="360">
    </div>
  </div>
  
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
<div class="container">
<div >
  <h1>Order By Category!</h1></div>
  <div class="row">
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="juice.jsp" >
          <img src="juice.jpg" class="rounded" alt="juice" style="width:100%;height:230px;">
          <div class="caption">
            <p >Juice</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="fruit filled shakes.jsp">
          <img src="smoothy.jpg" class="rounded" alt="smoothy" style="width:100%;height:230px;">
          <div class="caption">
            <p>Fruit Filled Shakes</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="mocktail.jsp" >
          <img src="mocktail.jpg" class="rounded" alt="Fjords" style="width:100%;height:230px;">
          <div class="caption">
            <p>Mocktail</p>
          </div>
        </a>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-md-4">
     <!--  <div class="thumbnail">
        <a href="#" target="_blank">
          <img src="kiwi.jpg" class="rounded" alt="juice" style="width:100%;height:230px;">
          <div class="caption">
            <p >Kiwi</p>
          </div>
        </a> 
      </div> -->
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="milkshake.jsp">
          <img src="milkshake.jpg" class="rounded" alt="smoothy" style="width:100%;height:230px;">
          <div class="caption">
            <p>Milkshakes</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <!-- <div class="thumbnail">
        <a href="#" target="_blank">
          <img src="mixed-berries-with-yogurt-smoothies (1).jpg" class="rounded" alt="Fjords" style="width:100%;height:230px;">
          <div class="caption">
            <p>Mixed-Berries</p>
          </div>
        </a>
      </div> -->
    </div>
  </div>
  
</div>

<div class="container">
<div style="background:background-color: #e5e5f7;
opacity: 1;
background-image:  repeating-radial-gradient( circle at 0 0, transparent 0, #e5e5f7 10px ), repeating-linear-gradient( #444cf755, #444cf7 );">
  <h1 style="text-align:center; font-family:'Brush Script MT',cursive; color:red; font-size:80px">Order your favourite one!</h1></div>
  <div class="row">
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="#">
          <img src="mango.jpg" class="rounded" alt="juice" style="width:100%;height:230px;">
          <div class="caption">
            <p >Mango</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="#">
          <img src="orange.jpg" class="rounded" alt="smoothy" style="width:100%;height:230px;">
          <div class="caption">
            <p>Orange</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="#">
          <img src="lamon.jpg" class="rounded" alt="lamon" style="width:100%;height:230px;">
          <div class="caption">
            <p>Lemon</p>
          </div>
        </a>
      </div>
    </div></div>
    <div class="row">
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="#">
          <img src="kiwi.jpg" class="rounded" alt="juice" style="width:100%;height:230px;">
          <div class="caption">
            <p >Kiwi</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="#">
          <img src="watermalon.jpg" class="rounded" alt="smoothy" style="width:100%;height:230px;">
          <div class="caption">
            <p>Watermelon</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="#">
          <img src="mixed-berries-with-yogurt-smoothies (1).jpg" class="rounded" alt="Fjords" style="width:100%;height:230px;">
          <div class="caption">
            <p>Mixed-Berries</p>
          </div>
        </a>
      </div>
    </div>
  </div>
  
  <div class="row">
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="#">
          <img src="banana.jpg" class="rounded" alt="juice" style="width:100%;height:230px;">
          <div class="caption">
            <p >Banana</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="#">
          <img src="strawberry.jpg" class="rounded" alt="smoothy" style="width:100%;height:230px;">
          <div class="caption">
            <p>Strawberry</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="#">
          <img src="pomegramate.jpg" class="rounded" alt="Fjords" style="width:100%;height:230px;">
          <div class="caption">
            <p>Pomegranate</p>
          </div>
        </a>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="#">
          <img src="peach.jpg" class="rounded" alt="juice" style="width:100%;height:230px;">
          <div class="caption">
            <p >Peach</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="#">
          <img src="coconut.jpg" class="rounded" alt="smoothy" style="width:100%;height:230px;">
          <div class="caption">
            <p>Coconut</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="#" >
          <img src="lichi.jpg" class="rounded" alt="Fjords" style="width:100%;height:230px;">
          <div class="caption">
            <p>Lichi</p>
          </div>
        </a>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="#" >
          <img src="pineapple.jpg" class="rounded" alt="juice" style="width:100%;height:230px;">
          <div class="caption">
            <p >Pineapple</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="#" >
          <img src="beetroot.jpg" class="rounded" alt="smoothy" style="width:100%;height:230px;">
          <div class="caption">
            <p>Beetroot</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="#" >
          <img src="apple.jpg" class="rounded" alt="Fjords" style="width:100%;height:230px;">
          <div class="caption">
            <p>Apple</p>
          </div>
        </a>
      </div>
    </div>
  </div>
</div>
<footer>
  <img src="no.jpg" alt="footer" style="width:100%;height:200px;">
</footer>
<footer style="background-color:white;">
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