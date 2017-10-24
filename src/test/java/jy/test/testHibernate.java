package jy.test;

import java.util.Date;
import java.util.UUID;

import jy.model.Tuser;
import jy.service.UserServiceI;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class testHibernate {
	@Test
	public void test() {
		// TODO Auto-generated method stub
		ApplicationContext ac = new ClassPathXmlApplicationContext(new String[] { "classpath:spring.xml","classpath:spring-hibernate.xml" });
		UserServiceI userService =(UserServiceI) ac.getBean("userService");
		Tuser t =new Tuser();
		t.setId(UUID.randomUUID().toString());
		t.setName("陈俊宇");
		t.setPwd("123");
		t.setCreatedatetime(new Date());
		userService.save(t);
	}
}
