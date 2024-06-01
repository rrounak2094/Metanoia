
<%@include file="shomesame.jsp" %>
<%@page import="java.awt.Button"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@include file="db.jsp"%>
<%@page errorPage="error.jsp" %>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<!-- Category -->
<body style="background-image: url('image/bg9.png');background-size: 100% 100%; top:0;width: 1500px;height:600px">
<div class="container" style="color:#212121">
<%
	String q="select distinct ecat from event1";
Statement st1=con.createStatement();
ResultSet rs1=st1.executeQuery(q);
if(rs1.next())
{
	%>
	<form action="event.jsp" method="post" width="850px" align="center">
  <select name="licat" style="border-bottom:1px solid #999;font-weight:bold;
width:700px;
padding:10px 0;
margin:3px 0;text-align:center;">
	<%
	do
	{
		String ecat=rs1.getString("ecat");
		%>
		
	  <option value="<%=ecat%>"><%=ecat %></option>
	

<%
			}while(rs1.next());
}
else
{
	 %>
     
     <script>swal("No Record Found");</script>
     <%
    	
}

con.close();
%>
</select>
  <input type="submit">
</form>
</div>
<!-- all events -->
<div class="row">
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/metanoia1","root","r*29");

	String qr="select * from event1 order by sdate desc";
Statement st=con1.createStatement();
ResultSet rs=st.executeQuery(qr);
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
<div class="col-md-2 mt-3" border="1px">
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
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
out.println("NO record found");	
}

con1.close();
%>
</div>
</script>
<!--javascript-->
<script
  src="https://code.jquery.com/jquery-3.6.0.min.js"
  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
  crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</script >

</body>
</html>