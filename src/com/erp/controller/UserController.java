package com.erp.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.erp.pojo.Employees;
import com.erp.service.UserService;

/**
* @Description: TODO(用户的Controller)
* @author JS
* 2018年10月4日 上午11:20:17
 */
@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/add")
	public String query(Employees employees,Integer type,ModelMap modelMap){
		if(type != null && type == 1){
			if(userService.saveUser(employees) == 1){
				modelMap.put("loginName", employees.geteAccount());
				modelMap.put("message", 1);
				return "SystemPage/login";
			}else {
				modelMap.put("message", 0);
			}
		}
		return "User/add";
	}
	
	@RequestMapping("/findByAccount")
	@ResponseBody
	public Integer findByAccount(@RequestBody Map<String,String> map){
		if(userService.findByName(map.get("account")) !=  null){
			return 1;
		}
		return 0;
	}
	

}
