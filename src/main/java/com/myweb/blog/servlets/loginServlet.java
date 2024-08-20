package com.myweb.blog.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
// import java.io.PrintWriter;
import com.myweb.blog.dao.UserDAO;
import com.myweb.blog.entities.Message;
import com.myweb.blog.entities.Users;
import com.myweb.blog.helper.ConnectionProvider;

/**
 * Servlet implementation class loginServlet
 */
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		// PrintWriter out=response.getWriter();
		
		/* out.print("this is login servlet"); */
		
		// login...
		// fetch email or password from request	
		String userEmail=request.getParameter("email");
		String userPassword=request.getParameter("password");
		
		UserDAO dao=new UserDAO(ConnectionProvider.getConnection());
		
		//entites --> Users
		Users u=dao.getUserByEmailAndPassword(userEmail, userPassword);
		
		if(u == null) {
			//login...error
           // out.print("invalid Details..Try again");
			
			Message msg=new Message("Invalid details! try with another","error","alert-danger");
			
			HttpSession s=request.getSession();
			s.setAttribute("msg", msg);
			
			response.sendRedirect("login_page.jsp");
			
			
		}else {
			//....
			//login success
			
			HttpSession s=request.getSession();
			s.setAttribute("currentUser", u);
			response.sendRedirect("profile.jsp");
			//jab tak session me value rahega tb tk user(banda) login rahega
			
		}
		
		
	}

}
