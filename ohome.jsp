<%@page import="java.sql.PreparedStatement"%>
<%String email=(String) session.getAttribute("id");%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@include file="db.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>organiser Home</title>

<!--css-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="co.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css"></style>

<link rel="stylesheet" href="style2.css">

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style>
body {
	background: #eeeeee;
	font-family: 'Varela Round', sans-serif;
}
.navbar {
	color: #fff;
	background: #926dde !important;
	padding: 5px 16px;
	border-radius: 0;
	border: none;
	box-shadow: 0 0 4px rgba(0,0,0,.1);
}
.navbar img {
	border-radius: 50%;
	width: 36px;
	height: 36px;
	margin-right: 10px;
}
.navbar .navbar-brand {
	color: #efe5ff;
	padding-left: 0;
	padding-right: 50px;
	font-size: 24px;		
}
.navbar .navbar-brand:hover, .navbar .navbar-brand:focus {
	color: #fff;
}
.navbar .navbar-brand i {
	font-size: 25px;
	margin-right: 5px;
}
.search-box {
	position: relative;
}	
.search-box input {
	padding-right: 35px;
	min-height: 38px;
	border: none;
	background: #faf7fd;
	border-radius: 3px !important;
}
.search-box input:focus {		
	background: #fff;
	box-shadow: none;
}
.search-box .input-group-addon {
	min-width: 35px;
	border: none;
	background: transparent;
	position: absolute;
	right: 0;
	z-index: 9;
	padding: 10px 7px;
	height: 100%;
}
.search-box i {
	color: #a0a5b1;
	font-size: 19px;
}
.navbar .nav-item i {
	font-size: 18px;
}
.navbar .nav-item span {
	position: relative;
	top: 3px;
}
.navbar .navbar-nav > a {
	color: #efe5ff;
	padding: 8px 15px;
	font-size: 14px;		
}
.navbar .navbar-nav > a:hover, .navbar .navbar-nav > a:focus {
	color: #fff;
	text-shadow: 0 0 4px rgba(255,255,255,0.3);
}
.navbar .navbar-nav > a > i {
	display: block;
	text-align: center;
}
.navbar .dropdown-item i {
	font-size: 16px;
	min-width: 22px;
}
.navbar .dropdown-item .material-icons {
	font-size: 21px;
	line-height: 16px;
	vertical-align: middle;
	margin-top: -2px;
}
.navbar .nav-item.open > a, .navbar .nav-item.open > a:hover, .navbar .nav-item.open > a:focus {
	color: #fff;
	background: none !important;
}
.navbar .dropdown-menu {
	border-radius: 1px;
	border-color: #e5e5e5;
	box-shadow: 0 2px 8px rgba(0,0,0,.05);
}
.navbar .dropdown-menu a {
	color: #777 !important;
	padding: 8px 20px;
	line-height: normal;
	font-size: 15px;
}
.navbar .dropdown-menu a:hover, .navbar .dropdown-menu a:focus {
	color: #333 !important;
	background: transparent !important;
}
.navbar .navbar-nav .active a, .navbar .navbar-nav .active a:hover, .navbar .navbar-nav .active a:focus {
	color: #fff;
	text-shadow: 0 0 4px rgba(255,255,255,0.2);
	background: transparent !important;
}
.navbar .navbar-nav .user-action {
	padding: 9px 15px;
	font-size: 15px;
}
.navbar .navbar-toggle {
	border-color: #fff;
}
.navbar .navbar-toggle .icon-bar {
	background: #fff;
}
.navbar .navbar-toggle:focus, .navbar .navbar-toggle:hover {
	background: transparent;
}
.navbar .navbar-nav .open .dropdown-menu {
	background: #faf7fd;
	border-radius: 1px;
	border-color: #faf7fd;
	box-shadow: 0 2px 8px rgba(0,0,0,.05);
}
.navbar .divider {
	background-color: #e9ecef !important;
}
@media (min-width: 1200px){
	.form-inline .input-group {
		width: 350px;
		margin-left: 30px;
	}
}
@media (max-width: 1199px){
	.navbar .navbar-nav > a > i {
		display: inline-block;			
		text-align: left;
		min-width: 30px;
		position: relative;
		top: 4px;
	}
	.navbar .navbar-collapse {
		border: none;
		box-shadow: none;
		padding: 0;
	}
	.navbar .navbar-form {
		border: none;			
		display: block;
		margin: 10px 0;
		padding: 0;
	}
	.navbar .navbar-nav {
		margin: 8px 0;
	}
	.navbar .navbar-toggle {
		margin-right: 0;
	}
	.input-group {
		width: 100%;
	}
}
</style>
</head> 
<body>
<nav class="navbar navbar-expand-xl navbar-dark bg-dark">
	<a href="#" class="navbar-brand"><b>Metanoia</b></a>  		
	<button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
		<span class="navbar-toggler-icon"></span>
	</button>
	<!-- Collection of nav links, forms, and other content for toggling -->
	<div id="navbarCollapse" class="collapse navbar-collapse justify-content-start">		
		<form class="navbar-form form-inline">
			<div class="input-group search-box">								
				<input type="text" id="search" class="form-control" placeholder="Search here...">
				<span class="input-group-addon"><i class="material-icons">&#xE8B6;</i></span>
			</div>
		</form>
		<div class="navbar-nav ml-auto">
			<a href="ohome.jsp" class="nav-item nav-link active"><i class="fa fa-home"></i><span>Home</span></a>
			
			<a href="oevtshow.jsp" class="nav-item nav-link"><i class="fa fa-users"></i><span>Events</span></a>
			<a href="#" class="nav-item nav-link" data-toggle="modal" data-target="#create-modal"><i class="fa fa-plus	
			"></i><span>create Event</span></a>
			<a href="oregstu.jsp" class="nav-item nav-link"><i class="fa fa-lock"></i><span>Registered Student list</span></a>
					
			<a href="#" class="nav-item nav-link"><i class="fa fa-bell"></i><span>Notifications</span></a>
			<div class="nav-item dropdown">
				<a href="#" data-toggle="dropdown" class="nav-item nav-link dropdown-toggle user-action"> <%=email %><b class="caret"></b></a>
				<div class="dropdown-menu">
					<a href="#" class="dropdown-item" data-toggle="modal" data-target="#profile1-modal"><i class="fa fa-user-circle-o"></i> Profile</a>
					
					<a href="#" class="dropdown-item" data-toggle="modal" data-target="#pic-modal"><i class="fa fa-user"></i> Profile Pic</a>
					<div class="divider dropdown-divider"></div>
					<a href="Slogout" class="dropdown-item"><i class="material-icons">&#xE8AC;</i> Logout</a>
				</div>
			</div>
		</div>
	</div>
