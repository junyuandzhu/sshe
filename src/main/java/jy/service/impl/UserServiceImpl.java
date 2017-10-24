package jy.service.impl;

import java.io.Serializable;

import jy.dao.UserDaoI;
import jy.model.Tuser;
import jy.service.UserServiceI;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserServiceI {
	/**
	 * Logger for this class
	 */
	private static final Logger logger = Logger.getLogger(UserServiceImpl.class);

	private UserDaoI userDao;
		
	
	public UserDaoI getUserDao() {
		return userDao;
	}
	@Autowired
	public void setUserDao(UserDaoI userDao) {
		this.userDao = userDao;
	}



	public void test() {
		// TODO Auto-generated method stub
		logger.info("测试测试");
	}
	@Override
	public Serializable save(Tuser t) {
		
		return userDao.save(t);
	}

}
