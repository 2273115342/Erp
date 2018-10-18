package com.erp.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.erp.pojo.Accesslink;
import com.erp.pojo.Menu;

/**
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author JS
 * 2018年10月6日 上午8:56:33
 */
@Repository
public interface MenuDao {
	/**
	 * @Title: findByParentId
	 * @Description: TODO(根据菜单id 查询子菜单)
	 * @param parentId
	 * @return
	 */
	List<Menu> findChildMenu(Integer menuId);
	
	/**
	 * @Title: findAll
	 * @Description: TODO(查询所有菜单)
	 * @return
	 */
	List<Menu> findAll();
	
	/**
	 * @Title: findByUserId
	 * @Description: TODO(根据用户id 查询用户拥有的菜单)
	 * @param userId
	 * @return
	 */
	List<Menu> findByUserId(Integer userId);
	
	/**
	 * @Title: findByUserId
	 * @Description: TODO(根据角色id 查询用户拥有的菜单)
	 * @param userId
	 * @return
	 */
	List<Menu> findByRoleId(Integer roleId);
	
	/**
	 * @Title: getHaveAccessLinks
	 * @Description: TODO(根据用户id 查询用户拥有的访问路径)
	 * @param userId
	 * @return
	 */
	List<String> getHaveAccessLinks(Integer userId);
	
	
	/*-----------以下未实现-------------*/
	/**
	 * @Title: findAccesslinks
	 * @Description: TODO(根据菜单id 查询菜单拥有的访问路径)
	 * @param menuId
	 * @return
	 */
	List<Accesslink> findAccesslinks(Integer menuId);
}
