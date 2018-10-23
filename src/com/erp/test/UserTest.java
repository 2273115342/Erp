package com.erp.test;

import com.erp.pojo.Department;
import com.erp.pojo.Role;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.erp.dao.UserDao;
import com.erp.pojo.Employees;

/**
* @Description: TODO(用户的测试类)
* @author JS
* 2018年10月4日 上午11:36:33
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class UserTest {
	
	@Autowired
	private UserDao userDao;
	
	@Test
	public void findByNameTest(){
		System.out.println(userDao.findByName("js"));
	}
	
	@Test
	public void saveUser(){
		Employees employees = new Employees();
		Role role = new Role();
		role.setRoleId(2);
		employees.setRole(role);
		Department department = new Department();
		department.setDeptId(2);
		employees.setDept(department);
		employees.seteIphone("12315665");
		employees.seteName("js");
		employees.seteNote("叫他js吧");
		employees.seteAccount("js");
		employees.setePassword("666");
		if(userDao.saveUser(employees)==1) System.out.println("增加成功！");
		else System.out.println("增加失败!");
	}

	@Test
	public void findByRole(){
		Employees employees = new Employees();
		Role role = new Role();
		role.setRoleId(2);
		employees.setRole(role);
		Department department = new Department();
		department.setDeptId(2);
		employees.setDept(department);
		employees.seteId(1);
		for(Employees e : userDao.findByUserRole(employees)){
			System.out.println("e = " + e);
		}
	}
}
