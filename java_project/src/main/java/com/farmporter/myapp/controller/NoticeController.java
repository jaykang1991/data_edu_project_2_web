package com.farmporter.myapp.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.farmporter.myapp.model.NoticeVO;
import com.farmporter.myapp.model.WpriceVO;
import com.farmporter.myapp.service.INoticeService;
import com.farmporter.myapp.service.IWpriceService;


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
		NoticeVO noticeId = NoticeService.getNoticeInfo(noticeNo);
		model.addAttribute("noticeId",noticeId);
		return "notice";
	}
	
}








