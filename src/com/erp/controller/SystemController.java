package com.erp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.erp.pojo.Menu;
import com.erp.service.MenuService;
import com.erp.service.UserService;
import com.erp.utils.SpringMvcUtils;
import com.erp.utils.SystemUtils;

/**
 * @Description: TODO(系统的Controller)
 * @author JS
 * 2018年10月4日 下午12:44:38
 */
@Controller
@RequestMapping("/")
public class SystemController {
	
	@Autowired
	private UserService userService;
	@Autowired
	private MenuService menuService;
	
	@RequestMapping("/home")
	public String home(Integer id,ModelMap modelMap){
		return "SystemPage/home";
	}
	
	@RequestMapping("/login")
	public String login(){
		return "SystemPage/login";
	}
	
	@RequestMapping("/top")
	public String top(Integer id,ModelMap modelMap){
		return "SystemPage/top";
	}

	@RequestMapping("/left")
	public String left(Integer id,ModelMap modelMap){
		List<Menu> menus = menuService.getUserMenu(SystemUtils.getLoginUser().geteId());
		modelMap.put("MenuList", menus);
		return "SystemPage/left";
	}
	
	@RequestMapping("/right")
	public String right(Integer id,ModelMap modelMap){
		return "SystemPage/right";
	}
	
	@RequestMapping(value="/loginCheck",method=RequestMethod.POST)
	public String loginCheck(String loginName,String password,ModelMap modelMap){
		if(userService.loginCheck(loginName, password)==1){
			return "redirect:home";
		}else{
			modelMap.put("loginName", loginName);
			modelMap.put("password", password);
			return "SystemPage/login";
		}
	}
	
	@RequestMapping(value="/quit")
	public String quit(){
		SpringMvcUtils.getSession().removeAttribute("loginUser");
		return "redirect:login";
	}
}
