

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
import javax.servlet.http.HttpSession;

@WebServlet("/Update")
public class Update extends HttpServlet {
		protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			PrintWriter out=response.getWriter();
			response.setContentType("text/html");
			String eid=request.getParameter("eid");
			String ename=request.getParameter("ename");
			String edesc=request.getParameter("edesc");
			String evenue=request.getParameter("evenue");
			String sdate=request.getParameter("sdate");
			String edate=request.getParameter("edate");
			String cdate=request.getParameter("cdate");
			String ecat=request.getParameter("ecat");
			String p=request.getParameter("price");
			int price=Integer.parseInt(p);
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/metanoia1","root","r*29");
				String q="update event1 set ename=?,edesc=?,evenue=?,sdate=?,edate=?,cdate=?,ecat=?,price=? where eid=?";
				PreparedStatement ps=con.prepareStatement(q);
				ps.setString(9, eid);
				ps.setString(1, ename);
				ps.setString(2, edesc);
				ps.setString(3, evenue);
				ps.setString(4, sdate);
				ps.setString(5, edate);
				ps.setString(6, cdate);
				ps.setString(7, ecat);
				ps.setInt(8, price);
				int i=ps.executeUpdate();
				RequestDispatcher rd=request.getRequestDispatcher("oevtshow.jsp");
				if(i>0)
				{
					
					rd.include(request, response);
					out.println("record Updated");
				}
				else
				{
					HttpSession session=request.getSession();
					session.setAttribute("id", eid);
					
					rd.include(request, response);
					out.println("record not Updated");
				}
				con.close();
			} catch (Exception e) {
				out.println(e);
			}
		}

	}

	


