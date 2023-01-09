/********************************************************
 * Copyright (c) 2022 https://sanguinesoftwares.com		*
 * All rights reserved.									*
 ********************************************************/
package com.sanguine.qrmenu.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
@SuppressWarnings("serial")
public class clsSetupModel_ID implements Serializable {
//Variable Declaration
	@Column(name = "strClientId")
	private String strClientCode;
	@Column(name = "strPOSCode")
	private String strPOSCode;

	public clsSetupModel_ID() {
	}

	public clsSetupModel_ID(String strClientCode, String strPOSCode) {
		this.strClientCode = strClientCode;
		this.strPOSCode = strPOSCode;
	}

//Setter-Getter Methods
	public String getStrClientCode() {
		return strClientCode;
	}

	public void setStrClientCode(String strClientCode) {
		this.strClientCode = strClientCode;
	}

	public String getStrPOSCode() {
		return strPOSCode;
	}

	public void setStrPOSCode(String strPOSCode) {
		this.strPOSCode = strPOSCode;
	}

	// HashCode and Equals Funtions
	@Override
	public boolean equals(Object obj) {
		clsSetupModel_ID objModelId = (clsSetupModel_ID) obj;
		if (this.strClientCode.equals(objModelId.getStrClientCode())
				&& this.strPOSCode.equals(objModelId.getStrPOSCode())) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public int hashCode() {
		return this.strClientCode.hashCode() + this.strPOSCode.hashCode();
	}
}
