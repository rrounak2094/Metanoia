<%@include file="osame.jsp" %>
<div class="form-box" style="width:500px; height:200px; top:200px; padding:40px">
<form action = "UploadServletEvt.jsp" method = "post"
         enctype = "multipart/form-data">
<input style="width:250px" type="file" class="input-field" placeholder="choose File" required name = "file" size = "50">
</br></br>
<input type="submit" value="Upload File" style="color:blue" />
</form>
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