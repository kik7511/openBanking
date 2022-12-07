package com.openBanking.modules.code;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Code {

	private String ccSeq;
	private String ccgSeq;
	private String ccName;
	private String ccUseNy;
	private String ccOrder;
	private String ccDelNy;
	private String ccgName;
	private Integer ccAnother;
	private String ccNameEng;
	private Date regDate;
	private Date modDate;
//	for cache
	public static List<Code> cachedCodeArrayList = new ArrayList<Code>();
	
//	--------------------------------
	
	
	public String getCcSeq() {
		return ccSeq;
	}
	public void setCcSeq(String ccSeq) {
		this.ccSeq = ccSeq;
	}
	public String getCcgSeq() {
		return ccgSeq;
	}
	public void setCcgSeq(String ccgSeq) {
		this.ccgSeq = ccgSeq;
	}
	public String getCcName() {
		return ccName;
	}
	public void setCcName(String ccName) {
		this.ccName = ccName;
	}
	public String getCcUseNy() {
		return ccUseNy;
	}
	public void setCcUseNy(String ccUseNy) {
		this.ccUseNy = ccUseNy;
	}
	public String getCcOrder() {
		return ccOrder;
	}
	public void setCcOrder(String ccOrder) {
		this.ccOrder = ccOrder;
	}
	public String getCcDelNy() {
		return ccDelNy;
	}
	public void setCcDelNy(String ccDelNy) {
		this.ccDelNy = ccDelNy;
	}
	public String getCcgName() {
		return ccgName;
	}
	public void setCcgName(String ccgName) {
		this.ccgName = ccgName;
	}
	public Integer getCcAnother() {
		return ccAnother;
	}
	public void setCcAnother(Integer ccAnother) {
		this.ccAnother = ccAnother;
	}
	public String getCcNameEng() {
		return ccNameEng;
	}
	public void setCcNameEng(String ccNameEng) {
		this.ccNameEng = ccNameEng;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public Date getModDate() {
		return modDate;
	}
	public void setModDate(Date modDate) {
		this.modDate = modDate;
	}
	

}
