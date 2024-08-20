package com.myweb.blog.servlets;

import java.io.IOException;
//import java.io.PrintWriter;

import com.myweb.blog.entities.Message;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class logoutServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/html");
	   // PrintWriter	out=resp.getWriter();
	    
	    HttpSession s=req.getSession();
	    
	    s.removeAttribute("currentUser");
	    
	    Message m= new Message("Logout Successfully","success","alert-success");
	    
	    s.setAttribute("msg", m);
	    
	    resp.sendRedirect("login_page.jsp");
	    
	    
		
	}
	
     
}
