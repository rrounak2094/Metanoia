<%String email=(String) session.getAttribute("email");%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@include file="db.jsp"%>
<%
String q="select * from stu1 where email=email";
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(q);
if(rs.next())
{
do
{
String fname=rs.getString("fname");

String mob=rs.getString("mob");
String clgname=rs.getString("clgname");
String enroll=rs.getString("enroll");
String course=rs.getString("course");
String branch=rs.getString("branch");
String year=rs.getString("year");
String city=rs.getString("city");

}while(rs.next());
}
else
{
out.println("no record found");	
}
con.close();
%>