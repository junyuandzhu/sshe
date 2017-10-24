package jy.dao.impl;

import java.io.Serializable;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import jy.dao.UserDaoI;
import jy.model.Tuser;

@Repository("userDao")
public class UserDaoImpl implements UserDaoI {
	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public Serializable save(Tuser t) {
		// TODO Auto-generated method stub
		return this.getSessionFactory().getCurrentSession().save(t);
	}

}
