package com.erp.pojo;

import java.util.List;

/**
* @Description: TODO(角色表的实体类)
* @author JS
* 2018年10月4日 上午11:31:05
 */
public class Role {
	private Integer roleId;  //角色d
	private String roleName;  //角色名
	private List<Menu> menus; //拥有的菜单
	
	public Integer getRoleId() {
		return roleId;
	}
	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	public List<Menu> getMenus() {
		return menus;
	}
	public void setMenus(List<Menu> menus) {
		this.menus = menus;
	}
	@Override
	public String toString() {
		return "Role [roleId=" + roleId + ", roleName=" + roleName + ", menus="
				+ menus + "]";
	}
}
