<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%String id=(String)session.getAttribute("id");%>
<%@include file="db.jsp" %>
<%
String q="select count(eid) from event1";
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(q);
rs.next();
int c1=rs.getInt(1);
out.println(c1);
con.close();

%>

<button type="button" class="wave-effect waves-light btn"><a class="nav-link" href="add.jsp" data-toggle="modal" data-target="#add-modal"><i class="fa fa-plus-square" style="font-size:24px"></i>Add Event</a> </button>
<button type="button" class="wave-effect waves-light btn"><a  href="orzshow.jsp"  >Show Organizer</a> </button>
<button type="button" class="wave-effect waves-light btn"><a  href="stuhow.jsp"  >Show Student</a> </button>
<button type="button" class="wave-effect waves-light btn"><a  href="show.jsp"  >Show Event</a> </button>
<a href="Slogout">Logout</a>
