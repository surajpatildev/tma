package com.testmyaptitude.dao;
import java.sql.*;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.testmyaptitude.pojo.question;
public class QuantDAO {

	static String url = "jdbc:mysql://mysql7002.site4now.net:3306/luq7bmtf_spatil";
	Connection con;
	public QuantDAO(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, "luq7bmtf_spatil", "root123");
			System.out.println("connection succesful");
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

	public void addquestion(question q) throws SQLException {
		String sql = "INSERT INTO quant(DIRECTION,PASSAGE,QUESTION,OPTION_1, OPTION_2,OPTION_3,OPTION_4,ANSWER)"
				+ " VALUES(?,?,?,?,?,?,?,?)";
		ps = con.prepareStatement(sql);
		ps.setString(1, q.getDirection());
		ps.setString(2, q.getPassage());
		ps.setString(3, q.getQuestion());
		ps.setString(4, q.getOption_1());
		ps.setString(5, q.getOption_2());
		ps.setString(6, q.getOption_3());
		ps.setString(7, q.getOption_4());
		ps.setInt(8,q.getAnswer());
		System.out.println("ready");
		ps.executeUpdate();
		System.out.println("done");
	}

public List getallquestions(){
List<question>	ql=new ArrayList();
try {
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("SELECT * FROM QUANT");
	System.out.println("done sleected");
	while(rs.next()){
		question q=new question(rs.getInt(1),rs.getString(2),rs.getString(3),
				rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getInt(10));
		ql.add(q);
	}
} catch (SQLException e) {
	e.printStackTrace();
}	
Collections.shuffle(ql);
return ql;
 }



public question getaquestion(int i){
	question q=null;
try {
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("SELECT * FROM QUANT");
	System.out.println("done sleected");
	while(rs.next()){
		 q=new question(rs.getInt(1),rs.getString(2),rs.getString(3),
				rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getInt(10));
	}
} catch (SQLException e) {
	e.printStackTrace();
}	
return q;
 }
}


