package com.erp.pojo;

import java.util.List;

/**
* @Description: TODO(供应商表的实体类)
* @author JS
* 2018年10月4日 上午11:31:46
 */
public class Supplier {
	private Integer supplierId;  //供应商id
	private String supplierName;  //单位名称
	private String supplierPeople;  //联系人
	private Integer supplierIphone; //联系人电话
	private String supplierBusiness;  //主营业务
	private String supplierAddress;  //地址
	private String supplierDelivery;  //是否送货
	private String supplierNote;  //备注
	private List<Goods> goods; //拥有的商品
	
	public Integer getSupplierId() {
		return supplierId;
	}
	public void setSupplierId(Integer supplierId) {
		this.supplierId = supplierId;
	}
	public String getSupplierName() {
		return supplierName;
	}
	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}
	public String getSupplierPeople() {
		return supplierPeople;
	}
	public void setSupplierPeople(String supplierPeople) {
		this.supplierPeople = supplierPeople;
	}
	public Integer getSupplierIphone() {
		return supplierIphone;
	}
	public void setSupplierIphone(Integer supplierIphone) {
		this.supplierIphone = supplierIphone;
	}
	public String getSupplierBusiness() {
		return supplierBusiness;
	}
	public void setSupplierBusiness(String supplierBusiness) {
		this.supplierBusiness = supplierBusiness;
	}
	public String getSupplierAddress() {
		return supplierAddress;
	}
	public void setSupplierAddress(String supplierAddress) {
		this.supplierAddress = supplierAddress;
	}
	public String getSupplierDelivery() {
		return supplierDelivery;
	}
	public void setSupplierDelivery(String supplierDelivery) {
		this.supplierDelivery = supplierDelivery;
	}
	public String getSupplierNote() {
		return supplierNote;
	}
	public void setSupplierNote(String supplierNote) {
		this.supplierNote = supplierNote;
	}
	public List<Goods> getGoods() {
		return goods;
	}
	public void setGoods(List<Goods> goods) {
		this.goods = goods;
	}
}
