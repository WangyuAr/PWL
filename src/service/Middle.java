package service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Middle extends HttpServlet {

	public Middle() {
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
			String type1=request.getParameter("type1");
			String type=request.getParameter("type");
			request.setAttribute("type1", type1);
			request.setAttribute("type",type);
			if(type==null){
				type="0";
			}
			if(type1==null){
				type1="0";
			}
			if(!type1.equals("0")||!type.equals("0"))
			{
				request.getRequestDispatcher("/subject1234.jsp").forward(request, response);
			}
	}
	public void init() throws ServletException {
		// Put your code here
	}

}
