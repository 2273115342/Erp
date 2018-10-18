package com.erp.pojo;
/**
* @Description: TODO(部门的实体类)
* @author JS
* 2018年10月4日 上午11:25:14
 */
public class Department {
	private Integer deptId;  //部门id
	private String deptName;  //部门名称
	
	public Integer getDeptId() {
		return deptId;
	}
	public void setDeptId(Integer deptId) {
		this.deptId = deptId;
	}
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	@Override
	public String toString() {
		return "Department [deptId=" + deptId + ", deptName=" + deptName + "]";
	}
}
