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
import com.farmporter.myapp.service.IUserService;


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
	
	@RequestMapping(value= {"/world_price"})
	public String worldPrice(Model model) {return "world_price";}
	
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
	
    
    
	
	
	
	
	
//	@RequestMapping(value="/hr/count")
//	public String empCount(
//		@RequestParam(value="deptid", required=false, defaultValue="0") int deptid, Model model){
//			if(deptid==0) {
//				model.addAttribute("count", empService.getEmpCount());
//			} else {
//				model.addAttribute("count", empService.getEmpCount(50));
//			}
//				return "hr/count";
//		
//	}
//	
//	@RequestMapping(value= "/hr/{employeeId}")
//	public String getEmpInfo(@PathVariable int employeeId, Model model) {
//		EmpVO emp = empService.getEmpInfo(employeeId);
//		model.addAttribute("emp", emp);
//		return "hr/view";
//	}
//	
//	@RequestMapping(value= "/hr/insert", method=RequestMethod.GET)
//	public String insertEmp(Model model) {
//		model.addAttribute("deptList", empService.getAllDeptId());
//		model.addAttribute("jobList", empService.getAllJobId());
//		model.addAttribute("managerList", empService.getAllManagerId());
//		return "hr/insertform";
//	}
//
//	@RequestMapping(value= "/hr/insert", method=RequestMethod.POST)
//	public String insertEmp(EmpVO emp, Model model) {
//		empService.insertEmp(emp);
//		return "redirect:/hr";
//	}
//	
//	@RequestMapping(value= "/hr/update", method=RequestMethod.GET)
//	public String updateEmp(int empid, Model model) {
//		model.addAttribute("emp", empService.getEmpInfo(empid));
//		model.addAttribute("deptList", empService.getAllDeptId());
//		model.addAttribute("jobList", empService.getAllJobId());
//		model.addAttribute("managerList", empService.getAllManagerId());
//		return "hr/updateform";
//	}
//	
//	@RequestMapping(value= "/hr/update", method=RequestMethod.POST)
//	public String updateEmp(EmpVO emp, Model model) {
//		empService.updateEmp(emp);
//		return "redirect:/hr/" + emp.getEmployeeId();
//	}
//	
//	@RequestMapping(value= "/hr/delete", method=RequestMethod.GET)
//	public String deleteEmp(int empid, Model model) {
//		model.addAttribute("emp", empService.getEmpInfo(empid));
//		return "hr/deleteform";
//	}
//	
//	@RequestMapping(value= "/hr/delete", method=RequestMethod.POST)
//	public String deleteEmp(int empid, String email, Model model) {
//		empService.deleteEmp(empid, email);
//		return "redirect:/hr/";
//	}
	
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








