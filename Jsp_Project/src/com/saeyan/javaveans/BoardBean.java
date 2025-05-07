package com.saeyan.javaveans;

public class BoardBean {
	private String tname;
	private String tpass;
	private String temail;
	private String ttitle;
	private String tcontent;
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getTpass() {
		return tpass;
	}
	public void setTpass(String tpass) {
		this.tpass = tpass;
	}
	public String getTemail() {
		return temail;
	}
	public void setTemail(String temail) {
		this.temail = temail;
	}
	public String getTtitle() {
		return ttitle;
	}
	public void setTtitle(String ttitle) {
		this.ttitle = ttitle;
	}
	public String getTcontent() {
		return tcontent;
	}
	public void setTcontent(String tcontent) {
		this.tcontent = tcontent;
	}
	@Override
	public String toString() {
		return "BoardBean [tname=" + tname + ", tpass=" + tpass + ", temail=" + temail + ", ttitle=" + ttitle
				+ ", tcontent=" + tcontent + "]";
	}
	
}