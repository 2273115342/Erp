package com.erp.pojo;
/**
 * @Description: TODO(访问链接表)
 * @author JS
 * 2018年10月6日 上午8:58:04
 */
public class Accesslink {
	private Integer linkId;
	private String linkName;
	private String linkAddress;
	
	public Integer getLinkId() {
		return linkId;
	}
	public void setLinkId(Integer linkId) {
		this.linkId = linkId;
	}
	public String getLinkName() {
		return linkName;
	}
	public void setLinkName(String linkName) {
		this.linkName = linkName;
	}
	public String getLinkAddress() {
		return linkAddress;
	}
	public void setLinkAddress(String linkAddress) {
		this.linkAddress = linkAddress;
	}
	@Override
	public String toString() {
		return "Accesslink [linkId=" + linkId + ", linkName=" + linkName
				+ ", linkAddress=" + linkAddress + "]";
	}
}
