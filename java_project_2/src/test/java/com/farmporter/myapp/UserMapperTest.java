package com.farmporter.myapp;

import org.junit.Test;

import com.farmporter.myapp.model.UserVO;

public class UserMapperTest {
	/* 로그인 쿼리 mapper 메서드 테스트 */
	@Test
	public void userLogin() throws Exception {

		UserVO user = new UserVO(); // UserVO 변수 선언 및 초기화

		/*
		 * 올바른 아이디 비번 입력경우 user.setUserId("testid1"); user.setPassword("1");
		 */
		/* 올바른 않은 아이디 비번 입력경우 */
		 user.setUserId("test1123");
		 user.setPassword("test1321321");

	}
}
