package com.erp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.erp.pojo.Role;
import com.erp.service.RoleService;

/**
* @Description: TODO(用户的Controller)
* @author JS
* 2018年10月4日 上午11:20:17
 */
@Controller
@RequestMapping("/role")
public class RoleController {
	
	@Autowired
	private RoleService roleService;
	
	@RequestMapping("/query")
	public String queryAll(Integer type,ModelMap modelMap){
		List<Role> roles = roleService.findAllRole();
		modelMap.put("roles", roles);
		if(type != null && type == 1){  //如果type不等于空并且等于1，那么就是从角色菜单查看跳转过来的
			return "RoleMenu/queryRoleMenu";
		}else if(type != null && type == 0){  //修改
			modelMap.put("message", 1);
			return "RoleMenu/queryRoleMenu";
		}
		return "Role/xxx"; //这个写自己的路径
	}
}
