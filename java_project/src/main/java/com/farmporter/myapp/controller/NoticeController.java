package com.farmporter.myapp.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.farmporter.myapp.model.NoticeVO;
import com.farmporter.myapp.service.INoticeService;


@Controller
public class NoticeController{
	
	@Autowired
	INoticeService NoticeService;

	@RequestMapping(value= {"/notice"})
	public String notice(Model model) {
		List<NoticeVO> notice = NoticeService.getNoticeList();
		model.addAttribute("notice",notice);
		return "notice";
	}

	@RequestMapping(value= "/notice/{noticeNo}")
	public String getNoticeInfo(@PathVariable int noticeNo, Model model) {
		NoticeVO notice = NoticeService.getNoticeInfo(noticeNo);
		model.addAttribute("notice",notice);
		return "notice_page";
	}
	
}








