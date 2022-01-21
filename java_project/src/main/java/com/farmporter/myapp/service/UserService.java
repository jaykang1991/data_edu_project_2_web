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
	/* ȸ������ */
	@Override
	public void insertUser(UserVO user) {
		userRepository.insertUser(user);
	}	
	/* ȸ�� ���� ��ȸ (���̵��) */
	@Override
	 public UserVO getUserInfo(String userid) { 
		return userRepository.getUserInfo(userid);
	}
	
	/* �α��� ���� ��ġ üũ */
	@Override
	public UserVO getUserCheck(String userid, String password) {
		return userRepository.getUserCheck(userid, password);
	}
	
	/* ȸ�� �� ��ȸ */
	@Override
	public int getUserCount() {
		return userRepository.getUserCount();
	}
	
	/* ������ ȸ�� ����Ʈ ��ȸ */
	@Override
	public List<UserVO> getUserList() {
		return userRepository.getUserList();
	}
	
	/* ȸ�� ���� ������Ʈ */
	@Override
	public void updateUser(UserVO user) {
		userRepository.updateUser(user);
	}
}
