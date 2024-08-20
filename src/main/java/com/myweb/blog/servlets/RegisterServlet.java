package com.myweb.blog.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import com.myweb.blog.dao.UserDAO;
import com.myweb.blog.entities.Users;
import com.myweb.blog.helper.ConnectionProvider;

/**
 * Servlet implementation class RegisterServlet
 */
// img or multi data Config in data base
@MultipartConfig
public class RegisterServlet extends HttpServlet {
	    
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        
		//fetch all form data
        String check=request.getParameter("check");
       // out.println("<h1>"+check+"</h1>");
        if(check ==null) {
        	out.println("<h1>please check the box</h1>");
        }else { 	
        // baki ka data yha nikalna hai
        	
        	String name=request.getParameter("User_Name");
        	String email=request.getParameter("User_Email");
        	String password=request.getParameter("User_Password");
        	String gender=request.getParameter("gender");
        	String about=request.getParameter("about");
        	
			/* To output in page
			 * out.println("<h1>"+name+"</h1>"); out.println("<h1>"+email+"</h1>");
			 * out.println("<h1>"+password+"</h1>"); out.println("<h1>"+gender+"</h1>");
			 * out.println("<h1>"+about+"</h1>");
			 * out.println("<h1>"+check+" ---> TO out.prontln method</h1>");
			 */
        	
        	//create user object and set all data to that object
        	Users user=new Users(name,email,password,gender,about);
        	
        	//create a user DAO object...   // dao is all-readay have connection or insertion code.
        	UserDAO dao=new UserDAO(ConnectionProvider.getConnection());
        	
        	if(dao.saveUser(user)) {
        		// save....
        		out.println("Registered successfuly...");
        	}else {
        		out.println("Something went wrong try again...");
           
        	}
        	
        }
	
	}

}
