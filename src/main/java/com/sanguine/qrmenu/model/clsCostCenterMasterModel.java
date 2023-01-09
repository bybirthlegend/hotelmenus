/********************************************************
 * Copyright (c) 2022 https://sanguinesoftwares.com		*
 * All rights reserved.									*
 * @author Ritesh										*
 ********************************************************/
package com.sanguine.qrmenu.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

@Entity
@Table(name = "tblcostcentermaster")
@IdClass(clsCostCenterMasterModel_ID.class)
public class clsCostCenterMasterModel extends clsBaseModel implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public clsCostCenterMasterModel() {
	}

	public clsCostCenterMasterModel(clsCostCenterMasterModel_ID objModelID) {
		strClientCode = objModelID.getStrClientCode();
		strCostCenterCode = objModelID.getStrCostCenterCode();
	}

	@Id
	@AttributeOverrides({ @AttributeOverride(name = "strClientCode", column = @Column(name = "strClientCode")),
			@AttributeOverride(name = "strCostCenterCode", column = @Column(name = "strCostCenterCode")) })
	@Column(name = "strCostCenterCode")
	private String strCostCenterCode;
	@Column(name = "strCostCenterName")
	private String strCostCenterName;
	@Column(name = "strPrinterPort")
	private String strPrinterPort;
	@Column(name = "strSecondaryPrinterPort")
	private String strSecondaryPrinterPort;
	@Column(name = "strPrintOnBothPrinters")
	private String strPrintOnBothPrinters;
	@Column(name = "strUserCreated")
	private String strUserCreated;
	@Column(name = "strUserEdited")
	private String strUserEdited;
	@Column(name = "dteDateCreated")
	private Date dteDateCreated;
	@Column(name = "dteDateEdited")
	private Date dteDateEdited;
	@Column(name = "strClientCode")
	private String strClientCode;
	@Column(name = "strDataPostFlag")
	private String strDataPostFlag;
	@Column(name = "strLabelOnKOT")
	private String strLabelOnKOT;
	@Column(name = "strWSLocationCode")
	private String strWSLocationCode;
	@Column(name = "strWSLocationName")
	private String strWSLocationName;
	@Column(name = "intCostCenterWiseNoOfCopies")
	private int intCostCenterWiseNoOfCopies;
	@Column(name = "intPrimaryPrinterNoOfCopies")
	private int intPrimaryPrinterNoOfCopies;
	@Column(name = "intSecondaryPrinterNoOfCopies")
	private int intSecondaryPrinterNoOfCopies;
	@Column(name = "strConsolidatedPrint")
	private String strConsolidatedPrint;
	@Column(name = "strItemWisePrint")
	private String strItemWisePrint;

	/**
	 * @return the strCostCenterCode
	 */
	public String getStrCostCenterCode() {
		return strCostCenterCode;
	}

	/**
	 * @param strCostCenterCode the strCostCenterCode to set
	 */
	public void setStrCostCenterCode(String strCostCenterCode) {
		this.strCostCenterCode = strCostCenterCode;
	}

	/**
	 * @return the strCostCenterName
	 */
	public String getStrCostCenterName() {
		return strCostCenterName;
	}

	/**
	 * @param strCostCenterName the strCostCenterName to set
	 */
	public void setStrCostCenterName(String strCostCenterName) {
		this.strCostCenterName = strCostCenterName;
	}

	/**
	 * @return the strPrinterPort
	 */
	public String getStrPrinterPort() {
		return strPrinterPort;
	}

	/**
	 * @param strPrinterPort the strPrinterPort to set
	 */
	public void setStrPrinterPort(String strPrinterPort) {
		this.strPrinterPort = strPrinterPort;
	}

	/**
	 * @return the strSecondaryPrinterPort
	 */
	public String getStrSecondaryPrinterPort() {
		return strSecondaryPrinterPort;
	}

	/**
	 * @param strSecondaryPrinterPort the strSecondaryPrinterPort to set
	 */
	public void setStrSecondaryPrinterPort(String strSecondaryPrinterPort) {
		this.strSecondaryPrinterPort = strSecondaryPrinterPort;
	}

	/**
	 * @return the strPrintOnBothPrinters
	 */
	public String getStrPrintOnBothPrinters() {
		return strPrintOnBothPrinters;
	}

	/**
	 * @param strPrintOnBothPrinters the strPrintOnBothPrinters to set
	 */
	public void setStrPrintOnBothPrinters(String strPrintOnBothPrinters) {
		this.strPrintOnBothPrinters = strPrintOnBothPrinters;
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
	public Date getDteDateCreated() {
		return dteDateCreated;
	}

	/**
	 * @param dteDateCreated the dteDateCreated to set
	 */
	public void setDteDateCreated(Date dteDateCreated) {
		this.dteDateCreated = dteDateCreated;
	}

	/**
	 * @return the dteDateEdited
	 */
	public Date getDteDateEdited() {
		return dteDateEdited;
	}

	/**
	 * @param dteDateEdited the dteDateEdited to set
	 */
	public void setDteDateEdited(Date dteDateEdited) {
		this.dteDateEdited = dteDateEdited;
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
	 * @return the strDataPostFlag
	 */
	public String getStrDataPostFlag() {
		return strDataPostFlag;
	}

	/**
	 * @param strDataPostFlag the strDataPostFlag to set
	 */
	public void setStrDataPostFlag(String strDataPostFlag) {
		this.strDataPostFlag = strDataPostFlag;
	}

	/**
	 * @return the strLabelOnKOT
	 */
	public String getStrLabelOnKOT() {
		return strLabelOnKOT;
	}

	/**
	 * @param strLabelOnKOT the strLabelOnKOT to set
	 */
	public void setStrLabelOnKOT(String strLabelOnKOT) {
		this.strLabelOnKOT = strLabelOnKOT;
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
	 * @return the intCostCenterWiseNoOfCopies
	 */
	public int getIntCostCenterWiseNoOfCopies() {
		return intCostCenterWiseNoOfCopies;
	}

	/**
	 * @param intCostCenterWiseNoOfCopies the intCostCenterWiseNoOfCopies to set
	 */
	public void setIntCostCenterWiseNoOfCopies(int intCostCenterWiseNoOfCopies) {
		this.intCostCenterWiseNoOfCopies = intCostCenterWiseNoOfCopies;
	}

	/**
	 * @return the intPrimaryPrinterNoOfCopies
	 */
	public int getIntPrimaryPrinterNoOfCopies() {
		return intPrimaryPrinterNoOfCopies;
	}

	/**
	 * @param intPrimaryPrinterNoOfCopies the intPrimaryPrinterNoOfCopies to set
	 */
	public void setIntPrimaryPrinterNoOfCopies(int intPrimaryPrinterNoOfCopies) {
		this.intPrimaryPrinterNoOfCopies = intPrimaryPrinterNoOfCopies;
	}

	/**
	 * @return the intSecondaryPrinterNoOfCopies
	 */
	public int getIntSecondaryPrinterNoOfCopies() {
		return intSecondaryPrinterNoOfCopies;
	}

	/**
	 * @param intSecondaryPrinterNoOfCopies the intSecondaryPrinterNoOfCopies to set
	 */
	public void setIntSecondaryPrinterNoOfCopies(int intSecondaryPrinterNoOfCopies) {
		this.intSecondaryPrinterNoOfCopies = intSecondaryPrinterNoOfCopies;
	}

	/**
	 * @return the strConsolidatedPrint
	 */
	public String getStrConsolidatedPrint() {
		return strConsolidatedPrint;
	}

	/**
	 * @param strConsolidatedPrint the strConsolidatedPrint to set
	 */
	public void setStrConsolidatedPrint(String strConsolidatedPrint) {
		this.strConsolidatedPrint = strConsolidatedPrint;
	}

	/**
	 * @return the strItemWisePrint
	 */
	public String getStrItemWisePrint() {
		return strItemWisePrint;
	}

	/**
	 * @param strItemWisePrint the strItemWisePrint to set
	 */
	public void setStrItemWisePrint(String strItemWisePrint) {
		this.strItemWisePrint = strItemWisePrint;
	}
}
