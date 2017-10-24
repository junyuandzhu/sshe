package jy.action;

import java.util.Date;
import java.util.UUID;

import jy.model.Tuser;
import jy.service.UserServiceI;

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

@ParentPackage("basePackage")
@Namespace("/")
@Action(value = "userAction")
public class UserAction {
	/**
	 * Logger for this class
	 */
	private static final Logger logger = Logger.getLogger(UserAction.class);

	private UserServiceI userService;

	public UserServiceI getUserService() {
		return userService;
	}

	@Autowired
	public void setUserService(UserServiceI userService) {
		this.userService = userService;
	}

	public void test() {
		logger.info("进入action..");
		ApplicationContext ac = WebApplicationContextUtils.getWebApplicationContext(ServletActionContext.getServletContext());
		UserServiceI userServise = (UserServiceI) ac.getBean("userService");
		userServise.test();
	}

	public void addUser() {
		Tuser t = new Tuser();
		t.setId(UUID.randomUUID().toString());
		t.setName("XXX");
		t.setPwd("123");
		t.setCreatedatetime(new Date());
		userService.save(t);
	}
}
