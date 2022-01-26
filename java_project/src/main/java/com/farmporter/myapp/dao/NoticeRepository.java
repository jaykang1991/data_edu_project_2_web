package com.farmporter.myapp.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.farmporter.myapp.model.NoticeVO;

@Repository
public class NoticeRepository implements INoticeRepository {
	
	@Autowired
	JdbcTemplate jdbcTemplate;

	private class NoticeMapper implements RowMapper<NoticeVO>{
		@Override
		public NoticeVO mapRow(ResultSet rs, int count) throws SQLException{
			NoticeVO notice = new NoticeVO();
			notice.setTitle(rs.getString("title"));
			notice.setContent(rs.getString("content"));
			notice.setUserId_2(rs.getString("userid_2"));
			notice.setNoticeNo(rs.getInt("noticeNo"));
			notice.setUpdateDate(rs.getDate("updateDate"));
			notice.setRegDate(rs.getDate("regDate"));
			notice.setWriter(rs.getString("writer"));
			return notice;
		}
	}
	
	@Override
	public List<NoticeVO> getNoticeList() {
		String sql = "select * from notice";
		return jdbcTemplate.query(sql, new RowMapper<NoticeVO>() {
			@Override
			public NoticeVO mapRow(ResultSet rs, int count) throws SQLException{
				NoticeVO notice = new NoticeVO();
				notice.setNoticeNo(rs.getInt("NOTICENO"));
				notice.setTitle(rs.getString("TITLE"));
				notice.setContent(rs.getString("CONTENT"));
				notice.setUserId_2(rs.getString("USERID_2"));
				notice.setWriter(rs.getString("WRITER"));
				notice.setRegDate(rs.getDate("REGDATE"));
				notice.setUpdateDate(rs.getDate("UPDATEDATE"));
				return notice;
			}
		});
	}
	@Override
	   public NoticeVO getNoticeInfo(int noticeNo) {
	      String sql = "select noticeNo, title, content, userid_2, regdate, updatedate, writer from notice where noticeNo=?";
	      return jdbcTemplate.queryForObject(sql, new NoticeMapper(), noticeNo);
	   }
	
	@Override
	public void insertNotice(NoticeVO notice) {
		String sql = "insert into notice (title, content, noticeNo, writer)"
					+ " values(?,?,?,?)";
		jdbcTemplate.update(sql, 
				notice.getTitle(),
				notice.getContent(),
				notice.getNoticeNo(),
				notice.getWriter());
	}
		

}