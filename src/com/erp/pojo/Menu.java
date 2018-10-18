package com.erp.pojo;

import java.util.List;


/**
* @Description: TODO(菜单的实体类)
* @author JS
* 2018年10月4日 上午11:28:45
 */
public class Menu {
	private Integer menuId;  //菜单id
	private String menuName;  //菜单名
	private String menuLink;  //菜单链接
	private Integer parentId;  //上级菜单id
	private String menuImg;  //菜单图片
	private Integer disOrder;  //菜单顺序
	private Integer isHave;  //是否拥有此菜单   0未拥有  1拥有
	private List<Accesslink> accesslinks;  //拥有的访问链接
	private List<Menu> childMenu; //子菜单
	
	public Integer getMenuId() {
		return menuId;
	}
	public void setMenuId(Integer menuId) {
		this.menuId = menuId;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public String getMenuLink() {
		return menuLink;
	}
	public void setMenuLink(String menuLink) {
		this.menuLink = menuLink;
	}
	public Integer getParentId() {
		return parentId;
	}
	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}
	public String getMenuImg() {
		return menuImg;
	}
	public void setMenuImg(String menuImg) {
		this.menuImg = menuImg;
	}
	public Integer getDisOrder() {
		return disOrder;
	}
	public void setDisOrder(Integer disOrder) {
		this.disOrder = disOrder;
	}
	public List<Accesslink> getAccesslinks() {
		return accesslinks;
	}
	public void setAccesslinks(List<Accesslink> accesslinks) {
		this.accesslinks = accesslinks;
	}
	public List<Menu> getChildMenu() {
		return childMenu;
	}
	public void setChildMenu(List<Menu> childMenu) {
		this.childMenu = childMenu;
	}
	public Integer getIsHave() {
		return isHave;
	}
	public void setIsHave(Integer isHave) {
		this.isHave = isHave;
	}
	@Override
	public String toString() {
		return "Menu [menuId=" + menuId + ", menuName=" + menuName
				+ ", menuLink=" + menuLink + ", parentId=" + parentId
				+ ", menuImg=" + menuImg + ", disOrder=" + disOrder
				+ ", isHave=" + isHave + ", accesslinks=" + accesslinks
				+ ", childMenu=" + childMenu + "]";
	}
}
