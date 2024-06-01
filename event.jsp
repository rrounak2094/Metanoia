<%@include file="shomesame.jsp" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@include file="db.jsp" %>
<%@page errorPage="error.jsp" %>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<body "background-image: url('image/bg9.png');background-size: 100% 100%; top:0;width: 1500px;height:600px">
<%
String ecat=request.getParameter("licat");
%>
<h2 align="center"><%=ecat %></h2>
<div class="row">
<%
String q="select * from event1 where ecat=?";
PreparedStatement ps=con.prepareStatement(q);
ps.setString(1,ecat);
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
	<a href="#!" class="btn-sm" ><i id="fav" class="fa fa-heart" style="font-size:24px;color:red"></i></a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a  href="Readmore.jsp?eid=<%=eid %>" class="btn-sm"><i class="fa fa-angle-double-right" style="font-size:24px"></i></a>
	</div>
	  </div>
</div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		
<%
		}while(rs.next());
}
else
{%>
	 <script>swal("No Record Found");</script>
<%
}

con.close();
%>
</div>


</body>
</html>