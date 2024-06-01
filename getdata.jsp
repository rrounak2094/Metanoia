<%@page import="java.sql.PreparedStatement"%>
<%@include file="db.jsp" %>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<%
String iname=request.getParameter("iname");
String email=(String)session.getAttribute("id");
String qr="update stu1 set iname=? where email=?";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1, iname);
ps.setString(2, email);
ps.executeUpdate();
response.sendRedirect("shome.jsp");
%>
 
     
     