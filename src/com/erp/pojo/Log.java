package com.erp.pojo;

import java.util.Date;

/**
* @Description: TODO(日志的实体类)
* @author JS
* 2018年10月4日 上午11:27:41
 */
public class Log {
	private Wgoods wgoods;  //仓库商品库存
	private Employees employees; //用户
	private Supplier supplier; //供应商
	private Goods goods;  //商品
	private String type;  //操作类型
	private String details;  //操作详情
	private Date time;  //操作时间
	
	public Wgoods getWgoods() {
		return wgoods;
	}
	public void setWgoods(Wgoods wgoods) {
		this.wgoods = wgoods;
	}
	public Employees getEmployees() {
		return employees;
	}
	public void setEmployees(Employees employees) {
		this.employees = employees;
	}
	public Supplier getSupplier() {
		return supplier;
	}
	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	@Override
	public String toString() {
		return "Log [wgoods=" + wgoods + ", employees=" + employees
				+ ", supplier=" + supplier + ", goods=" + goods + ", type="
				+ type + ", details=" + details + ", time=" + time + "]";
	}
}
