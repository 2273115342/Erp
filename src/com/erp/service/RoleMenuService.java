package com.erp.service;

import java.util.ArrayList;

/**
* @Description: TODO(角色菜单的Service)
* @author JS
* 2018年10月4日 上午11:34:31
 */
public interface RoleMenuService {
	
	/**
	 * @Title: deleteRoleHavaMenu
	 * @Description: TODO(根据角色和菜单id 删除角色拥有的菜单)
	 * @param roleId
	 * @param menuIds
	 * @return
	 */
	Boolean deleteRoleHavaMenu(Integer roleId,ArrayList<Integer> menuIds);
	
	/**
	 * @Title: addRoleHavaMenu
	 * @Description: TODO(根据角色和菜单id 增加角色拥有的菜单)
	 * @param roleId  角色id
	 * @param menuIds  要增加的菜单id集合
	 * @return
	 */
	Boolean addRoleHavaMenu(Integer roleId,ArrayList<Integer> menuIds);
}
