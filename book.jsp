<%String email=(String) session.getAttribute("id");%>
<%@page import="java.sql.PreparedStatement"%>
<%@include file="db.jsp"%>
<%
String eid=request.getParameter("eid");
String ename=request.getParameter("ename");
String edesc=request.getParameter("edesc");
String evenue=request.getParameter("evenue");
String sdate=request.getParameter("sdate");
String edate=request.getParameter("edate");
String cdate=request.getParameter("cdate");
String ecat=request.getParameter("ecat");
int price=Integer.parseInt(request.getParameter("price"));
String iname=request.getParameter("iname");

String q="insert into book values(?,?,?,?,?,?,?,?,?,?,?)";
PreparedStatement ps=con.prepareStatement(q);
ps.setString(1,eid );
ps.setString(2,ename );
ps.setString(3,edesc );
ps.setString(4,evenue );
ps.setString(5,sdate );
ps.setString(6,edate );
ps.setString(7,cdate );
ps.setString(8,ecat );
ps.setInt(9,price );
ps.setString(10,iname );
ps.setString(11,email);

int i=ps.executeUpdate();
if(i>0)
{
response.sendRedirect("Readmore.jsp");
out.println("record added");

}
else
{

	response.sendRedirect("Readmore.jsp");
	out.println("record not added");	
}
con.close();
%>