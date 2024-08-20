package com.myweb.blog.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import com.myweb.blog.dao.UserDAO;
import com.myweb.blog.entities.Users;
import com.myweb.blog.helper.ConnectionProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

@MultipartConfig
@WebServlet("/EditServlet")
public class EditServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();

		// fetch all data
		String profieName = req.getParameter("profie_name");
		String profieEmail = req.getParameter("profie_email");
		String profiePassword = req.getParameter("profie_password");
		String profieStatus = req.getParameter("profie_status");

		Part part = req.getPart("profie_pic");
		String profileImageName = part.getSubmittedFileName();

		// get user from the session...
		HttpSession s = req.getSession();
		Users user = (Users) s.getAttribute("currentUser");

		user.setName(profieName);
		user.setEmail(profieEmail);
		user.setPassword(profiePassword);
		user.setAbout(profieStatus);

		user.setProfile(profileImageName);

		// update users data in database
		UserDAO userDao = new UserDAO(ConnectionProvider.getConnection());

		boolean ans = userDao.updateUsers(user);
		
		if (ans) {
			out.print("update user to db");
		} else {
			out.print("not updated..");

		}

	}

}
