package com.erp.service.impl;


import com.erp.pojo.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.erp.dao.MenuDao;
import com.erp.dao.UserDao;
import com.erp.pojo.Employees;
import com.erp.service.UserService;
import com.erp.utils.SpringMvcUtils;

/**
* @Description: TODO(供应商的ServiceImpl)
* @author JS
* 2018年10月4日 上午11:36:06
 */
@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;
	@Autowired
	private MenuDao menuDao;
	@Override
	public Employees findByName(String loginName) {
		return userDao.findByName(loginName);
	}

	@Override
	public Integer loginCheck(String loginName,String password) {
		Employees employees = this.findByName(loginName);
		if(employees!=null && employees.geteAccount().equals(loginName) && employees.getePassword().equals(password)){
			//保存用户
			SpringMvcUtils.getSession().setAttribute("loginUser", employees);
			//保存用户拥有的访问链接
			SpringMvcUtils.getSession().setAttribute("accesslink", menuDao.getHaveAccessLinks(employees.geteId()));
			return 1;
		}else{
			return 0;
		}
	}

	@Override
	public Integer saveUser(Employees employees) {
		Role role = new Role();
		role.setRoleId(4);  //注册的用户默认为普通用户
		employees.setRole(role);
		if(userDao.saveUser(employees) == 1) return 1;
		else return 0;
	}
}
