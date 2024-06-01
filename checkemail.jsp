<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
String email=request.getParameter("email");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/metanoia1","root","r*29");
String q="select *from stu1 where email=?";
PreparedStatement ps=con.prepareStatement(q);
ps.setString(1, email);
ResultSet rs=ps.executeQuery();
if(rs.next())
{
	response.sendRedirect("mailJSP.jsp?email="+email);
}
else
{
	out.println("Invalid email");
}

%>