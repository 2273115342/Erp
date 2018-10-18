package com.erp.pojo;

/**
* @Description: TODO(商品的实体类)
* @author JS
* 2018年10月4日 上午11:27:20
 */
public class Goods {
	private Integer goodsId;  //商品id
	private Supplier suppliers;  //供应商
	private String goodsName;  //商品名称
	private Integer goodsTop;  //最大库存
	private Integer goodsFloor; //最小库存
	private Integer goodsPrice; //商品单价
	private Integer goodsCost;  //商品成本
	private String goodsNote;  //备注
	
	public Integer getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(Integer goodsId) {
		this.goodsId = goodsId;
	}
	public Supplier getSuppliers() {
		return suppliers;
	}
	public void setSuppliers(Supplier suppliers) {
		this.suppliers = suppliers;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public Integer getGoodsTop() {
		return goodsTop;
	}
	public void setGoodsTop(Integer goodsTop) {
		this.goodsTop = goodsTop;
	}
	public Integer getGoodsFloor() {
		return goodsFloor;
	}
	public void setGoodsFloor(Integer goodsFloor) {
		this.goodsFloor = goodsFloor;
	}
	public Integer getGoodsPrice() {
		return goodsPrice;
	}
	public void setGoodsPrice(Integer goodsPrice) {
		this.goodsPrice = goodsPrice;
	}
	public Integer getGoodsCost() {
		return goodsCost;
	}
	public void setGoodsCost(Integer goodsCost) {
		this.goodsCost = goodsCost;
	}
	public String getGoodsNote() {
		return goodsNote;
	}
	public void setGoodsNote(String goodsNote) {
		this.goodsNote = goodsNote;
	}
}
