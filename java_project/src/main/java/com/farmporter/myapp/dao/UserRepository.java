package com.farmporter.myapp.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

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
	
	/* 회원가입 */
	@Override
	public void insertUser(UserVO user) {
		String sql = "insert into farm_user (user_id, name, password,"
				+ "birthdate, email"
				+ "values(?,?,?,sysdate,?)";
		jdbcTemplate.update(sql,
				user.getUserId(),
				user.getName(),
				user.getPassword(),
				user.getBirthDate(),
				user.getEmail());
	}
	
	/* 회원 정보 조회 (아이디로) */
	  @Override
	  public UserVO getUserInfo(String userid) { 
		  String sql = "select userid, name, password," 
				  		+	"birthdate, email from farm_user where userid=?"; 
	  return jdbcTemplate.queryForObject(sql, new UserMapper(), userid); 
	 }	
	  
	  /* 로그인 정보 일치 체크 */
	  @Override
	  public UserVO getUserCheck(String userid, String password) { 
		  String sql = "select userid, name, password, " 
			  		+	"birthdate, email from farm_user where userid=?"; 
	  return jdbcTemplate.queryForObject(sql, new UserMapper(), userid); 
	 }	  
	  
	  /* 회원 수 조회 */
	@Override
	  public int getUserCount() {
	String sql = "select count(*) from farm_user";
	return jdbcTemplate.queryForObject(sql, Integer.class);
	}
	
	/* 가입한 회원 리스트 조회 */
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
	
	/* 회원 정보 업데이트 */
	  @Override
	  public void updateUser(UserVO user) { String sql =
	  "update farm_user " +" set name=?, userid=?, email=?," +
	  "birthdate=?, password=?"; 
	  jdbcTemplate.update(sql,
	  user.getName(), user.getUserId(), user.getEmail(),
	  user.getBirthDate(), user.getPassword()); 
	  }

//	@Override 
//	public EmpVO getEmpInfo(int empid) {
//		String sql = "select employee_id, first_name, last_name,"
//				+ "email, phone_number, hire_date, job_id, salary,"
//				+ "commission_pct, manager_id, department_id from employees where employee_id=?";
//		return jdbcTemplate.queryForObject(sql, new EmpMapper(), empid);
//	}
//
//	@Override
//	public void updateEmp(EmpVO emp) {
//		String sql = "update employees "
//				+"set first_name=?, last_name=?, email=?,"
//				+ "phone_number=?, hire_date=?, job_id=?,"
//				+ "salary=?, commission_pct=?, manager_id=?,"
//				+ "department_id=? where employee_id=?";
//		jdbcTemplate.update(sql, emp.getFirstName(),
//				emp.getLastName(),
//				emp.getEmail(),
//				emp.getPhoneNumber(),
//				emp.getHireDate(),
//				emp.getJobId(),
//				emp.getSalary(),
//				emp.getCommissionPct(),
//				emp.getManagerId(),
//				emp.getDepartmentId(),
//				emp.getEmployeeId());
//	}
//
//	@Override
//	public void insertEmp(EmpVO emp) {
//		String sql = "insert into employees (employee_id, first_name, last_name, email,"
//				+ "phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)"
//				+ "values(?,?,?,?,?,sysdate,?,?,?,?,?)";
//		jdbcTemplate.update(sql, emp.getEmployeeId(),
//				emp.getFirstName(),
//				emp.getLastName(),
//				emp.getEmail(),
//				emp.getPhoneNumber(),
//				// emp.getHireDate(),
//				emp.getJobId(),
//				emp.getSalary(),
//				emp.getCommissionPct(),
//				emp.getManagerId(),
//				emp.getDepartmentId());
//	}
//
//	@Override
//	public void deleteJobHistory(int empid) {
//		String sql = "delete from job_history where employee_id=?";
//		jdbcTemplate.update(sql, empid);
//	}
//
//	@Override
//	public void deleteEmp(int empid, String email) {
//		String sql = "delete from employees where employee_id=? and email=?";
//		jdbcTemplate.update(sql, empid, email);
//	}
//
//	@Override
//	public List<Map<String, Object>> getAllDeptId() {
//		String sql = "select department_id as departmentId,"
//				+ " department_name as departmentName "
//				+ "from departments";
//		return jdbcTemplate.queryForList(sql);
//	}
//
//	@Override
//	public List<Map<String, Object>> getAllJobId() {
//		String sql = "select job_id as jobId, job_title as title from jobs";
//		return jdbcTemplate.queryForList(sql);
//	}
//
//	@Override
//	public List<Map<String, Object>> getAllManagerId() {
//		String sql = "select "
//				+ "d.manager_id as managerId, e.first_name as firstName "
//				+ "from departments d join employees e "
//				+ "on d.manager_id = e.employee_id "
//				+ "order by d.manager_id";
//		return jdbcTemplate.queryForList(sql);
//	}

}
