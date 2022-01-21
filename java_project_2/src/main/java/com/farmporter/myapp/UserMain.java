package com.farmporter.myapp;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.farmporter.myapp.service.IUserService;

public class UserMain {
	public static void main(String[] args) {
		@SuppressWarnings("resource")
		AbstractApplicationContext context = 
				new GenericXmlApplicationContext("spring/application-config.xml");
		IUserService userService = context.getBean("userService", IUserService.class);
		
		 System.out.println(userService.getUserInfo("testid01")); 
		System.out.println(userService.getUserCount());
		System.out.println(userService.getUserList());
		System.out.println(userService.getUserCheck("testid01", "password1"));
	}
}
