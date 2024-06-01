<%@page import="java.sql.PreparedStatement"%>
<%@include file="shomesame.jsp" %>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<h2 align="center">Your Booked Event</h2>
<%@page errorPage="error.jsp" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@include file="db.jsp"%>
<body style="background-image: url('image/bg9.png');background-size: 100% 100%; top:0;width: 1500px;height:700px">>
<div class="row">
<%
String qr="select * from book where email=?";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1, email);
ResultSet rs=ps.executeQuery();
if(rs.next())
{
	do
	{String eid=rs.getString("eid");
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
<div class="col-md-2 mt-3">
		<div class="card">
		<img class="card-img-top" src="<%=iname %>" alt="No Img" width="20px" height="100px">
		<div class="card-body">
		<b><%=ename %></b>
		<p><%=ecat %></p>
		<p><%=sdate %></p>
		<p><%=price %>/-</p>
		</div>
		<div class="class-footer">
	<a href="fav.jsp?eid=<%=eid %>&ename=<%=ename %>&edesc=<%=edesc %>&evenue=<%=evenue %>&sdate=<%=sdate %>&edate=<%=edate%>&cdate=<%=cdate%>&ecat=<%=ecat%>&price=<%=price%>&iname=<%=iname%>"  class="btn-sm" ><i id="fav" class="fa fa-heart" style="font-size:24px;color:red" ></i></a>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a  href="Readmore.jsp?eid=<%=eid %>" class="btn-sm"><i class="fa fa-angle-double-right" style="font-size:24px"></i></a>
	</div>
	  </div>
</div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		
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
</div>


