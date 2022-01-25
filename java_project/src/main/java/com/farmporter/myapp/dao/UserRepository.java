// UserRepository

package com.farmporter.myapp.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.farmporter.myapp.model.AuthInfo;
import com.farmporter.myapp.model.UserVO;


@Repository
public class UserRepository implements IUserRepository{
   
	
   @Autowired
   JdbcTemplate jdbcTemplate;
   
   private class UserMapper implements RowMapper<UserVO>{
      @Override
      public UserVO mapRow(ResultSet rs, int count) throws SQLException{
         UserVO user = new UserVO();
         user.setUserId(rs.getString("userid"));
         user.setName(rs.getString("name"));
         user.setPassword(rs.getString("password"));
         user.setBirthDate(rs.getDate("birthdate"));
         user.setEmail(rs.getString("email"));
         return user;
      }
   }
   
   private class UserMapperLogin implements RowMapper<UserVO>{
      @Override
      public UserVO mapRow(ResultSet rs, int count) throws SQLException{
         UserVO user = new UserVO();
         user.setUserId(rs.getString("userid"));
         user.setName(rs.getString("name"));
         user.setPassword(rs.getString("password"));
         user.setBirthDate(rs.getDate("birthdate"));
         user.setEmail(rs.getString("email"));
         return user;
      }
   }
   
   /* ȸ������ */
   @Override
   public void insertUser(UserVO user) {
      String sql = "insert into farm_user (user_id, name, password,"
            + "birthdate, email)"
            + "values(?,?,?,?,?)";
      jdbcTemplate.update(sql,
            user.getUserId(),
            user.getName(),
            user.getPassword(),
            user.getBirthDate(),
            user.getEmail());
   }
   
   /* ȸ�� ���� ��ȸ (���̵��) */
     @Override
     public UserVO getUserInfo(String userid) { 
        String sql = "select userid, name, password," 
                    +   "birthdate, email from farm_user where userid=?"; 
     return jdbcTemplate.queryForObject(sql, new UserMapper(), userid); 
    }   
     
     /* �α��� ���� ��ġ üũ */
     @Override
     public UserVO getUserCheck(String userid, String password) { 
        String sql = "select userid, name, password," 
                 +   "birthdate, email from farm_user where userid=?";  
     UserVO userVO =  jdbcTemplate.queryForObject(sql, new UserMapperLogin(), userid);
     return userVO;
    }     
     
     /* ȸ�� �� ��ȸ */
   @Override
     public int getUserCount() {
   String sql = "select count(*) from farm_user";
   return jdbcTemplate.queryForObject(sql, Integer.class);
   }
   
   /* ������ ȸ�� ����Ʈ ��ȸ */
   @Override
   public List<UserVO> getUserList() {
      String sql = "select * from farm_user";
      return jdbcTemplate.query(sql, new RowMapper<UserVO>() {
         @Override
         public UserVO mapRow(ResultSet rs, int count) throws SQLException{
            UserVO user = new UserVO();
            user.setUserId(rs.getString("userid"));
            user.setName(rs.getString("name"));
            user.setPassword(rs.getString("password"));
            user.setBirthDate(rs.getDate("birthdate"));
            user.setEmail(rs.getString("email"));
            return user;
         }
      });
   }
   
   /* ȸ�� ���� ������Ʈ */
     @Override
     public void updateUser(UserVO user) { String sql =
     "update farm_user " +" set name=?, userid=?, email=?," +
     "birthdate=?, password=?"; 
     jdbcTemplate.update(sql,
     user.getName(), user.getUserId(), user.getEmail(),
     user.getBirthDate(), user.getPassword()); 
     }


	@Override
	public AuthInfo authenticate(String userId, String password) {
		return new AuthInfo(userId, password);
	}


     

}