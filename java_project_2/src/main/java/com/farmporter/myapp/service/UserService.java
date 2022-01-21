package com.farmporter.myapp.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.farmporter.myapp.dao.IUserRepository;
import com.farmporter.myapp.model.UserVO;

@Service
public class UserService implements IUserService {
	
	@Autowired
	IUserRepository userRepository;
	
	/* 회원가입 */
	@Override
	public void insertUser(UserVO user) {
		userRepository.insertUser(user);
	}	
	/* 회원 정보 조회 (아이디로) */
	@Override
	 public UserVO getUserInfo(String userid) { 
		return userRepository.getUserInfo(userid);
	}
	
	/* 로그인 정보 일치 체크 */
	@Override
	public UserVO getUserCheck(String userid, String password) {
		return userRepository.getUserCheck(userid, password);
	}
	
	/* 회원 수 조회 */
	@Override
	public int getUserCount() {
		return userRepository.getUserCount();
	}
	
	/* 가입한 회원 리스트 조회 */
	@Override
	public List<UserVO> getUserList() {
		return userRepository.getUserList();
	}
	
	/* 회원 정보 업데이트 */
	@Override
	public void updateUser(UserVO user) {
		userRepository.updateUser(user);
	}
		
}
