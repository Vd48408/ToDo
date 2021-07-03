package com.entities;

import java.util.Date;

public class food {
     private  String pname;
     private  String wfood; 
     private  Date time;
     
	public food() {
		super();
		
	}
	
	public food(String pname, String wfood, Date time) {
		super();
		this.pname = pname;
		this.wfood = wfood;
		this.time = time;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getWfood() {
		return wfood;
	}

	public void setWfood(String wfood) {
		this.wfood = wfood;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	@Override
	public String toString() {
		
		return this.getPname()+":"+this.getWfood()+":"+this.getTime();
	}
	
     
     
     
     
	
}