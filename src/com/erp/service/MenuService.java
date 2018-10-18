package com.erp.service;

import java.util.List;





import com.erp.pojo.Menu;

/**
* @Description: TODO(菜单的Service)
* @author JS
* 2018年10月4日 上午11:34:31
 */
public interface MenuService {
	/**
	 * @Title: getUserMenu
	 * @Description: TODO(根据角色id查询用户菜单)
	 * @param userId
	 * @return
	 */
	List<Menu> getUserMenu(Integer userId);
	
	/**
	 * @Title: getRoleHaveMenu
	 * @Description: TODO(获得全部菜单，传入的角色拥有的菜单则isHave为1 为拥有为0)
	 * @param roleId 
	 * @return 
	 */
	List<Menu> getRoleHaveMenu(Integer roleId);
}
