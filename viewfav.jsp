<%@page import="java.sql.PreparedStatement"%>
<%@include file="shomesame.jsp" %>
<h2 align="center">Your Event Wish-List</h2>
<%@page errorPage="error.jsp" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@include file="db.jsp"%>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<div class="row">
<body "background-image: url('image/bg9.png');background-size: 100% 100%; top:0;width: 1500px;height:600px">
<%
String qr="select * from fav where email=?";
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
	<button type="button" style="background-color:red"><a href="delfav.jsp?eid=<%=eid%>" class="btn-sm" color="white">remove</a></button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
</body>

