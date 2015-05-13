package service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Usercurd;
import bean.userbean;

public class Reviseuser extends HttpServlet {
	public Reviseuser() {
		super();
	}
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {	
			doPost(request,response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			HttpSession session = request.getSession();
			String email=(String)session.getAttribute("username");
			String username=request.getParameter("name");
			String qq=request.getParameter("qq");
			String phone=request.getParameter("phone");
			System.out.println(email);
			Usercurd curd=new Usercurd();
			curd.reviseuser(email,phone,qq,username);
			response.sendRedirect("/index.jsp");
	}
	public void init() throws ServletException {
		// Put your code here
	}

}
