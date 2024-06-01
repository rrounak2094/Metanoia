<%@page import="java.sql.PreparedStatement"%>
<%@include file="db.jsp"%>

<%
String email=(String)session.getAttribute("id");
String iname=request.getParameter("iname");
String mob=request.getParameter("mob");
String clgname=request.getParameter("clgname");
String enroll=request.getParameter("enroll");
String qulification=request.getParameter("qulification");
String city=request.getParameter("city");

		try {
	String q="update orz set clgname=?,enroll=?,qulification=?,city=? where email=?";
	PreparedStatement ps=con.prepareStatement(q);
	ps.setString(5, email);
	ps.setString(1, clgname);
	ps.setString(2, enroll);
	ps.setString(3, qulification);
		ps.setString(4, city);
	
	int i=ps.executeUpdate();
	
	if(i>0)
	{
		response.sendRedirect("ohome.jsp");
		out.println("record Updated");
			}
	else
	{
		response.sendRedirect("ohome.jsp");
		out.println("record not Updated");
	}
	con.close();
} catch (Exception e) {
	out.println(e);
}


%>
