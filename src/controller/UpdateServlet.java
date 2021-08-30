package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.User;
@WebServlet(urlPatterns = "/update")
public class UpdateServlet extends HttpServlet 
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{	
		String name=req.getParameter("name");
		String address=req.getParameter("address");
		String pincode=req.getParameter("pincode");
		String contact=req.getParameter("contact");
		String email=req.getParameter("email");
		
		User s=new User();
		
		s.setName(name);
		s.setAddress(address);
		s.setPincode(pincode);
		s.setContact(contact);
		s.setEmail(email);
		
		try {
			int row=s.updateUser();
			RequestDispatcher rd=req.getRequestDispatcher("edit.jsp");
			if(row==1)
			{
				req.setAttribute("msg", "Successful");
			}
			else
			{
				req.setAttribute("msg", "Failed");
			}
			rd.forward(req, resp);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
