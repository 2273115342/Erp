package com.erp.pojo;
/**
* @Description: TODO(用户的实体类)
* @author JS
* 2018年10月4日 上午11:25:31
 */
public class Employees {
	
	private Integer eId;  //用户id
	private Role role;  //角色
	private Department dept; //部门
	private String eName;  //用户姓名
	private String eIphone;  //用户电话
	private String eNote;   //备注
	private String eAccount;  //账号
	private String ePassword;  //密码

	public Integer geteId() {
		return eId;
	}

	public void seteId(Integer eId) {
		this.eId = eId;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public Department getDept() {
		return dept;
	}

	public void setDept(Department dept) {
		this.dept = dept;
	}

	public String geteName() {
		return eName;
	}

	public void seteName(String eName) {
		this.eName = eName;
	}

	public String geteIphone() {
		return eIphone;
	}

	public void seteIphone(String eIphone) {
		this.eIphone = eIphone;
	}

	public String geteNote() {
		return eNote;
	}

	public void seteNote(String eNote) {
		this.eNote = eNote;
	}

	public String geteAccount() {
		return eAccount;
	}

	public void seteAccount(String eAccount) {
		this.eAccount = eAccount;
	}

	public String getePassword() {
		return ePassword;
	}

	public void setePassword(String ePassword) {
		this.ePassword = ePassword;
	}

	@Override
	public String toString() {
		return "Employees{" +
				"eId=" + eId +
				", role=" + role +
				", dept=" + dept +
				", eName='" + eName + '\'' +
				", eIphone='" + eIphone + '\'' +
				", eNote='" + eNote + '\'' +
				", eAccount='" + eAccount + '\'' +
				", ePassword='" + ePassword + '\'' +
				'}';
	}
}
