/********************************************************
 * Copyright (c) 2022 https://sanguinesoftwares.com		*
 * All rights reserved.									*
 ********************************************************/
package com.sanguine.qrmenu.model;

import java.io.Serializable;

import javax.persistence.Embeddable;
import javax.persistence.Column;

@Embeddable
@SuppressWarnings("serial")
public class clsCustomerMasterModel_ID implements Serializable {
	// Variable Declaration
	@Column(name = "strCustomerCode")
	private String strCustomerCode;
	@Column(name = "strClientCode")
	private String strClientCode;

	public clsCustomerMasterModel_ID() {
	}

	public clsCustomerMasterModel_ID(String strCustomerCode, String strClientCode) {
		this.strCustomerCode = strCustomerCode;
		this.strClientCode = strClientCode;
	}

	// Setter-Getter Methods
	public String getStrCustomerCode() {
		return strCustomerCode;
	}

	public void setStrCustomerCode(String strCustomerCode) {
		this.strCustomerCode = strCustomerCode;
	}

	public String getStrClientCode() {
		return strClientCode;
	}

	public void setStrClientCode(String strClientCode) {
		this.strClientCode = strClientCode;
	}

	// HashCode and Equals Funtions
	@Override
	public boolean equals(Object obj) {
		clsCustomerMasterModel_ID objModelId = (clsCustomerMasterModel_ID) obj;
		if (this.strCustomerCode.equals(objModelId.getStrCustomerCode())
				&& this.strClientCode.equals(objModelId.getStrClientCode())) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public int hashCode() {
		return this.strCustomerCode.hashCode() + this.strClientCode.hashCode();
	}
}
