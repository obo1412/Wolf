package com.spring.wolf.model;

public class Area2 extends Area{
	private int id;
	private String name;
	private int area1Id;
	
	public int getArea1Id() {
		return area1Id;
	}
	public void setArea1Id(int area1Id) {
		this.area1Id = area1Id;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	@Override
	public String toString() {
		return "Area2 [id=" + id + ", name=" + name + ", area1Id=" + area1Id + "]";
	}	
}
