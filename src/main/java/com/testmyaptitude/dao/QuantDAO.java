package com.testmyaptitude.dao;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.testmyaptitude.SessionFactoryHelper;
import com.testmyaptitude.pojo.Quant;
public class QuantDAO {

	
	public void addquestion(Quant q) throws SQLException {
		String sql = "INSERT INTO quant(DIRECTION,PASSAGE,QUESTION,OPTION_1, OPTION_2,OPTION_3,OPTION_4,ANSWER)"
				+ " VALUES(?,?,?,?,?,?,?,?)";
		
	}

public List<Quant> getallquestions(){
List<Quant>	ql=new ArrayList<Quant>();
Session session=SessionFactoryHelper.getSessionFactory().openSession();
	ql=session.createQuery("from com.testmyaptitude.pojo.Quant").getResultList();
Collections.shuffle(ql);
return ql;
 }



public Quant getaquestion(int i){
	Quant q=null;
	Session session=SessionFactoryHelper.getSessionFactory().openSession();
	q=session.get(Quant.class,i);
return q;
 }
}


