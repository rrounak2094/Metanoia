<%@page import="java.sql.PreparedStatement"%>
<%@include file="db.jsp" %>
<% 
String eid=request.getParameter("eid");

    String q="delete from fav where eid=?";
    PreparedStatement ps=con.prepareStatement(q); 
    ps.setString(1,eid);
    int i=ps.executeUpdate();
	if(i>0)
	{
		response.sendRedirect("viewfav.jsp");
	}
	else
	{
		out.println("record not deleted");
	}
	con.close();

%>
