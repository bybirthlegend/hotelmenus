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
public class clsPosMasterModel_ID extends clsBaseModel implements Serializable {
	public clsPosMasterModel_ID() {
	}

	public clsPosMasterModel_ID(String strPosCode, String strClientCode) {
		this.strPosCode = strPosCode;
		this.strClientCode = strClientCode;
	}

	@Column(name = "strPosCode")
	private String strPosCode;
	@Column(name = "strClientCode")
	private String strClientCode;

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
		return this.strClientCode.hashCode() + this.strPosCode.hashCode();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object obj) {
		clsPosMasterModel_ID other = (clsPosMasterModel_ID) obj;
		if (this.strClientCode.equals(other.getStrClientCode()) && this.strPosCode.equals(other.getStrPosCode())) {
			return true;
		} else {
			return false;
		}
	}

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
}
