package com.farmporter.myapp.dao;

import java.util.List;
import java.util.Map;

import com.farmporter.myapp.model.UserVO;


public interface IUserRepository {
	/* 회원가입 */
	void insertUser(UserVO user);
	
	/* 회원 정보 조회 (아이디로)*/
	UserVO getUserInfo(String userid);
	
	/* 로그인 정보 일치 체크 */
	UserVO getUserCheck(String userid, String password);
	
	/* 회원 수 조회 */
	int getUserCount();	
	
	/* 가입한 회원 리스트 조회 */
	List<UserVO> getUserList();
	
	/* 회원 정보 업데이트 */
	void updateUser(UserVO user);

	

	}
