package com.testmyaptitude.dao;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.testmyaptitude.Quant;
import com.testmyaptitude.pojo.question;
public class QuantDAO {

	static SessionFactory sf;
	static{
		
		 sf=new Configuration().configure().buildSessionFactory();		
	}
	
	public void addquestion(question q) throws SQLException {
		String sql = "INSERT INTO quant(DIRECTION,PASSAGE,QUESTION,OPTION_1, OPTION_2,OPTION_3,OPTION_4,ANSWER)"
				+ " VALUES(?,?,?,?,?,?,?,?)";
		
	}

public List<Quant> getallquestions(){
List<Quant>	ql=new ArrayList<Quant>();
Session session=sf.openSession();
	ql=session.createQuery("from com.testmyaptitude.Quant").getResultList();
Collections.shuffle(ql);
return ql;
 }



public Quant getaquestion(int i){
	Quant q=null;
	Session session=sf.openSession();
	q=session.get(Quant.class,i);
return q;
 }
}


