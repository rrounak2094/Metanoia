<%@include file="osame.jsp" %>
<head>
<style>
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #7e57c2 ;
  color: white;
}
</style>

</head>
 <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title ">Edit</h4>
                  <p class="card-category"></p>
                </div>
                <div class="card-body">
                  <div class="table-responsive">
                    <table class="table" id="customers">
                      <thead class=" text-primary">
                        <th> ID </th>
                        <th> Name </th>
                        <th> Description </th>
                        <th>Venue </th>
                        <th> StartDate </th>
                        <th> EndDate</th>
                        <th> Reg_CloseDate </th>
                        <th> Category </th>
                        <th> Price </th>
                        <th> Image</th>
                        <th> Delete </th>
                        <th> Update</th>
                        <th> Upload_Img </th>
                      </thead>
                      <tbody>
<%
String eid=request.getParameter("eid");
String q="select * from event1 where email=? and eid=?";
PreparedStatement ps=con.prepareStatement(q);
ps.setString(1,email);
ps.setString(2,eid);
ResultSet rs=ps.executeQuery();
if(rs.next())
{
do
{
String ename=rs.getString("ename");
String edesc=rs.getString("edesc");
String evenue=rs.getString("evenue");
String sdate=rs.getString("sdate");
String edate=rs.getString("edate");
String cdate=rs.getString("cdate");
String ecat=rs.getString("ecat");
int price=rs.getInt("price");
String iname=rs.getString("iname");
session.setAttribute("eid", eid);

%>

<tr>

<td><%=eid %></td>
<td><%=ename%></td>
<td><%=edesc%></td>
<td><%=evenue%></td>
<td><%=sdate%>
<td><%=edate%>
<td><%=cdate%>
<td><%=ecat%></td>
<td><%=price%></td>
<td><img src="<%=iname %>" alt="noimg" height="80px" width="80px" /></td>
<td><button type="button" class="wave-effect waves-light btn"><a href=delete.jsp?eid=<%=eid %>> Delete</a> </button></td>
<td><button type="button" class="wave-effect waves-light btn"><a href="#"  data-toggle="modal" data-target="#upevent-modal">Update</a></button></td>
<td><button type="button" class="wave-effect waves-light btn"><a href=upimg.jsp?eid=<%=eid %>>Upload Img</a></button></td>
<!-- Modal foe event show -->
<div class="modal fade" id="upevent-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
    <h4 class="modal-title" id="exampleModalLabel" color="#00b0ff"><%=ename %></h4>
       
<form id="fid" action="Update" method="post"><br>

<div class="form-group">
<%=eid %><input type="hidden"  value="<%=eid%>" class="form-control" name="eid"/>
</div>

<div class="form-group">
<input type="text" placeholder="Enter Event Name." value="<%=ename%>" id="ename" class="form-control" name="ename" required/>
</div>
<div class="form-group">
<textarea type="text" placeholder="Enter Description" value="<%=edesc%>" id="edesc" class="form-control" name="edesc" required></textarea>
</div>
<div class="form-group">
<input type="text" placeholder="Enter Venue" value="<%=evenue%>" id="evenue" class="form-control" name="evenue" required/>
</div>
<div class="form-group">
<input type="datetime-local" placeholder="Enter Start Date-Time" value="<%=sdate%>" class="form-control"  name="sdate" required/>
</div>
<div class="form-group">
<input type="datetime-local" placeholder="Enter End Date-Time" value="<%=edate%>" class="form-control"  name="edate" required/>
</div>
<div class="form-group">
<input type="date" placeholder="Enter Registration close Date" value="<%=cdate%>" class="form-control"  name="cdate" required/>
</div>
<div class="form-group">
<input type="text" placeholder="Enter Category" value="<%=ecat%>" class="form-control"  name="ecat" required/>
</div>
<div class="form-group">
<input type="number" placeholder="Enter End Date-Time" value="<%=price%>" class="form-control"  name="price" required/>
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
%></tbody>
</table>
</div>