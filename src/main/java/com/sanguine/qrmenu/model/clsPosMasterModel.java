/********************************************************
 * Copyright (c) 2022 https://sanguinesoftwares.com		*
 * All rights reserved.									*
 * @author Ritesh										*
 ********************************************************/
package com.sanguine.qrmenu.model;

import java.io.Serializable;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

@Entity
@Table(name = "tblposmaster")
@IdClass(clsPosMasterModel_ID.class)
public class clsPosMasterModel extends clsBaseModel implements Serializable {
	private static final long serialVersionUID = 1L;

	public clsPosMasterModel() {
	}

	public clsPosMasterModel(clsPosMasterModel_ID objModelID) {
		strPosCode = objModelID.getStrPosCode();
		strClientCode = objModelID.getStrClientCode();
	}

	@Id
	@AttributeOverrides({ @AttributeOverride(name = "strPosCode", column = @Column(name = "strPosCode")),
			@AttributeOverride(name = "strClientCode", column = @Column(name = "strClientCode")) })
	// Variable Declaration
	@Column(name = "strPosCode")
	private String strPosCode;
	@Column(name = "strPosName")
	private String strPosName;
	@Column(name = "strPosType")
	private String strPosType;
	@Column(name = "strDebitCardTransactionYN")
	private String strDebitCardTransactionYN;
	@Column(name = "strPropertyPOSCode")
	private String strPropertyPOSCode;
	@Column(name = "strUserCreated")
	private String strUserCreated;
	@Column(name = "strUserEdited")
	private String strUserEdited;
	@Column(name = "dteDateCreated")
	private String dteDateCreated;
	@Column(name = "dteDateEdited")
	private String dteDateEdited;
	@Column(name = "strCounterWiseBilling")
	private String strCounterWiseBilling;
	@Column(name = "strDelayedSettlementForDB")
	private String strDelayedSettlementForDB;
	@Column(name = "strBillPrinterPort")
	private String strBillPrinterPort;
	@Column(name = "strAdvReceiptPrinterPort")
	private String strAdvReceiptPrinterPort;
	@Column(name = "strOperationalYN")
	private String strOperationalYN;
	@Column(name = "strPrintVatNo")
	private String strPrintVatNo;
	@Column(name = "strPrintServiceTaxNo")
	private String strPrintServiceTaxNo;
	@Column(name = "strVatNo")
	private String strVatNo;
	@Column(name = "strServiceTaxNo")
	private String strServiceTaxNo;
	@Column(name = "strRoundOff")
	private String strRoundOff;
	@Column(name = "strTip")
	private String strTip;
	@Column(name = "strDiscount")
	private String strDiscount;
	@Column(name = "strWSLocationCode")
	private String strWSLocationCode;
	@Column(name = "strExciseLicenceCode")
	private String strExciseLicenceCode;
	@Column(name = "strEnableShift")
	private String strEnableShift;
	@Column(name = "strWSLocationName")
	private String strWSLocationName;
	@Column(name = "strExciseLicenceName")
	private String strExciseLicenceName;
	@Column(name = "strClientCode")
	private String strClientCode;
	@Column(name = "strPlayZonePOS")
	private String strPlayZonePOS;
	@Column(name = "strPropertyCode")
	private String strPropertyCode;

	/**
	 * @return the strPosCode
	 */
	public String getStrPosCode() {
		return strPosCode;
	}

	/**
	 * @param strPosCode the strPosCode to set
	 */
	public void setStrPosCode(String strPosCode) {
		this.strPosCode = strPosCode;
	}

	/**
	 * @return the strPosName
	 */
	public String getStrPosName() {
		return strPosName;
	}

	/**
	 * @param strPosName the strPosName to set
	 */
	public void setStrPosName(String strPosName) {
		this.strPosName = strPosName;
	}

	/**
	 * @return the strPosType
	 */
	public String getStrPosType() {
		return strPosType;
	}

	/**
	 * @param strPosType the strPosType to set
	 */
	public void setStrPosType(String strPosType) {
		this.strPosType = strPosType;
	}

	/**
	 * @return the strDebitCardTransactionYN
	 */
	public String getStrDebitCardTransactionYN() {
		return strDebitCardTransactionYN;
	}

	/**
	 * @param strDebitCardTransactionYN the strDebitCardTransactionYN to set
	 */
	public void setStrDebitCardTransactionYN(String strDebitCardTransactionYN) {
		this.strDebitCardTransactionYN = strDebitCardTransactionYN;
	}

