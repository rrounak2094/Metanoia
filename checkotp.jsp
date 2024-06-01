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
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body style="background-image: url('image/bg1.jpeg');background-size: 100% 100%; top:0;width: 1500px;height:600px">
<%
String ot=request.getParameter("ot");
String otp=(String)session.getAttribute("otp");
if(ot.equals(otp))
{
%>
<div class="form-box" style="width:500px; height:300px; top:200px; padding:40px;">
<form action="Upfor" method="post">
<input style="width:250px" type="email" class="input-field" placeholder="Re-Enter your Email Id" required name="email">
</br>
<input style="width:250px" type="password" class="input-field" placeholder="Enter New Password" required name="pwd" id="pwd">
<i class="fa fa-eye-slash" class="check-box" onclick="myfun()"></i></br>
<input style="width:250px" type="password" class="input-field" placeholder="Enter New Confirm Password" required name="cpwd" id="cpwd">
<i class="fa fa-eye-slash" class="check-box" onclick="myfun()"></i></br>
</br>
<input type="submit" value="Send" style="color:blue" onclick="return Validate()" />
</form>
</div>
<%
}
else
{
%>
    
    <script>swal("Please enter correct OTP");</script>
    <%
 
}

%>
<script>
function myfun() {
 var x = document.getElementById("pwd");
  if (x.type === "password") {
	  x.type = "text";
  } else {
    x.type = "password";
  }
  }

function Validate() {
    var pwd = document.getElementById("pwd").value;
    var cpwd = document.getElementById("cpwd").value;
    if (pwd != cpwd) {
    	swal("Passwords do not match.");
        return false;
    }
    return true;
}

</script>


<!--javascript-->
<script
  src="https://code.jquery.com/jquery-3.6.0.min.js"
  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
  crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>
