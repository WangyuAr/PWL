package service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Usercurd;
public class Login extends HttpServlet {

	public Login() {
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
		Usercurd logindao=new Usercurd();
		HttpSession session = request.getSession();
		String quit=request.getParameter("quit");
		if(quit==null){
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		boolean flag=logindao.login(username, password);
		if(flag==true){
		session.setAttribute("username", username);
		response.sendRedirect("/PWL/index.jsp");
		}
		else{
			request.setAttribute("error", "1");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
}
		else{		
			session.removeAttribute("username");
			response.sendRedirect("/PWL/index.jsp");
		}
		
		
	}
	public void init() throws ServletException {
		// Put your code here
	}

}
