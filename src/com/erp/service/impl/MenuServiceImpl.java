package com.erp.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.erp.dao.MenuDao;
import com.erp.pojo.Menu;
import com.erp.service.MenuService;

/**
* @Description: TODO(菜单的ServiceImpl)
* @author JS
* 2018年10月4日 上午11:36:06
 */
@Service
public class MenuServiceImpl implements MenuService {

	@Autowired
	private MenuDao menuDao;

	@Override
	public List<Menu> getUserMenu(Integer userId) {
		return menuDao.findByUserId(userId);
	}

	@Override
	public List<Menu> getRoleHaveMenu(Integer roleId) {
		List<Menu> allMenu = menuDao.findAll();
		List<Menu> haveMenu = menuDao.findByRoleId(roleId);
		List<Menu> newMenu = new ArrayList<Menu>();
		for (int i = 0; i < allMenu.size(); i++) {  //设置好一级菜单
			Menu menu = allMenu.get(i);
			if(menu.getParentId()==null){
				for (int j = 0; j < haveMenu.size(); j++) {
					if(haveMenu.get(j).getMenuId()==menu.getMenuId()){ //判断是否拥有这个一级菜单
						menu.setIsHave(1);
					}
				}
				newMenu.add(menu); //添加所有的一级菜单到新的菜单列表
			}
		}
		
		for (int i = 0; i < newMenu.size(); i++) {  //为首级菜单添加子菜单
			Menu menu = newMenu.get(i);
			menu.setChildMenu(getChildMenu(menu.getMenuId(), allMenu, haveMenu));
		}
		return newMenu;
	}
	
	
	/**
	 * @Title: getChildMenu 
	 * @Description: TODO(获得子菜单)
	 * @param id  要获得子菜单 的菜单id
	 * @param allMenus 所有菜单
	 * @param haveMenus 拥有的菜单
	 * @return
	 */
	public List<Menu> getChildMenu(Integer id, List<Menu> allMenus,List<Menu> haveMenus){
		// 子菜单
	    List<Menu> childList = new ArrayList<Menu>();
		for(Menu menu : allMenus){ //遍历所有菜单
			if(menu.getParentId() == id){ //找到传过来id的所有子菜单
				for (int i = 0; i < haveMenus.size(); i++) {  //遍历子菜单
					if(menu.getMenuId()==haveMenus.get(i).getMenuId()){ //判断用户是否拥有此菜单
						menu.setIsHave(1);  //把是否拥有 设为拥有
					}
				}
                childList.add(menu);  //添加到子菜单
			}
		}
		return childList;
	}
}
