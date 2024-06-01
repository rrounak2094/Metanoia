<%@include file="samecode1.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!--css-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="co.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="style2.css">

</head>
<body>
<div style="background-image: url('image/bg6.jpg');background-size: 100% 100%; top:0;width: 1500px;height:900px">
<div class="form-box" style="width:450px; height:600px">
<div class="button-box">
<div id="btn"></div>
<button type="button" class="toggle-btn" onclick="login()">Login</button>
<button type="button" class="toggle-btn" onclick="sign()">Sign up</button>
</div>
<form action="Ologin" id="login" class="input-grp" method="post">
<input type="email" class="input-field" placeholder="User ID" required id="u1" name="email"></br>
<input type="password" class="input-field" placeholder="Password" required  maxlength="8" name="pwd"></br></br>
<a href="forget.jsp">Forget Password</a></br></br>
<button type="submit" class="submit-btn" >Login</button>
</form>
<form id="sign" class="input-grp" action="Regorz" method="post">
<input type="text" class="input-field" placeholder="FName" required id="nm" name="fname">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" class="input-field" placeholder="LName" required id="lm" name="lname"></br>
<input type="email" class="input-field" placeholder="E-mail Id" required name="email">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="number" class="input-field" placeholder="Mobile no." required id="mob" name="mob"></br>
<input type="password" class="input-field" placeholder="Password" required id="pwd" name="pwd" maxlength="8"><i class="fa fa-eye-slash" class="check-box" onclick="myfun()"></i>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="password" class="input-field" placeholder="Confirm Password" required id="cpwd" name="cpwd" maxlength="8"><i class="fa fa-eye-slash" class="check-box" onclick="myfun()"></i></br>
<input type="text" class="input-field" placeholder="COLLAGE Name" required id="cn" name="clgname">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" class="input-field" placeholder="En-Roll" required id="er" name="enroll"></br>

<input type="text" class="input-field" placeholder="Qualification" required id="qul" name="qulification">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" class="input-field" placeholder="City" required id="city" name="city"></br>

</br>
<button type="submit" class="submit-btn" onclick="val()" >Sign up</button>
</form>
</div>
</div>
</div>
<script>
var x=document.getElementById("login");
var y=document.getElementById("sign");
var z=document.getElementById("btn");
function sign()
{
x.style.left="-400px";
y.style.left="50px";
z.style.left="110px";
}
function login()
{
x.style.left="50px";
y.style.left="450px";
z.style.left="0";
}
function myfun() {
 var x = document.getElementById("pwd");
  if (x.type === "password") {
	  x.type = "text";
  } else {
    x.type = "password";
  }
  }


function val()
{
var name=/^[a-z A-Z]+$/;
var nm=document.getElementById('nm').value;
if(!nm.match(name))
alert("name contains only alphabets");

var str=document.getElementById('pwd').value;

var pass=/^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{7,15}$/;
if(str.match(pass))
alert("Successfully Register");
else
alert(" password must contain 8 char atleast one special,lower case,upper case and numerical value");
}

</script>

<!--javascript-->
<script
  src="https://code.jquery.com/jquery-3.6.0.min.js"
  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
  crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
