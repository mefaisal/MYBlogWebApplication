package com.myweb.blog.dao;

import java.sql.*;
import java.util.zip.ZipEntry;

import com.myweb.blog.entities.Users;

public class UserDAO {

	private Connection con;

	// Generated constructor
	public UserDAO(Connection con) {
		super();
		this.con = con;
	}

	// method to insert user in database :
	// Users user --> com.myweb.blog.entities ka hai
	public boolean saveUser(Users user) {

		boolean f = false;
		try {
			// users --> database;
			String quary = "insert into user(name,emaill,password,gender,about) values(?,?,?,?,?)";
			// set the data in question mark
			PreparedStatement pstmt = this.con.prepareStatement(quary);
			pstmt.setString(1, user.getName());
			pstmt.setString(2, user.getEmail());
			pstmt.setString(3, user.getPassword());
			pstmt.setString(4, user.getGender());
			pstmt.setString(5, user.getAbout());

			pstmt.executeUpdate();

			f = true;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	// get user by user_email and User_password
	public Users getUserByEmailAndPassword(String email, String password) {

		Users user = null;

		try {

			String query = "select * from user where emaill=? and password=?";

			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1, email);
			pstmt.setString(2, password);

			ResultSet set = pstmt.executeQuery();

			// expect one user

			if (set.next()) {
				user = new Users();

				// data from db
				String name = set.getString("name");
				// set to user object
				user.setName(name);

				user.setId(set.getInt("id"));
				user.setEmail(set.getString("emaill"));
				user.setPassword(set.getString("password"));
				user.setGender(set.getString("gender"));
				user.setAbout(set.getString("about"));
				user.setDateTime(set.getTimestamp("rdate"));
				user.setProfile(set.getString("profile"));

			}

		} catch (Exception e) {

			e.printStackTrace();
		}

		return user;
	}

	// Update user data in databases....
	public boolean updateUsers(Users user) {
		boolean f = false;
		try {
			String query = "update user set name=? ,emaill=?,password=?,gender=?,about=? ,profile=? where id=?";

			PreparedStatement p = con.prepareStatement(query);

			p.setString(1, user.getName());
			p.setString(2, user.getEmail());
			p.setString(3, user.getPassword());
			p.setString(4, user.getGender());
			p.setString(5, user.getAbout());
			p.setString(6, user.getProfile());
			p.setInt(7, user.getId());

			p.executeUpdate();

			f = true;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

}
