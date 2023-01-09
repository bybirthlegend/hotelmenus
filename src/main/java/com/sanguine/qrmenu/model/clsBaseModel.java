/********************************************************
 * Copyright (c) 2022 https://sanguinesoftwares.com		*
 * All rights reserved.									*
 ********************************************************/
package com.sanguine.qrmenu.model;

import java.io.Serializable;

public class clsBaseModel implements Serializable {
	private static final long serialVersionUID = 1L;
	clsBaseModel obBaseModel;
	private String docCode;

	public clsBaseModel getObBaseModel() {
		return obBaseModel;
	}

	public void setObBaseModel(clsBaseModel obBaseModel) {
		this.obBaseModel = obBaseModel;
	}

	public String getDocCode() {
		return docCode;
	}

	public void setDocCode(String docCode) {
		this.docCode = docCode;
	}

	protected Object setDefaultValue(Object value, Object defaultValue) {
		if (value != null && (value instanceof String && value.toString().length() > 0)) {
			return value;
		} else if (value != null && (value instanceof Double && value.toString().length() > 0)) {
			return value;
		} else if (value != null && (value instanceof Integer && value.toString().length() > 0)) {
			return value;
		} else if (value != null && (value instanceof Long && value.toString().length() > 0)) {
			return value;
		} else {
			return defaultValue;
		}
	}
}
