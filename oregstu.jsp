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
                  <h4 class="card-title ">Registered Student For Event</h4>
                  <p class="card-category"></p>
                </div>
                <div class="card-body">
                  <div class="table-responsive">
                    <table class="table" id="customers">
                      <thead class=" text-primary">
                        <th> Event_ID </th>
                        <th> Event_Name </th>
                        <th> FName </th>
                        <th>LName </th>
                        <th> Email_id </th>
                        <th> Mob no.</th>
                        <th> ClgName</th>
                        <th> Enroll </th>
                        <th> Course </th>
                        <th> Branch</th>
                        <th> Year </th>
                        <th> City </th>
                        <th> ProfilePic </th>
                      </thead>
                      <tbody>
 <%
 String q="select book.eid,book.ename,fname,lname,stu1.email,mob,clgname,enroll,course,branch,year,city,stu1.iname from event1,stu1,book where stu1.email=book.email and event1.eid=book.eid and event1.email=? ";
PreparedStatement ps=con.prepareStatement(q);
ps.setString(1, email);
ResultSet rs=ps.executeQuery();
if(rs.next())
{
do
{
String eid=rs.getString("eid");
String ename=rs.getString("ename");
String fname=rs.getString("fname");
String lname=rs.getString("lname");
String eemail=rs.getString("email");
String mob=rs.getString("mob");
String clgname=rs.getString("clgname");
String enroll=rs.getString("enroll");
String course=rs.getString("course");
String branch=rs.getString("branch");
String year=rs.getString("year");
String city=rs.getString("city");
String iname=rs.getString("iname");
%>

<tr>
<td><%=eid %></td>
<td><%=ename %></td>
<td><%=fname %></td>
<td><%=lname %></td>
<td><%=eemail %></td>
<td><%=mob %></td>
<td><%=clgname %></td>
<td><%=enroll %></td>
<td><%=course %></td>
<td><%=branch %></td>
<td><%=year %></td>
<td><%=city %></td>
<td><img src="<%=iname %>" alt="noimg" height="50px" width="50px" /></td>
</tr>
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