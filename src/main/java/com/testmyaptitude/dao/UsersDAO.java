
package com.testmyaptitude.dao;

import java.sql.*;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.testmyaptitude.pojo.user;

public class UsersDAO {
	static String url = "jdbc:mysql://mysql7002.site4now.net:3306/luq7bmtf_spatil";
	Connection con;
	public UsersDAO(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, "luq7bmtf_spatil", "root123");
			System.out.println("connection succesful");
			System.out.println("url changed to open shift");
		} catch (SQLException ex) {
			System.out.println("hello");
			Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
		} catch (ClassNotFoundException ex) {
			System.out.println("hiiiii");
			Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
	}
	PreparedStatement ps;
	ResultSet rs;

	public boolean check(String email) throws SQLException, ClassNotFoundException {
		ps = con.prepareStatement("select email from users where email=?");
		ps.setString(1, email);
		rs = ps.executeQuery();
		boolean res = rs.next();
		if (res) {
			System.out.println(rs.getString("email"));
		}
		System.out.println("res is" + res);

		return res;
	}
	
	public boolean resetreq(String email, String mobile) throws SQLException {

		System.out.println("hellodao");
		PreparedStatement ps = con.prepareStatement("select email,password from users where email=? and MOBILENO=?");
		System.out.println("after st");
		ps.setString(1, email);
		ps.setString(2, mobile);
		ResultSet rset = ps.executeQuery();
		if (rset.next()) {
			return true;
		}
		return false;
	}
	
	public int changepass(String email, String password) throws SQLException {
		System.out.println("hellodao");
		PreparedStatement ps = con.prepareStatement("UPDATE USERS SET PASSWORD =? WHERE email = ?");
		System.out.println("after st");
		ps.setString(1, password);
		ps.setString(2, email);
		int t = ps.executeUpdate();
		return t;
	}
	
	
	public void adduser(user us) throws SQLException {
		int year = Integer.parseInt(us.getYear());
		int mon = Integer.parseInt(us.getMonth());
		int day = Integer.parseInt(us.getDate());
		String dob = year + "-" + mon + "-" + day;
		String sql = "INSERT INTO USERS (EMAIL,PASSWORD,FNAME,LNAME,GENDER,DOB,MOBILENO) VALUES(?,?,?,?,?,'" + dob
				+ "',?)";
		ps = con.prepareStatement(sql);
		ps.setString(1, us.getEmail());
		ps.setString(2, us.getPassword());
		ps.setString(3, us.getFname());
		ps.setString(4, us.getLname());
		ps.setString(5, us.getGender());
		ps.setString(6, us.getMobileno());
		System.out.println("ready");
		ps.executeUpdate();
		System.out.println("done");
	}

	public boolean checkuser(String email, String pass) throws SQLException {

		System.out.println("hellodao");
		PreparedStatement ps = con.prepareStatement("select email,password from users where email=? and password=?");
		System.out.println("after st");
		ps.setString(1, email);
		ps.setString(2, pass);
		ResultSet rset = ps.executeQuery();
		if (rset.next()) {
			return true;
		}
		return false;
	}

	public user getUser(String email) {

		user user = new user();
		try {
			ps = con.prepareStatement("select * from users where email=?");
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			rs.next();
			user.setFname(rs.getString("FNAME"));
			user.setLname(rs.getString("LNAME"));
			user.setEmail(rs.getString("EMAIL"));
			user.setMobileno(rs.getString("MOBILENO"));
			System.out.println(user.getFname());

		} catch (SQLException e) {
			System.out.println("wtf");
			e.printStackTrace();
		}

		return user;
	}
public List getallusers(){
List<user>	users=new ArrayList();
try {
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("SELECT * FROM USERS");
	System.out.println("done sleected");
	while(rs.next()){
		user user=new user(rs.getInt(1),rs.getString(2),rs.getString(3),
				rs.getString(4),rs.getString(5),rs.getString(6),rs.getDate(7),rs.getString(8));
		users.add(user);
	}
} catch (SQLException e) {
	e.printStackTrace();
}	

return users;
 }
}
