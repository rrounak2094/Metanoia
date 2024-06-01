
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@include file="db.jsp"%>
<table align="center" text-align="center" border="3px" width="300px">
<tr border="2px">
<th>Id&nbsp;&nbsp;</th><th>Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th><th>Description&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th><th>Venue&nbsp;&nbsp;&nbsp;</th><th>StartDateTime&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th><th>EndDateTime&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th><th>RegClose&nbsp;&nbsp;&nbsp;</th><th>Category&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th><th>Price&nbsp;&nbsp;</th><th>Image</th><th>Delete</th><th>Update</th><th>UploadImg</th>
</tr>
<%

String q="select * from event1 ";
Statement ps=con.createStatement();

ResultSet rs=ps.executeQuery(q);
if(rs.next())
{
do
{
String eid=rs.getString("eid");
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
</tr>
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
%>
</table>