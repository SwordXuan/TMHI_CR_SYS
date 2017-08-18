package com.tmhi.entity;

import java.util.List;

/**
 * 资源实体类
 */
public class Resource implements java.io.Serializable{
	private String id;
	private String resource_name;			//资源名称
	private String resource_url;			//资源路径
	private String resource_type;			//资源种类
	private String resource_parent;		//资源父类
	private String resource_tag;			//资源标签
	private String resource_icon;			//资源图标
	private String resource_parent_path;	//父类路径
	
	private List<Resource> children;
	public List<Resource> getChildren() {
		return children;
	}
	public void setChildren(List<Resource> children) {
		this.children = children;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getResource_name() {
		return resource_name;
	}
	public void setResource_name(String resource_name) {
		this.resource_name = resource_name;
	}
	public String getResource_url() {
		return resource_url;
	}
	public void setResource_url(String resource_url) {
		this.resource_url = resource_url;
	}
	public String getResource_type() {
		return resource_type;
	}
	public void setResource_type(String resource_type) {
		this.resource_type = resource_type;
	}
	public String getResource_parent() {
		return resource_parent;
	}
	public void setResource_parent(String resource_parent) {
		this.resource_parent = resource_parent;
	}
	public String getResource_tag() {
		return resource_tag;
	}
	public void setResource_tag(String resource_tag) {
		this.resource_tag = resource_tag;
	}
	public String getResource_icon() {
		return resource_icon;
	}
	public void setResource_icon(String resource_icon) {
		this.resource_icon = resource_icon;
	}
	public String getResource_parent_path() {
		return resource_parent_path;
	}
	public void setResource_parent_path(String resource_parent_path) {
		this.resource_parent_path = resource_parent_path;
	}
	@Override
	public String toString() {
		return "Resource [id=" + id + ", resource_name=" + resource_name
				+ ", resource_url=" + resource_url + ", resource_type="
				+ resource_type + ", resource_parent=" + resource_parent
				+ ", resource_tag=" + resource_tag + ", resource_icon="
				+ resource_icon + ", resource_parent_path="
				+ resource_parent_path + "]";
	}
	public Resource(String id, String resource_name, String resource_url,
			String resource_type, String resource_parent, String resource_tag,
			String resource_icon, String resource_parent_path) {
		super();
		this.id = id;
		this.resource_name = resource_name;
		this.resource_url = resource_url;
		this.resource_type = resource_type;
		this.resource_parent = resource_parent;
		this.resource_tag = resource_tag;
		this.resource_icon = resource_icon;
		this.resource_parent_path = resource_parent_path;
	}
	public Resource() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
