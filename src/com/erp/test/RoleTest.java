package com.erp.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.erp.dao.RoleDao;
import com.erp.pojo.Role;

/**
* @Description: TODO(角色的测试类)
* @author JS
* 2018年10月4日 上午11:36:33
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class RoleTest {
	
	@Autowired
	private RoleDao roleDao;

	@Test
	public void findByUserId(){
		Role role = roleDao.findByUserId(1);
		System.out.println("role = " + role);
	}

	@Test
	public void addRole(){
		Role role = new Role();
		role.setRoleName("监管部");
		roleDao.saveRole(role);
	}

	@Test
	public void updateRole(){
		Role role = new Role();
		role.setRoleId(5);
		role.setRoleName("修改版监管部");
		roleDao.saveRole(role);
	}

	@Test
	public void findById(){
		System.out.println(roleDao.findById(4));
	}



	@Test
	public void deleteRole(){
		roleDao.deleteRole(9);
	}


	@Test
	public void findAllTest(){
		for(Role role : roleDao.findAll()){
			System.out.println(role);
		}
	}


}
