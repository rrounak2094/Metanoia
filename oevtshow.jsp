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
                  <h4 class="card-title ">Event Table</h4>
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
                        <th> Edit </th>
                      </thead>
                      <tbody>
<%

String q="select * from event1 where email=? ";
PreparedStatement ps=con.prepareStatement(q);
ps.setString(1,email);
ResultSet rs=ps.executeQuery();
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
<td><button type="button" class="wave-effect waves-light btn"><a href=edit.jsp?eid=<%=eid %>><i class="fa fa-edit"></i> Edit</a> </button></td>
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
</div>