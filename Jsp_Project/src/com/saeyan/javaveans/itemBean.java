package com.saeyan.javaveans;

public class itemBean {
	private String iname;
	private int iprice;
	private String idescription;
	public String getIname() {
		return iname;
	}
	public void setIname(String iname) {
		this.iname = iname;
	}
	public int getIprice() {
		return iprice;
	}
	public void setIprice(int iprice) {
		this.iprice = iprice;
	}
	public String getIdescription() {
		return idescription;
	}
	public void setIdescription(String idescription) {
		this.idescription = idescription;
	}
	@Override
	public String toString() {
		return "itemBean [iname=" + iname + ", iprice=" + iprice + ", idescription=" + idescription + "]";
	}
}
