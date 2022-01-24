package com.farmporter.myapp.model;

import java.sql.Date;

public class NoticeVO {
	int noticeNo;
	String title;
	String content;
	String UserId_2;
	Date regDate;
	Date updateDate;
	
	public int getNoticeNo() {
		return noticeNo;
	}
	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	public String getUserId_2() {
		return UserId_2;
	}
	public void setUserId_2(String UserId_2) {
		this.UserId_2 = UserId_2;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	@Override
	public String toString() {
		return "NoticeVO [noticeNo=" + noticeNo + ", title=" + title + ", content=" + content + ", UserId_2=" + UserId_2
				+ ", regDate=" + regDate + ", updateDate=" + updateDate + "]";
	}
	
	

}