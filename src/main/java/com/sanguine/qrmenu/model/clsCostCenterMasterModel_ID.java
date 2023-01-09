/********************************************************
 * Copyright (c) 2022 https://sanguinesoftwares.com		*
 * All rights reserved.									*
 * @author Ritesh										*
 ********************************************************/
package com.sanguine.qrmenu.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
@SuppressWarnings("serial")
public class clsCostCenterMasterModel_ID extends clsBaseModel implements Serializable {
	public clsCostCenterMasterModel_ID() {
	}

	public clsCostCenterMasterModel_ID(String strClientCode, String strCostCenterCode) {
		this.strClientCode = strClientCode;
		this.strCostCenterCode = strCostCenterCode;
	}

	@Column(name = "strCostCenterCode")
	private String strCostCenterCode;
	@Column(name = "strClientCode")
	private String strClientCode;

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

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		return this.strClientCode.hashCode() + this.strCostCenterCode.hashCode();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object obj) {
		clsCostCenterMasterModel_ID other = (clsCostCenterMasterModel_ID) obj;
		if (this.strClientCode.equals(other.getStrClientCode())
				&& this.strCostCenterCode.equals(other.getStrCostCenterCode())) {
			return true;
		} else {
			return false;
		}
	}
}
