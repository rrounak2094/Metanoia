<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@include file="db.jsp"%>
<table align="center" border="1px" width="300px">
<tr>
<th>FName</th><th>LName</th><th>Email</th><th>Mob no.</th><th>ClgName</th><th>Enroll</th><th>Qulification</th><th>city</th><th>Profile Pic</th>
</tr>
<%
String q="select * from orz";
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(q);
if(rs.next())
{
do
{
String fname=rs.getString("fname");
String lname=rs.getString("lname");
String email=rs.getString("email");
String mob=rs.getString("mob");
String pwd=rs.getString("pwd");
String cpwd=rs.getString("cpwd");
String clgname=rs.getString("clgname");
String enroll=rs.getString("enroll");
String qulification=rs.getString("qulification");
String city=rs.getString("city");
String iname=rs.getString("iname");
%>

<tr>
<td><%=fname %></td>
<td><%=lname %></td>
<td><%=email %></td>
<td><%=mob %></td>
<td><%=clgname %></td>
<td><%=enroll %></td>
<td><%=qulification %></td>
<td><%=city %></td>
<td><img src="<%=iname %>" alt="noimg" height="50px" width="50px" /></td>
</tr>
<%
}while(rs.next());
}
else
{
out.println("no record found");	
}
con.close();
%>
</table>