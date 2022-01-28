//User Service

package com.farmporter.myapp.service;

import java.security.InvalidParameterException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.jdbc.UncategorizedSQLException;
import org.springframework.stereotype.Service;

import com.farmporter.myapp.dao.IUserRepository;
import com.farmporter.myapp.model.AuthInfo;
import com.farmporter.myapp.model.SignUpVO;
import com.farmporter.myapp.model.UserVO;

@Service
public class UserService implements IUserService {
   
   @Autowired
   IUserRepository userRepository;
   
   /* ȸ�� ���� ��ȸ (���̵��) */
   @Override
    public UserVO getUserInfo(String userid) { 
      return userRepository.getUserInfo(userid);
   }
   
   /* �α��� ���� ��ġ üũ */
   @Override
   public UserVO getUserCheck(String userid, String password) {
      UserVO userVo = new UserVO();
      try {
          userVo = userRepository.getUserCheck(userid, password);
      } catch( Exception e) {
         e.printStackTrace();
      }
      return userVo;
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
   
   /* ȸ������(SignUpVO) */
   @Override
   public void insertUser(SignUpVO signup) throws UncategorizedSQLException, DuplicateKeyException {
      // ��й�ȣ ��ȿ�� �˻� 
      if(!signup.getPassword().equals(signup.getPasswordCheck())) {
         throw new InvalidParameterException();
      }
      try {
         userRepository.insertUser(signup);
      } catch(Exception e) {
         e.printStackTrace();
      }
   }
   
   /* ȸ�� ���� ������Ʈ */
   @Override
   public void updateUser(UserVO user) {
      userRepository.updateUser(user);
   }

	@Override
	public AuthInfo authenticate(String userId, String password) {
		// TODO Auto-generated method stub
		return userRepository.authenticate(userId, password);
	}
   
   

      
}