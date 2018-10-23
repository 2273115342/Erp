package com.erp.service;

import java.util.List;
import com.erp.pojo.Role;

/**
* @Description: TODO(角色的Service)
* @author JS
* 2018年10月4日 上午11:34:31
 */
public interface RoleService {
	/**
	 * 查询所有角色信息
	 * @return
	 */
	List<Role> findAllRole();

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
