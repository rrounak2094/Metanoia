<%@page import="java.sql.PreparedStatement"%>
<%@include file="db.jsp"%>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<%

String email=(String)session.getAttribute("id");
String mob=request.getParameter("mob");
String clgname=request.getParameter("clgname");
String enroll=request.getParameter("enroll");
String course=request.getParameter("course");
String branch=request.getParameter("branch");
String year=request.getParameter("year");
String city=request.getParameter("city");

		try {
	String q="update stu1 set clgname=?,enroll=?,course=?,branch=?,year=?,city=? where email=?";
	PreparedStatement ps=con.prepareStatement(q);
	ps.setString(7, email);
	ps.setString(1, clgname);
	ps.setString(2, enroll);
	ps.setString(3, course);
	ps.setString(4, branch);
	ps.setString(5, year);
	ps.setString(6, city);
	
	int i=ps.executeUpdate();
	
	if(i>0)
	{%>
	
	
			<script>
swal(" Record Updated");
</script>

		<%
		response.sendRedirect("shome.jsp");}
	else
	{%>
	
	<script>
swal(" Record Not Updated");
</script>

<%	
response.sendRedirect("shome.jsp");}
con.close();
} catch (Exception e) {
	out.println(e);
}


%>
