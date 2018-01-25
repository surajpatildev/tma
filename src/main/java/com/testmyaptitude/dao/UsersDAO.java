
package com.testmyaptitude.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.testmyaptitude.SessionFactoryHelper;
import com.testmyaptitude.pojo.Users;

public class UsersDAO {
	public boolean check(String email) throws SQLException, ClassNotFoundException {
		Session session=SessionFactoryHelper.getSessionFactory().openSession();
		 Query<Users> q=session.createQuery("from com.testmyaptitude.pojo.Users where email=:email");
		 q.setParameter("email",email);
		Users user=(Users) q.uniqueResult();
		boolean res = user!=null;
		return res;
	}
	
	public boolean resetreq(String email, String mobile) throws SQLException {

		Session session=SessionFactoryHelper.getSessionFactory().openSession();
		Query<Users> q=session.createQuery("from com.testmyaptitude.pojo.Users u where u.email=:email and u.mobileno=:mobile");
		q.setParameter("email",email);
		q.setParameter("mobile",mobile);
		Users user=(Users)q.uniqueResult();
		
		if (user!=null) {
			return true;
		}
		return false;
	}

	public int changepass(String email, String password) throws SQLException {
		try {
			Session session=SessionFactoryHelper.getSessionFactory().openSession();
			Query<Users> q=session.createQuery("from com.testmyaptitude.pojo.Users u where u.email=:email");
			q.setParameter("email",email);		
			Users user=q.uniqueResult();
			session.beginTransaction();
			user.setPassword(password);
			session.update(user);
			session.getTransaction().commit();
			return 1;
		}catch(Exception e) {
			return 0;
		}
	}
	
	
	public void adduser(Users user) throws SQLException {
		Session session=SessionFactoryHelper.getSessionFactory().openSession();
		session.beginTransaction();
		session.save(user);
		session.getTransaction().commit();
	}

	public boolean checkuser(String email, String pass) throws SQLException {

		Session session=SessionFactoryHelper.getSessionFactory().openSession();
		Query<Users> q=session.createQuery("from com.testmyaptitude.pojo.Users u where u.email=:email and u.password=:pass");
		q.setParameter("email",email);
		q.setParameter("pass",pass);
		
		try {
			Users user=q.uniqueResult();
			if(user!=null) 
				return true;
			else
				return false;
		}catch(Exception e) {
			return false;
		}
		
	}

	public Users getUser(String email) {

		Users user;
			Session session=SessionFactoryHelper.getSessionFactory().openSession();
			Query<Users> q=session.createQuery("from com.testmyaptitude.pojo.Users u where u.email=:email");
			q.setParameter("email",email);		
			 user=q.uniqueResult();
			 return user;
	}

public List<Users> getallusers(){
	Session session=SessionFactoryHelper.getSessionFactory().openSession();
	List<Users>	users=(List<Users>)session.createQuery("from com.testmyaptitude.pojo.Users").getResultList();
return users;
 }
}
