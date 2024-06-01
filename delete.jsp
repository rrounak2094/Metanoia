<%@page import="java.sql.PreparedStatement"%>
<%@include file="db.jsp" %>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<% 
String eid=request.getParameter("eid");

    String q="delete from event1 where eid=?";
    PreparedStatement ps=con.prepareStatement(q); 
    ps.setString(1,eid);
    int i=ps.executeUpdate();
	if(i>0)
	{
		response.sendRedirect("oevtshow.jsp");
		out.println("record Deleted");
		
		
	}
	else
	{
		response.sendRedirect("oevtshow.jsp");
		out.println("record not Deleted");
			
	}
	con.close();

%>
