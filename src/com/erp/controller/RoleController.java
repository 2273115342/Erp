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
		List<Role> roles = roleService.findAllRole();  //查询所有角色
		modelMap.put("roles", roles);
		if(type != null && type == 1){  //如果type不等于空并且等于1，那么就是从角色菜单查看跳转过来的
			return "RoleMenu/queryRoleMenu";
		}else if(type != null && type == 0){  //修改
			modelMap.put("message", 1);
			return "RoleMenu/queryRoleMenu";
		}
		return "Role/queryRole";
	}

	@RequestMapping("/add")
	public String add(Role role,Integer type,ModelMap modelMap){
		if(type != null && type.equals(1)){
			if(roleService.saveRole(role)==1) modelMap.put("message",1);
			else  modelMap.put("message",0);
		}
		return "Role/addRole";
	}

	@RequestMapping("/delete")
	public String delete(Integer roleId,Integer type,ModelMap  modelMap){
		if(type != null  && type.equals(1)) {
			roleService.deleteRole(roleId);
		}
		List<Role> roles = roleService.findAllRole();  //查询所有角色
		modelMap.put("roleList", roles);
		return "Role/deleteRole";
	}

	@RequestMapping("/update")
	public String update(Role role,Integer type,ModelMap  modelMap){
		if(type != null && type.equals(1)){
			System.out.println("role:"+role);
			roleService.updateRole(role);
		}
		List<Role> roles = roleService.findAllRole();  //查询所有角色
		modelMap.put("roleList", roles);
		return "Role/updateRole";
	}

	@RequestMapping("/findById")
	public String findById(Integer roleId,ModelMap  modelMap){
		modelMap.put("role",roleService.findById(roleId));
		modelMap.put("type",1);
		return "Role/addRole";
	}
}