</nav>

<!--Carousel Wrapper-->
<div id="carousel-example-2" class="carousel slide carousel-fade" data-ride="carousel">
	<!--Indicators-->
	<ol class="carousel-indicators">
	  <li data-target="#carousel-example-2" data-slide-to="0" class="active"></li>
	  <li data-target="#carousel-example-2" data-slide-to="1"></li>
	  <li data-target="#carousel-example-2" data-slide-to="2"></li>
	</ol>
	<!--/.Indicators-->
	<!--Slides-->
	<div class="carousel-inner" role="listbox">
	  <div class="carousel-item active">
		<div class="view">
		  <img class="d-block w-100" src="e5.jpg"
			alt="First slide">
		  <div class="mask rgba-black-light"></div>
		</div>
		<div class="carousel-caption">
		  <h3 class="h3-responsive">We don't remember the days rather the moment</h3>
		 
		</div>
	  </div>
	  <div class="carousel-item">
		<!--Mask color-->
		<div class="view">
		  <img class="d-block w-100" src="e6.jpg"
			alt="Second slide">
		  <div class="mask rgba-black-strong"></div>
		</div>
		<div class="carousel-caption">
		  <h3 class="h3-responsive">Some people look for a beautiful place. Others make a place beautiful.</h3>
		  
		</div>
	  </div>
	  <div class="carousel-item">
		<!--Mask color-->
		<div class="view">
		  <img class="d-block w-100" src="e7.jpg"
			alt="Third slide">
		  <div class="mask rgba-black-slight"></div>
		</div>
		<div class="carousel-caption">
		  <h3 class="h3-responsive">Plans are nothing. Planning is everything</h3>
		  
		</div>
	  </div>
	</div>
	<!--/.Slides-->
	<!--Controls-->
	<a class="carousel-control-prev" href="#carousel-example-2" role="button" data-slide="prev">
	  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	  <span class="sr-only">Previous</span>
	</a>
	<a class="carousel-control-next" href="#carousel-example-2" role="button" data-slide="next">
	  <span class="carousel-control-next-icon" aria-hidden="true"></span>
	  <span class="sr-only">Next</span>
	</a>
	<!--/.Controls-->
  </div>
  <!--/.Carousel Wrapper-->

