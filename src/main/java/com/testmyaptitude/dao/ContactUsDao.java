package com.testmyaptitude.dao;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;

import com.testmyaptitude.SessionFactoryHelper;
import com.testmyaptitude.pojo.ContactUs;

public class ContactUsDao {
public String persistMessege(HttpServletRequest req) {
	
	ContactUs contact=new ContactUs();
	contact.setName(req.getParameter("fname")+" "+req.getParameter("lname"));
	contact.setEmail(req.getParameter("email"));
	contact.setMobileNo(Long.parseLong(req.getParameter("phone")));
	contact.setMessege(req.getParameter("messege"));
	try {
	Session session=SessionFactoryHelper.getSessionFactory().openSession();
	session.beginTransaction();
	session.save(contact);
	session.getTransaction().commit();
	return "SUCCESS";
	}catch(Exception e) {
		return "FAILURE";
	}
}
}
