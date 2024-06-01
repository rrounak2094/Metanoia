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
@WebServlet("/Upfor")
public class Upfor extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		String email=request.getParameter("email");
		String pwd=request.getParameter("pwd");
		String cpwd=request.getParameter("cpwd");

		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/metanoia1","root","r*29");
			String q="update stu1 set pwd=?,cpwd=? where email=?";
			PreparedStatement ps=con.prepareStatement(q);
			ps.setString(1, pwd);
			ps.setString(2, cpwd);
			ps.setString(3, email);
			int i=ps.executeUpdate();
			RequestDispatcher rd=request.getRequestDispatcher("student.jsp");
			if(i>0)
			{
				rd.include(request, response);
				out.println("record Updated successfully");
			}
			else
			{
				//rd.include(request, response);
				out.println("record not Updated");
			}
			con.close();
		} catch (Exception e) {
			out.println(e);
		}
	}

}

