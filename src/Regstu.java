

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/Regstu")
public class Regstu extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String email=request.getParameter("email");
		String mob=request.getParameter("mob");
		String pwd=request.getParameter("pwd");
		String cpwd=request.getParameter("cpwd");
		String clgname=request.getParameter("clgname");
		String enroll=request.getParameter("enroll");
		String course=request.getParameter("course");
		String branch=request.getParameter("branch");
		String year=request.getParameter("year");
		String city=request.getParameter("city");
try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/metanoia1","root","r*29");
			String q="insert into stu1(fname,lname,email,mob,pwd,cpwd,clgname,enroll,course,branch,year,city) values(?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(q);
			ps.setString(1,fname );
			ps.setString(2,lname );
			ps.setString(3,email );
			ps.setString(4,mob );
			ps.setString(5,pwd );
			ps.setString(6,cpwd );
			ps.setString(7,clgname );
			ps.setString(8,enroll );
			ps.setString(9,course );
			ps.setString(10,branch );
			ps.setString(11,year );
			ps.setString(12,city );
			int i=ps.executeUpdate();
			if(i>0)
			{
			out.println("record added");	
			}
			else
			{
				out.println("record not added");	
			}
			con.close();
			if(i>0)
			{
				RequestDispatcher rd=request.getRequestDispatcher("student.jsp");
				rd.include(request, response);
				out.println("<script>window.alert('sucessfully registered');</script>");
			}
			else
			{
				RequestDispatcher rd=request.getRequestDispatcher("student.jsp");
				rd.include(request, response);
				out.println("<script>window.alert('registeration failed');</script>");
			
				
			}
		} catch (Exception e) {
		   out.println(e);	
		}
	}

}
