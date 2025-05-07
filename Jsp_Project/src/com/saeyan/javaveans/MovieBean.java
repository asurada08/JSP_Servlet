package com.saeyan.javaveans;

public class MovieBean {
	private String mtitle;
	private int mprice;
	private String mdirector;
	private String mactor;
	private String msynopsis;
	private String mgenre;
	
	public String getMtitle() {
		return mtitle;
	}
	public void setMtitle(String mtitle) {
		this.mtitle = mtitle;
	}
	public int getMprice() {
		return mprice;
	}
	public void setMprice(int mprice) {
		this.mprice = mprice;
	}
	public String getMdirector() {
		return mdirector;
	}
	public void setMdirector(String mdirector) {
		this.mdirector = mdirector;
	}
	public String getMactor() {
		return mactor;
	}
	public void setMactor(String mactor) {
		this.mactor = mactor;
	}
	public String getMsynopsis() {
		return msynopsis;
	}
	public void setMsynopsis(String msynopsis) {
		this.msynopsis = msynopsis;
	}
	public String getMgenre() {
		return mgenre;
	}
	public void setMgenre(String mgenre) {
		this.mgenre = mgenre;
	}
	@Override
	public String toString() {
		return "MovieBean [mtitle=" + mtitle + ", mprice=" + mprice + ", mdirector=" + mdirector + ", mactor=" + mactor
				+ ", msynopsis=" + msynopsis + ", mgenre=" + mgenre + "]";
	}
	
}
