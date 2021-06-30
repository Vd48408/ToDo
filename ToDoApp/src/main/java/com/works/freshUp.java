package com.works;

import java.util.Date;

public class freshUp {
	
	private String yname;
    private  Date time;
	public freshUp() {
		super();
		// TODO Auto-generated constructor stub
	}
	public freshUp(String yname, Date time) {
		super();
		this.yname = yname;
		this.time = time;
	}
	public String getYname() {
		return yname;
	}
	public void setYname(String yname) {
		this.yname = yname;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return this.getYname()+":"+this.getTime();
	}
    
    
  
    
}
