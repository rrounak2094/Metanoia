

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
@WebServlet("/Contact")
public class Contact extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		String name=request.getParameter("name");
		
		String email=request.getParameter("email");
		String sub=request.getParameter("sub");
		String msg=request.getParameter("msg");
	
try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/metanoia1","root","r*29");
			String q="insert into contact values(?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(q);
			ps.setString(1,name );
			
			ps.setString(2,email );
			ps.setString(3,sub );
			ps.setString(4,msg );
				int i=ps.executeUpdate();
			if(i>0)
			{
			out.println("record added");	
			}
			else
			{
				out.println("record not added");	
			}
			con.close();if(i>0)
			{
				out.println("<script>window.alert('sucessfully Message Send');</script>");
			}
			else
			{
				out.println("<script>window.alert('Message failed');</script>");
			
				
			}
		} catch (Exception e) {
		   out.println(e);	
		}
	}

}
