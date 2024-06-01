<%@page import="java.sql.PreparedStatement"%>
<%@include file="db.jsp" %>
<%
String iname=request.getParameter("iname");
String eid=(String)session.getAttribute("eid");
String qr="update event1 set iname=? where eid=?";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1, iname);
ps.setString(2, eid);
ps.executeUpdate();
response.sendRedirect("oevtshow.jsp");
out.println("uploaded sucessfully");

%>