	/**
	 * @return the strPropertyPOSCode
	 */
	public String getStrPropertyPOSCode() {
		return strPropertyPOSCode;
	}

	/**
	 * @param strPropertyPOSCode the strPropertyPOSCode to set
	 */
	public void setStrPropertyPOSCode(String strPropertyPOSCode) {
		this.strPropertyPOSCode = strPropertyPOSCode;
	}

	/**
	 * @return the strUserCreated
	 */
	public String getStrUserCreated() {
		return strUserCreated;
	}

	/**
	 * @param strUserCreated the strUserCreated to set
	 */
	public void setStrUserCreated(String strUserCreated) {
		this.strUserCreated = strUserCreated;
	}

	/**
	 * @return the strUserEdited
	 */
	public String getStrUserEdited() {
		return strUserEdited;
	}

	/**
	 * @param strUserEdited the strUserEdited to set
	 */
	public void setStrUserEdited(String strUserEdited) {
		this.strUserEdited = strUserEdited;
	}

	/**
	 * @return the dteDateCreated
	 */
	public String getDteDateCreated() {
		return dteDateCreated;
	}

	/**
	 * @param dteDateCreated the dteDateCreated to set
	 */
	public void setDteDateCreated(String dteDateCreated) {
		this.dteDateCreated = dteDateCreated;
	}

	/**
	 * @return the dteDateEdited
	 */
	public String getDteDateEdited() {
		return dteDateEdited;
	}

	/**
	 * @param dteDateEdited the dteDateEdited to set
	 */
	public void setDteDateEdited(String dteDateEdited) {
		this.dteDateEdited = dteDateEdited;
	}

	/**
	 * @return the strCounterWiseBilling
	 */
	public String getStrCounterWiseBilling() {
		return strCounterWiseBilling;
	}

	/**
	 * @param strCounterWiseBilling the strCounterWiseBilling to set
	 */
	public void setStrCounterWiseBilling(String strCounterWiseBilling) {
		this.strCounterWiseBilling = strCounterWiseBilling;
	}

	/**
	 * @return the strDelayedSettlementForDB
	 */
	public String getStrDelayedSettlementForDB() {
		return strDelayedSettlementForDB;
	}

	/**
	 * @param strDelayedSettlementForDB the strDelayedSettlementForDB to set
	 */
	public void setStrDelayedSettlementForDB(String strDelayedSettlementForDB) {
		this.strDelayedSettlementForDB = strDelayedSettlementForDB;
	}

	/**
	 * @return the strBillPrinterPort
	 */
	public String getStrBillPrinterPort() {
		return strBillPrinterPort;
	}

	/**
	 * @param strBillPrinterPort the strBillPrinterPort to set
	 */
	public void setStrBillPrinterPort(String strBillPrinterPort) {
		this.strBillPrinterPort = strBillPrinterPort;
	}

	/**
	 * @return the strAdvReceiptPrinterPort
	 */
	public String getStrAdvReceiptPrinterPort() {
		return strAdvReceiptPrinterPort;
	}

	/**
	 * @param strAdvReceiptPrinterPort the strAdvReceiptPrinterPort to set
	 */
	public void setStrAdvReceiptPrinterPort(String strAdvReceiptPrinterPort) {
		this.strAdvReceiptPrinterPort = strAdvReceiptPrinterPort;
	}

	/**
	 * @return the strOperationalYN
	 */
	public String getStrOperationalYN() {
		return strOperationalYN;
	}

	/**
	 * @param strOperationalYN the strOperationalYN to set
	 */
	public void setStrOperationalYN(String strOperationalYN) {
		this.strOperationalYN = strOperationalYN;
	}

	/**
	 * @return the strPrintVatNo
	 */
	public String getStrPrintVatNo() {
		return strPrintVatNo;
	}

	/**
	 * @param strPrintVatNo the strPrintVatNo to set
	 */
	public void setStrPrintVatNo(String strPrintVatNo) {
		this.strPrintVatNo = strPrintVatNo;
	}

	/**
	 * @return the strPrintServiceTaxNo
	 */
	public String getStrPrintServiceTaxNo() {
		return strPrintServiceTaxNo;
	}

