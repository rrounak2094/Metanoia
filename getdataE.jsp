<%@page import="java.sql.PreparedStatement"%>
<%@include file="db.jsp" %>
<%
String iname=request.getParameter("iname");
String id=(String)session.getAttribute("id");
String qr="update event1 set iname=? where eid=?";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1, iname);
ps.setString(2, id);
ps.executeUpdate();
out.println("uploaded sucessfully");
%>
