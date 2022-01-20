package com.farmporter.myapp.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.farmporter.myapp.model.UserVO;
import com.farmporter.myapp.model.WpriceVO;
import com.farmporter.myapp.service.IUserService;
import com.farmporter.myapp.service.IWpriceService;


@Controller
public class WpriceController{
	
	@Autowired
	IWpriceService wpriceService;

	@RequestMapping(value= {"/world_price"})
	public String worldPrice(Model model) {
		List<WpriceVO> wPrice = wpriceService.getWorldPrice();
		model.addAttribute("wPrice", wPrice);
		return "world_price";}

	
}







