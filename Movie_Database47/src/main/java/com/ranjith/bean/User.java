package com.ranjith.bean;

public class User {
private int MOV_ID;
private String category1,category2,category3,category4,category5;
private String MOV_NAME;
private int MOV_YEAR;
private String MOV_TIME;
private String MOV_LANG;
private String MOV_REL_DATE;
private String MOV_REL_COUNTRY;
private String MOV_BUDGET;
private String ABOUT_MOV;
private String ACT1_NAME;
private String ACT1_ROLE;
private String ACT2_NAME;
private String ACT2_ROLE;
private String DIR_NAME;
private long DIR_PHONO;
private String PRO_NAME;
private long PRO_PHONO;
private String RATINGS;
private int NO_OF_RATINGS;

public String getMov_max()
{
	return "(SELECT MAX(MOV_ID) FROM moviedatabase.MOVIE47 LIMIT 1)";
}
public String getAct_max()
{
	return "(SELECT MAX(ACT_ID) FROM moviedatabase.ACTOR47 LIMIT 1)";
}

public int getMOV_ID() {
	return MOV_ID;
}
public void setMOV_ID(int mOV_ID) {
	MOV_ID = mOV_ID;
}
public String getMOV_NAME() {
	return MOV_NAME;
}
public void setMOV_NAME(String mOV_NAME) {
	MOV_NAME = mOV_NAME;
}
public int getMOV_YEAR() {
	return MOV_YEAR;
}
public void setMOV_YEAR(int mOV_YEAR) {
	MOV_YEAR = mOV_YEAR;
}
public String getMOV_TIME() {
	return MOV_TIME;
}
public void setMOV_TIME(String mOV_TIME) {
	MOV_TIME = mOV_TIME;
}
public String getMOV_LANG() {
	return MOV_LANG;
}
public void setMOV_LANG(String mOV_LANG) {
	MOV_LANG = mOV_LANG;
}
public String getMOV_REL_DATE() {
	return MOV_REL_DATE;
}
public void setMOV_REL_DATE(String mOV_REL_DATE) {
	MOV_REL_DATE = mOV_REL_DATE;
}
public String getMOV_REL_COUNTRY() {
	return MOV_REL_COUNTRY;
}
public void setMOV_REL_COUNTRY(String mOV_REL_COUNTRY) {
	MOV_REL_COUNTRY = mOV_REL_COUNTRY;
}
public String getCategory1() {
	return category1;
}
public void setCategory1(String category1) {
	this.category1 = category1;
}
public String getCategory2() {
	return category2;
}
public void setCategory2(String category2) {
	this.category2 = category2;
}
public String getCategory3() {
	return category3;
}
public void setCategory3(String category3) {
	this.category3 = category3;
}
public String getCategory4() {
	return category4;
}
public void setCategory4(String category4) {
	this.category4 = category4;
}
public String getCategory5() {
	return category5;
}
public void setCategory5(String category5) {
	this.category5 = category5;
}
public String getMOV_BUDGET() {
	return MOV_BUDGET;
}
public void setMOV_BUDGET(String mOV_BUDGET) {
	MOV_BUDGET = mOV_BUDGET;
}
public String getABOUT_MOV() {
	return ABOUT_MOV;
}
public void setABOUT_MOV(String aBOUT_MOV) {
	ABOUT_MOV = aBOUT_MOV;
}
public String getACT1_NAME() {
	return ACT1_NAME;
}
public void setACT1_NAME(String aCT1_NAME) {
	ACT1_NAME = aCT1_NAME;
}
public String getACT1_ROLE() {
	return ACT1_ROLE;
}
public void setACT1_ROLE(String aCT1_ROLE) {
	ACT1_ROLE = aCT1_ROLE;
}
public String getACT2_NAME() {
	return ACT2_NAME;
}
public void setACT2_NAME(String aCT2_NAME) {
	ACT2_NAME = aCT2_NAME;
}
public String getACT2_ROLE() {
	return ACT2_ROLE;
}
public void setACT2_ROLE(String aCT2_ROLE) {
	ACT2_ROLE = aCT2_ROLE;
}
public String getDIR_NAME() {
	return DIR_NAME;
}
public void setDIR_NAME(String dIR_NAME) {
	DIR_NAME = dIR_NAME;
}
public long getDIR_PHONO() {
	return DIR_PHONO;
}
public void setDIR_PHONO(long dIR_PHONO) {
	DIR_PHONO = dIR_PHONO;
}
public String getPRO_NAME() {
	return PRO_NAME;
}
public void setPRO_NAME(String pRO_NAME) {
	PRO_NAME = pRO_NAME;
}
public long getPRO_PHONO() {
	return PRO_PHONO;
}
public void setPRO_PHONO(long pRO_PHONO) {
	PRO_PHONO = pRO_PHONO;
}
public String getRATINGS() {
	return RATINGS;
}
public void setRATINGS(String rATINGS) {
	RATINGS = rATINGS;
}
public int getNO_OF_RATINGS() {
	return NO_OF_RATINGS;
}
public void setNO_OF_RATINGS(int nO_OF_RATINGS) {
	NO_OF_RATINGS = nO_OF_RATINGS;
}
}
