package com.erp.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.erp.dao.RoleDao;
import com.erp.pojo.Role;
import com.erp.service.RoleService;

/**
* @Description: TODO(供应商的ServiceImpl)
* @author JS
* 2018年10月4日 上午11:36:06
 */
@Service
public class RoleServiceImpl implements RoleService {

	@Autowired
	private RoleDao roleDao;
	
	@Override
	public List<Role> findAllRole() {
		return roleDao.findAll();
	}
}
