/********************************************************
 * Copyright (c) 2022 https://sanguinesoftwares.com		*
 * All rights reserved.									*
 * @author Ritesh										*
 ********************************************************/
package com.sanguine.qrmenu.beans;

import java.util.List;
import java.util.Map;

//clsPOSBillSettlementBean
public class clsFormDataBean {
	private String strCustName;
	private String strEmailID;
	private String strMobNum;
	private String strAddress;
	
	
	public String getStrAddress() {
		return strAddress;
	}

	public void setStrAddress(String strAddress) {
		this.strAddress = strAddress;
	}

	/**
	 * 
	 * Key = clsMenuHead i.e. strMenuCode, strMenuName value = clsPricingDtl
	 **/
	private Map<clsMenuHead, List<clsPricingDtl>> mapMenuHeadWithItemDetails;
	/**
	 * {@link} Key = strItemCode value = clsPricingDtl
	 */
	private Map<String, clsPricingDtl> mapItemDetails;
	/**
	 * This will contains all items selected by customer for final order.
	 */
	private List<clsPricingDtl> listOfBillItemDtl;
	private double dblGrandTotal;
	private double dblSubTotal;
	private double dblTotalTaxAmt;

	public Map<clsMenuHead, List<clsPricingDtl>> getMapMenuHeadWithItemDetails() {
		return mapMenuHeadWithItemDetails;
	}

	public void setMapMenuHeadWithItemDetails(Map<clsMenuHead, List<clsPricingDtl>> mapMenuHeadWithItemDetails) {
		this.mapMenuHeadWithItemDetails = mapMenuHeadWithItemDetails;
	}

	public List<clsPricingDtl> getListOfBillItemDtl() {
		return listOfBillItemDtl;
	}

	public void setListOfBillItemDtl(List<clsPricingDtl> listOfBillItemDtl) {
		this.listOfBillItemDtl = listOfBillItemDtl;
	}

	/**
	 * @return the mapItemDetails
	 */
	public Map<String, clsPricingDtl> getMapItemDetails() {
		return mapItemDetails;
	}

	/**
	 * @param map of strItemCode and {@link clsPricingDtl} the mapItemDetails to set
	 */
	public void setMapItemDetails(Map<String, clsPricingDtl> mapItemDetails) {
		this.mapItemDetails = mapItemDetails;
	}

	/**
	 * @return the strCustName
	 */
	public String getStrCustName() {
		return strCustName;
	}

	/**
	 * @param strCustName the strCustName to set
	 */
	public void setStrCustName(String strCustName) {
		this.strCustName = strCustName;
	}

	/**
	 * @return the strEmailID
	 */
	public String getStrEmailID() {
		return strEmailID;
	}

	/**
	 * @param strEmailID the strEmailID to set
	 */
	public void setStrEmailID(String strEmailID) {
		this.strEmailID = strEmailID;
	}

	/**
	 * @return the strMobNum
	 */
	public String getStrMobNum() {
		return strMobNum;
	}

	/**
	 * @param strMobNum the strMobNum to set
	 */
	public void setStrMobNum(String strMobNum) {
		this.strMobNum = strMobNum;
	}

	/**
	 * @return the dblGrandTotal
	 */
	public double getDblGrandTotal() {
		return dblGrandTotal;
	}

	/**
	 * @param dblGrandTotal the dblGrandTotal to set
	 */
	public void setDblGrandTotal(double dblGrandTotal) {
		this.dblGrandTotal = dblGrandTotal;
	}

	/**
	 * @return the dblSubTotal
	 */
	public double getDblSubTotal() {
		return dblSubTotal;
	}

	/**
	 * @param dblSubTotal the dblSubTotal to set
	 */
	public void setDblSubTotal(double dblSubTotal) {
		this.dblSubTotal = dblSubTotal;
	}

	/**
	 * @return the dblTotalTaxAmt
	 */
	public double getDblTotalTaxAmt() {
		return dblTotalTaxAmt;
	}

	/**
	 * @param dblTotalTaxAmt the dblTotalTaxAmt to set
	 */
	public void setDblTotalTaxAmt(double dblTotalTaxAmt) {
		this.dblTotalTaxAmt = dblTotalTaxAmt;
	}
}
