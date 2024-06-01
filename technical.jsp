<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@include file="db.jsp" %>
<h2 align="center">Technical</h2>
<div class="row">
<%
String q="select * from event1 where ecat='Technical'";
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(q);
if(rs.next())
{
	do
	{String eid=rs.getString("eid");
	String ename=rs.getString("ename");
	String ecat=rs.getString("ecat");
	String edesc=rs.getString("edesc");
	String evenue=rs.getString("evenue");
	String sdate=rs.getString("sdate");
	String edate=rs.getString("edate");
	String cdate=rs.getString("cdate");
	
	int price=rs.getInt("price");
	String iname=rs.getString("iname");
%>
<div class="col-lg-12 col-md-12">
		<div class="card">
		<img class="card-img-top" src="<%=iname %>" alt="No Img" width="100px" height="150px">
		<div class="card-body">
		<b><%=ename %></b>
		<p><%=ecat %></p>
		<p><%=sdate %></p>
		<p><%=price %>/-</p>
		</div>
		<div class="class-footer">
	<a href="#!" class="btn-sm" ><i id="fav" class="fa fa-heart-o" style="font-size:24px;color:red"></i></a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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