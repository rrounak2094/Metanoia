<%@include file="shomesame.jsp" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page errorPage="error.jsp" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@include file="db.jsp" %>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<body "background-image: url('image/bg9.png');background-size: 100% 100%; top:0;width: 1500px;height:600px">
<%
String eid=request.getParameter("eid");
String qr="select * from event1 where eid=?";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1,eid);
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
	String iname=rs.getString("iname");%>
	
<div class="row my-4">
<div class="cil-md-10 offset-md-1">

<div class="card md-4" style="width:750px;align:center;height:600px;left:200px;border:2px">
<div class="card-header " color="blue">
<h4 class="card-title" align="center"><%=ename %></h4>
  </div>
  <div class="card-body">
  <img class="card-img-top" src="<%=iname %>" alt="No image " width="530px" height="200px">     
<p><b><i>Event-Id:&nbsp;&nbsp;&nbsp;&nbsp;<%=eid %></br>
Description:&nbsp;&nbsp;&nbsp;&nbsp;<%=edesc %></br>
Venue:&nbsp;&nbsp;&nbsp;&nbsp;<%=evenue %></br>
Start_Date:&nbsp;&nbsp;&nbsp;&nbsp;<%=sdate %></br>
End_Date:&nbsp;&nbsp;&nbsp;&nbsp;<%=edate %></br>
Reg Close_Date:&nbsp;&nbsp;&nbsp;&nbsp;<%=cdate %></br>
Category:&nbsp;&nbsp;&nbsp;&nbsp;<%=ecat %></br>
Price:&nbsp;&nbsp;&nbsp;&nbsp;<%=price %>/-</i></b></p>
<div class="class-footer" color="blue">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</br><a href="book.jsp?eid=<%=eid %>&ename=<%=ename %>&edesc=<%=edesc %>&evenue=<%=evenue %>&sdate=<%=sdate %>&edate=<%=edate%>&cdate=<%=cdate%>&ecat=<%=ecat%>&price=<%=price%>&iname=<%=iname%>" class="btn btn-primary">Book Now</a>
    </div>
  </div>
</div>
</div>
</div>
<%
			}while(rs.next());
}
else
{
	 %>
     
     <script>swal("No Record Found");</script>
     <%
    
}

con.close();
%>

</body>
</html>