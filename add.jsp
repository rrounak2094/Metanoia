<%@include file="ahome.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home Page</title>
<!--css-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="co.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css"></style>

<link rel="stylesheet" href="style2.css">

</head>
<body>
<!-- Modal add Event -->
<div class="modal fade" id="add-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header background-primary">
        <h5 class="modal-title" id="exampleModalLabel"><i class="fa fa-dashcube" style="font-size:48px;color:red"></i>Ecomm </h5>
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
<input type="text-area" placeholder="Enter Description" id="edesc" class="form-control" name="edesc" required/>
</div>
<div class="form-group">
<input type="text" placeholder="Enter Venue" id="evenue" class="form-control" name="evenue" required/>
</div>
<div class="form-group">
<textarea  placeholder="Enter Description" id="edesc" class="form-control" name="edesc" rows="3" required></textarea>
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

<div class="container" text-center>
    <button type="submit" id="sub" class="btn btn-outline-success">Add</button>
    </div>
</form>
</div>

    </div>    
      </div>
      
    </div>
  </div>



<!--javascript-->
<script
  src="https://code.jquery.com/jquery-3.6.0.min.js"
  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
  crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
<!--Now add product-->

</body>
</html>
