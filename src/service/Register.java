package service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Usercurd;
public class Register extends HttpServlet {

	public Register() {
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
		 	String error;
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			String repassword=request.getParameter("repassword");
			//if(password==repassword){
				System.out.println(email);
				System.out.println(password);
				System.out.println(repassword);
				Usercurd user=new Usercurd();
				user.add(email, password);
				response.sendRedirect("/PWL/index.jsp");
			//}
			//else{
				//request.setAttribute("error", "1");
				//request.getRequestDispatcher("index.jsp").forward(request, response);
			//}
	
	}
	public void init() throws ServletException {
		// Put your code here
	}

}
