package com.works;

import java.util.Date;

public class miscellaneous {

	
	private String name;
	
	private String work;
    private  Date time;
	public miscellaneous() {
		super();
		// TODO Auto-generated constructor stub
	}
	public miscellaneous(String name, String work, Date time) {
		super();
		this.name = name;
		this.work = work;
		this.time = time;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getWork() {
		return work;
	}
	public void setWork(String work) {
		this.work = work;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	@Override
	public String toString() {
	
		return this.getName()+":"+this.getWork()+":"+this.getTime();
	}
    
	
    
    
}

