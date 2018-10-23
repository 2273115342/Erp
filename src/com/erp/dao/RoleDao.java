package com.erp.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.erp.pojo.Role;

/**
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author JS
 * 2018年10月6日 上午8:56:33
 */
@Repository
public interface RoleDao {

	/**
	 * 查询所有角色信息
	 * @return
	 */
	List<Role> findAll();

	/**
	 * 根据用户id查询所对应的角色信息
	 * @param userId
	 * @return
	 */
	Role findByUserId(Integer userId);

	/**
	 * 增加角色
	 * @param role
	 * @return
	 */
	int saveRole(Role role);

	/**
	 * 删除角色
	 * @param roleId
	 * @return
	 */
	int deleteRole(Integer roleId);

	/**
	 * 修改角色
	 * @param role
	 * @return
	 */
	int updateRole(Role role);

	/**
	 * 根据角色id查找角色信息
	 * @param roleId
	 * @return
	 */
	Role findById(Integer roleId);
}
