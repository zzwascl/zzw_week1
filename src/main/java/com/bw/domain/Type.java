package com.bw.domain;

public class Type {
	
	private Integer id;
	private String name;
	public Type() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Type(Integer id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	@Override
	public String toString() {
		return "Type [id=" + id + ", name=" + name + "]";
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	

}