<%
String q="select * from orz where email=?";
PreparedStatement ps=con.prepareStatement(q);
ps.setString(1,email);
ResultSet rs=ps.executeQuery();
if(rs.next())
{
do
{
String fname=rs.getString("fname");

String mob=rs.getString("mob");
String clgname=rs.getString("clgname");
String enroll=rs.getString("enroll");
String qulification=rs.getString("qulification");
String city=rs.getString("city");
String iname=rs.getString("iname");
%>
<!-- Modal add Profile pic -->
<div class="modal fade" id="pic-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header background-primary">
        <h5 class="modal-title" id="exampleModalLabel">Metanoia </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
    <div class="container text-center">
    <img src="<%=iname %>" class="avatar" alt="Avatar" style="width:120px;height:120px;border-radius:50%" >
    <h4 class="modal-title" id="exampleModalLabel" color="#00b0ff"><%=fname %></h4>
       
<form id="fimg" action="UploadServletO.jsp" method="post" enctype="multipart/form-data"><br>
<div class="form-group">
<input type="file" value=<%=iname %>placeholder="Choose File" class="form-control" size="50" name="iname" />
</div>

<div class="container" >
    <button type="submit" id="sub" class="btn btn-outline-success">Edit Img</button>
    </div>

</form>
</div>

    </div>    
      </div>
      
    </div>
  </div>


<!-- Modal add Profile -->
<div class="modal fade" id="profile1-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header background-primary">
        <h5 class="modal-title" id="exampleModalLabel">Metanoia </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
    <div class="container text-center">
    <h4 class="modal-title" id="exampleModalLabel" color="#00b0ff"><%=fname %></h4>
       
<form id="fid" action="Uporz.jsp" method="post"><br>

<div class="form-group">
<input type="hidden" placeholder="Enter your Email Id" value="<%=email%>" class="form-control" name="email"/>
</div>

<div class="form-group">
<input type="text" placeholder="Enter your clgname" value="<%=clgname%>" id="edesc" class="form-control" name="clgname" required/>
</div>
<div class="form-group">
<input type="text" placeholder="Enter your Enroll" value="<%=enroll%>" id="evenue" class="form-control" name="enroll" required/>
</div>
<div class="form-group">
<input type="text" placeholder="Enter your Qulification" value="<%=qulification%>" class="form-control"  name="qulification" required/>
</div>
<div class="form-group">
<input type="text" placeholder="Enter your City" value="<%=city%>" class="form-control"  name="city" required/>
</div>
<div class="container" text-center>
    <button type="submit" id="sub" class="btn btn-outline-success">Edit</button>
    </div>
</form>
</div>

    </div>    
      </div>
      
    </div>
  </div>
</body>
<%
}while(rs.next());
}
else
{
out.println("no record found");	
}
con.close();
%>
<!-- Modal create Event -->
<div class="modal fade" id="create-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header background-primary">
        <h5 class="modal-title" id="exampleModalLabel">Metanoia</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
    <div class="container text-center">
    
    <h4 class="modal-title" id="exampleModalLabel" color="#00b0ff">Create Event</h4>
       
<form id="fid" action="addpro.jsp" method="post" ><br>

<div class="form-group">
<input type="text" placeholder="Enter Event Id" class="form-control" name="eid"/>
</div>

<div class="form-group">
<input type="text" placeholder="Enter Event name" id="ename" class="form-control" name="ename" required/>
</div>
<div class="form-group">
<input type="text-area" placeholder="Enter Description" id="edesc" class="form-control" rows="3" name="edesc" required/>
</div>
<div class="form-group">
<input type="text" placeholder="Enter Venue" id="evenue" class="form-control" name="evenue" required/>
</div>
<div class="form-group">
<input type="datetime-local" placeholder="Enter Start Date & Time" id="sdate" class="form-control" name="sdate" required/>
</div>
<div class="form-group">
<input type="datetime-local" placeholder="Enter End Date & Time" id="edate" class="form-control" name="edate" required/>
</div>
<div class="form-group">
<input type="date" placeholder="Enter Registration closing date" class="form-control" name="cdate" required/>
</div>
<div class="form-group">
<input type="text" placeholder="Enter Event Category" class="form-control"  name="ecat" required/>
</div>
<div class="form-group">
<input type="number" placeholder="Enter Price" class="form-control"  name="price" required/>
</div>
<div class="form-group">
<input type="file" placeholder="Choose File" class="form-control" size="50" name="iname" required/>
</div>
<div class="form-group">
<input type="email" placeholder="Enter your email-id" value="<%=email %>" class="form-control"  name="email" required/>
</div>

<div class="container" text-center>
    <button type="submit" id="sub" class="btn btn-outline-success">Add</button>
    </div>
</form>
</div>

    </div>    
      </div>
      
    </div>
  </div>

</html>
