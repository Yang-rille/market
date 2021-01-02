package cn.smbms.pojo;

import java.util.Date;

public class Member {
	
	private Integer id;   //id
	private String memCode; //会员编码
	private String memName; //会员名称
	private String memDesc; //会员描述
	private String memPhone; //会员电话
	private String memAddress; //会员地址
	private Integer createdBy; //创建者
	private Date creationDate; //创建时间
	private Integer modifyBy; //更新者
	private Date modifyDate;//更新时间
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getMemCode() {
		return memCode;
	}
	public void setMemCode(String proCode) {
		this.memCode = proCode;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String proName) {
		this.memName = proName;
	}
	public String getMemDesc() {
		return memDesc;
	}
	public void setMemDesc(String proDesc) {
		this.memDesc = proDesc;
	}
	public String getMemPhone() {
		return memPhone;
	}
	public void setMemPhone(String proPhone) {
		this.memPhone = proPhone;
	}
	public String getMemAddress() {
		return memAddress;
	}
	public void setMemAddress(String memAddress) {
		this.memAddress = memAddress;
	}
	public Integer getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(Integer createdBy) {
		this.createdBy = createdBy;
	}
	public Date getCreationDate() {
		return creationDate;
	}
	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
	}
	public Integer getModifyBy() {
		return modifyBy;
	}
	public void setModifyBy(Integer modifyBy) {
		this.modifyBy = modifyBy;
	}
	public Date getModifyDate() {
		return modifyDate;
	}
	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}
	
	
}
