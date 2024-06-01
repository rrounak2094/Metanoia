<%
String id=request.getParameter("id");
String pwd=request.getParameter("pwd");
if(id.equals("Shivani")&&pwd.equals("S2*R"))
{
	session.setAttribute("id", id);
	response.sendRedirect("examples/dashboard.jsp");
	}
else
{
	response.sendRedirect("admin.jsp");
	out.println("<script>window.alert('Invalid id and password');</script>");
	
	}
%>
