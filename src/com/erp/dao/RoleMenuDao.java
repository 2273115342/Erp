package com.erp.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

/**
* @Description: TODO(这里用一句话描述这个类的作用)
* @author JS
* 2018年10月13日 下午6:16:43
 */
@Repository
public interface RoleMenuDao {
	/**
	 * @Title: deleteRoleHavaMenu
	 * @Description: TODO(根据角色和菜单id 删除角色拥有的菜单)
	 * @param roleId 角色id
	 * @param menuIds 要删除的菜单id集合
	 * @return
	 */
	Boolean deleteRoleHavaMenu(@Param("roleId")Integer roleId,@Param("menuIds")ArrayList<Integer> menuIds);
	
	/**
	 * @Title: addRoleHavaMenu
	 * @Description: TODO(根据角色和菜单id 增加角色拥有的菜单)
	 * @param roleId  角色id
	 * @param menuIds  要增加的菜单id集合
	 * @return
	 */
	Integer addRoleHavaMenu(@Param("roleId")Integer roleId,@Param("menuIds")ArrayList<Integer> menuIds);
}
