package com.erp.service.impl;

import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.erp.dao.RoleMenuDao;
import com.erp.service.RoleMenuService;

/**
* @Description: TODO(菜单的ServiceImpl)
* @author JS
* 2018年10月4日 上午11:36:06
 */
@Service
public class RoleMenuServiceImpl implements RoleMenuService {

	@Autowired
	private RoleMenuDao roleMenuDao;

	@Override
	public Boolean deleteRoleHavaMenu(Integer roleId, ArrayList<Integer> menuIds) {
		if(roleId != null && menuIds != null && menuIds.size() >0){
			return roleMenuDao.deleteRoleHavaMenu(roleId, menuIds);
		}
		return false;
	}

	@Override
	public Boolean addRoleHavaMenu(Integer roleId, ArrayList<Integer> menuIds) {
		if(roleId != null && menuIds != null && menuIds.size() >0){
			if(roleMenuDao.addRoleHavaMenu(roleId, menuIds)>0){
				return true;
			}
		}
		return false;
	}

}
