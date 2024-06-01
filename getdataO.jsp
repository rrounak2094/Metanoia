<%@page import="java.sql.PreparedStatement"%>
<%@include file="db.jsp" %>
<%
String email=(String)session.getAttribute("id");
String iname=request.getParameter("iname");
String qr="update orz set iname=? where email=?";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1, iname);
ps.setString(2, email);
ps.executeUpdate();
response.sendRedirect("ohome.jsp");
%>
