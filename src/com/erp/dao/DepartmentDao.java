package com.erp.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.erp.pojo.Department;
import com.erp.pojo.Paging;

/**
* @Description: TODO(部门的Dao)
* @author JS
* 2018年10月4日 上午11:21:01
 */
@Repository
public interface DepartmentDao {
	/**
	 * @Title: saveDepartment
	 * @Description: TODO(新增部门信息)
	 * @param department
	 * @return
	 */
	Integer saveDepartment(Department department);
	
	/**
	 * @Title: deleteDepartment
	 * @Description: TODO(根据部门id 删除部门信息)
	 * @param deptId
	 * @return
	 */
	Integer deleteDepartment(Integer deptId);
	
	/**
	 * @Title: findByDeptId
	 * @Description: TODO(根据部门id 查找部门信息)
	 * @param deptId
	 * @return 为了减少代码 所以此处返回list  取值的时直接get(0)
	 */
	List<Department> findByDeptId(Integer deptId);
	
	/**
	 * @Title: updateDepartment
	 * @Description: TODO(修改部门信息)
	 * @param department
	 * @return
	 */
	Integer updateDepartment(Department department);
	
	/**
	 * @Title: findAll
	 * @Description: TODO(分页查询部门信息)
	 * @param paging
	 * @return
	 */
	List<Department> findAll(Paging paging);

	/**
	 * 根据用户id查询部门信息
	 * @param userId
	 * @return
	 */
	Department findByUserId(Integer userId);
}
