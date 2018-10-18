package com.erp.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.erp.dao.DepartmentDao;
import com.erp.pojo.Department;
import com.erp.pojo.Paging;

/**
* @Description: TODO(供应商的测试类)
* @author JS
* 2018年10月4日 上午11:36:33
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class DepartnebtTest {
	
	@Autowired
	DepartmentDao departmentDao;
	
	@Test
	public void SaveTest(){
		Department department = new Department();
		department.setDeptName("测试部");
		if(departmentDao.saveDepartment(department)==1) System.out.println("新增成功！");
		else System.out.println("新增失败！");
	}
	
	
	@Test
	public void updateTest(){
		Department department = new Department();
		department.setDeptId(9);
		department.setDeptName("测试部");
		if(departmentDao.updateDepartment(department)==1) System.out.println("修改成功！");
		else System.out.println("修改失败！");
	}
	
	@Test
	public void findByIdTest(){
		System.out.println(departmentDao.findByDeptId(9).get(0));
	}
	
	@Test
	public void deleteTest(){
		if(departmentDao.deleteDepartment(11)==1){
			System.out.println("删除成功！");
		}
		else{
			System.out.println("删除失败！");
		}
	}
	
	@Test
	public void findAllTest(){
		System.out.println(departmentDao.findAll(new Paging(1, 3)));
	}
	
}
