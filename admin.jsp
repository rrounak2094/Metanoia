<%@include file="samecode1.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin login page</title>
<!--css-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="co.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="style2.css">


</head>
<body>
<div style="background-image: url('image/bg6.jpg');background-size: 100% 100%; top:0;width: 1500px;height:900px">
		
					<div class="form-box">
	<a class="logo" href="#"><span class="fa fa-user-secret" style="font-size:40px;color:#01579b;top: 70PX;left: 100px"> ADMIN</a>

<form action="alogin.jsp" class="input-grp" id="login" border="red" method="post">

<input type="text" class="input-field" placeholder="User ID" required id="nm1" name="id"></br>
<input type="password" class="input-field" placeholder="Password" required id="pwd" maxlength="8" name="pwd"></br>
<input type="checkbox" class="check-box"><span>Remember Password</span></br>
<button type="submit" class="submit-btn" onclick="val()" >Login</button>
</form>
</div>
</div>

<!--javascript-->
<script
  src="https://code.jquery.com/jquery-3.6.0.min.js"
  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
  crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


</body>
</html>