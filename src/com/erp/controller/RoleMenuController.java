package com.erp.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.erp.pojo.Menu;
import com.erp.service.MenuService;
import com.erp.service.RoleMenuService;

/**
* @Description: TODO(用户的Controller)
* @author JS
* 2018年10月4日 上午11:20:17
 */
@Controller
@RequestMapping("/roleMenu")
public class RoleMenuController {
	
	@Autowired
	private MenuService menuService;
	@Autowired
	private RoleMenuService roleMenuService;
	
	@RequestMapping("/findByRoleId")
	public String queryAll(Integer roleId,Integer type,ModelMap modelMap){
		List<Menu> menus = menuService.getRoleHaveMenu(roleId);
		modelMap.put("menus", menus);
		if(type != null && type == 1){  //如果type不等于空并且等于1，那么就是从角色菜单查看跳转过来的
			modelMap.put("message", 1);
		}else if(type != null && type == 0){
			modelMap.put("roleId", roleId);
			modelMap.put("message", 0);
		}
		return "RoleMenu/haveAllMenu"; //这个写自己的路径
	}
	
	@RequestMapping("/updateRoleMenu")
	public String updateRoleMenu(@RequestParam(value = "removeMenuIdList[]",required=false) ArrayList<Integer>removeMenuIdList,
			@RequestParam(value = "addMenuIdList[]",required=false) ArrayList<Integer>addMenuIdList,
			Integer roleId,ModelMap modelMap){
		//如果要删除的数组和角色id不等于空 则执行删除
		if(roleId != null && removeMenuIdList != null && removeMenuIdList.size() > 0){
			roleMenuService.deleteRoleHavaMenu(roleId, removeMenuIdList);
		}
		//如果要增加的数组和角色id不等于空 则执行增加
		if(roleId != null && addMenuIdList != null && addMenuIdList.size() > 0){
			roleMenuService.addRoleHavaMenu(roleId, addMenuIdList);
		}
		modelMap.put("roleId", roleId);
		modelMap.put("type", 0);
		return "redirect:findByRoleId";
	}
}
