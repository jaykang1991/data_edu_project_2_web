package com.farmporter.myapp.dao;

import java.util.List;
import java.util.Map;

import com.farmporter.myapp.model.UserVO;


public interface IUserRepository {
	/* ȸ������ */
	void insertUser(UserVO user);
	
	/* ȸ�� ���� ��ȸ (���̵��)*/
	UserVO getUserInfo(String userid);
	
	/* �α��� ���� ��ġ üũ */
	UserVO getUserCheck(String userid, String password);
	
	/* ȸ�� �� ��ȸ */
	int getUserCount();	
	
	/* ������ ȸ�� ����Ʈ ��ȸ */
	List<UserVO> getUserList();
	
	/* ȸ�� ���� ������Ʈ */
	void updateUser(UserVO user);
	}
