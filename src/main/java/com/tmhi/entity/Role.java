package com.tmhi.entity;

import java.util.List;

/**
 * 角色实体类
 */
public class Role implements java.io.Serializable{
	private String id;				//id
	private String role_name;		//角色名称
	private String role_tag;		//角色标签
	private String role_status;	//角色状态
	private List<Resource> list;

	public List<Resource> getList() {
		return list;
	}
	public void setList(List<Resource> list) {
		this.list = list;
	}
	@Override
	public String toString() {
		return "Role [id=" + id + ", role_name=" + role_name + ", role_tag="
				+ role_tag + ", role_status=" + role_status + "]";
	}
	public Role() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Role(String id, String role_name, String role_tag, String role_status) {
		super();
		this.id = id;
		this.role_name = role_name;
		this.role_tag = role_tag;
		this.role_status = role_status;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getRole_name() {
		return role_name;
	}
	public void setRole_name(String role_name) {
		this.role_name = role_name;
	}
	public String getRole_tag() {
		return role_tag;
	}
	public void setRole_tag(String role_tag) {
		this.role_tag = role_tag;
	}
	public String getRole_status() {
		return role_status;
	}
	public void setRole_status(String role_status) {
		this.role_status = role_status;
	}
	
	
}