	/**
	 * @param strPrintServiceTaxNo the strPrintServiceTaxNo to set
	 */
	public void setStrPrintServiceTaxNo(String strPrintServiceTaxNo) {
		this.strPrintServiceTaxNo = strPrintServiceTaxNo;
	}

	/**
	 * @return the strVatNo
	 */
	public String getStrVatNo() {
		return strVatNo;
	}

	/**
	 * @param strVatNo the strVatNo to set
	 */
	public void setStrVatNo(String strVatNo) {
		this.strVatNo = strVatNo;
	}

	/**
	 * @return the strServiceTaxNo
	 */
	public String getStrServiceTaxNo() {
		return strServiceTaxNo;
	}

	/**
	 * @param strServiceTaxNo the strServiceTaxNo to set
	 */
	public void setStrServiceTaxNo(String strServiceTaxNo) {
		this.strServiceTaxNo = strServiceTaxNo;
	}

	/**
	 * @return the strRoundOff
	 */
	public String getStrRoundOff() {
		return strRoundOff;
	}

	/**
	 * @param strRoundOff the strRoundOff to set
	 */
	public void setStrRoundOff(String strRoundOff) {
		this.strRoundOff = strRoundOff;
	}

	/**
	 * @return the strTip
	 */
	public String getStrTip() {
		return strTip;
	}

	/**
	 * @param strTip the strTip to set
	 */
	public void setStrTip(String strTip) {
		this.strTip = strTip;
	}

	/**
	 * @return the strDiscount
	 */
	public String getStrDiscount() {
		return strDiscount;
	}

	/**
	 * @param strDiscount the strDiscount to set
	 */
	public void setStrDiscount(String strDiscount) {
		this.strDiscount = strDiscount;
	}

	/**
	 * @return the strWSLocationCode
	 */
	public String getStrWSLocationCode() {
		return strWSLocationCode;
	}

	/**
	 * @param strWSLocationCode the strWSLocationCode to set
	 */
	public void setStrWSLocationCode(String strWSLocationCode) {
		this.strWSLocationCode = strWSLocationCode;
	}

	/**
	 * @return the strExciseLicenceCode
	 */
	public String getStrExciseLicenceCode() {
		return strExciseLicenceCode;
	}

	/**
	 * @param strExciseLicenceCode the strExciseLicenceCode to set
	 */
	public void setStrExciseLicenceCode(String strExciseLicenceCode) {
		this.strExciseLicenceCode = strExciseLicenceCode;
	}

	/**
	 * @return the strEnableShift
	 */
	public String getStrEnableShift() {
		return strEnableShift;
	}

	/**
	 * @param strEnableShift the strEnableShift to set
	 */
	public void setStrEnableShift(String strEnableShift) {
		this.strEnableShift = strEnableShift;
	}

	/**
	 * @return the strWSLocationName
	 */
	public String getStrWSLocationName() {
		return strWSLocationName;
	}

	/**
	 * @param strWSLocationName the strWSLocationName to set
	 */
	public void setStrWSLocationName(String strWSLocationName) {
		this.strWSLocationName = strWSLocationName;
	}

	/**
	 * @return the strExciseLicenceName
	 */
	public String getStrExciseLicenceName() {
		return strExciseLicenceName;
	}

	/**
	 * @param strExciseLicenceName the strExciseLicenceName to set
	 */
	public void setStrExciseLicenceName(String strExciseLicenceName) {
		this.strExciseLicenceName = strExciseLicenceName;
	}

	/**
	 * @return the strClientCode
	 */
	public String getStrClientCode() {
		return strClientCode;
	}

	/**
	 * @param strClientCode the strClientCode to set
	 */
	public void setStrClientCode(String strClientCode) {
		this.strClientCode = strClientCode;
	}

	/**
	 * @return the strPlayZonePOS
	 */
	public String getStrPlayZonePOS() {
		return strPlayZonePOS;
	}

	/**
	 * @param strPlayZonePOS the strPlayZonePOS to set
	 */
	public void setStrPlayZonePOS(String strPlayZonePOS) {
		this.strPlayZonePOS = strPlayZonePOS;
	}

	/**
	 * @return the strPropertyCode
	 */
	public String getStrPropertyCode() {
		return strPropertyCode;
	}

	/**
	 * @param strPropertyCode the strPropertyCode to set
	 */
	public void setStrPropertyCode(String strPropertyCode) {
		this.strPropertyCode = strPropertyCode;
	}
}
