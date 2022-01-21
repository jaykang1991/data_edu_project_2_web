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
public class UserController{
	
	@Autowired
	IUserService userService;
	
	@RequestMapping(value= {"/"})
	public String mainPage(Model model) {return "main_page";}
	
	@RequestMapping(value= {"/farm_sites"})
	public String farmSites(Model model) {return "farm_sites";}

	@RequestMapping(value= {"/intro"})
	public String intro(Model model) {return "intro";}
	
	@RequestMapping(value= {"/profit_crop"})
	public String profitCrop(Model model) {return "profit_crop";}
	
	@RequestMapping(value= {"/profit_fruit"})
	public String profitFruit(Model model) {return "profit_fruit";}
	
	@RequestMapping(value= {"/profit_vegi_fac"})
	public String profitVegiFac(Model model) {return "profit_vegi_fac";}
	
	@RequestMapping(value= {"/profit_vegi_wild"})
	public String profitVegiWild(Model model) {return "profit_vegi_wild";}
	
	@RequestMapping(value= {"/predict"})
	public String predict(Model model) {return "predict";}
	
    @RequestMapping(value= {"/cost_comparison"})
    public String costComparison(Model model) {return "cost_comparison";}
    
    @RequestMapping(value= {"/farmer_profit"})
    public String farmerProfit(Model model) {return "farmer_profit";}
    
    @RequestMapping(value= {"/gov_land_cost"})
    public String govLandCost(Model model) {return "gov_land_cost";}
    
    @RequestMapping(value= {"/loan_settle_cost"})
    public String loanSettleCost(Model model) {return "loan_settle_cost";}
    
    @RequestMapping(value= {"/notice"})
    public String notice(Model model) {return "notice";}
    
    @RequestMapping(value= {"/notice_page"})
    public String noticePage(Model model) {return "notice_page";}
	
	@RequestMapping(value= {"/login"})
	public String logIn(Model model) {
		return "login";
	}
	
	@RequestMapping(value= {"/my_page"})
	public String myPage(Model model) {
		return "my_page";
	}
	
	@RequestMapping(value= {"/register"})
	public String register(Model model) {
		return "register";
	}
	
	@RequestMapping(value= {"/agreement"})
	public String agreement(Model model) {
		return "agreement";
	}

	/* ·Î±×ÀÎ */
    @RequestMapping(value="/loginCheck", method=RequestMethod.POST)
    public String loginCheck(@PathVariable String userid, String password, Model model){
      UserVO user = userService.getUserCheck(userid, password);
    	if(userid == user.getUserId() && password == user.getPassword() ) {    		
    		return "/myapp/my_page";   
       }
        return "/myapp/my_page";
    }
	
	
/*	@ExceptionHandler({RuntimeException.class})
	public ModelAndView runtimeException(HttpServletRequest request, Exception ex) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("url", request.getRequestURI());
		mav.addObject("exception", ex);
		mav.setViewName("error/runtime");
		return mav;
	}
*/
	
	
	
		
	
	
}








