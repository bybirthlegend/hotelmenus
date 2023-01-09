/********************************************************
 * Copyright (c) 2022 https://sanguinesoftwares.com		*
 * All rights reserved.									*
 ********************************************************/
package com.sanguine.qrmenu.beans;

public class clsMenuHead {
	private String strMenuCode;
	private String strMenuName;

	public clsMenuHead(String strMenuCode, String strMenuName) {
		super();
		this.strMenuCode = strMenuCode;
		this.strMenuName = strMenuName;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((strMenuCode == null) ? 0 : strMenuCode.hashCode());
		result = prime * result + ((strMenuName == null) ? 0 : strMenuName.hashCode());
		return result;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (!(obj instanceof clsMenuHead)) {
			return false;
		}
		clsMenuHead other = (clsMenuHead) obj;
		if (strMenuCode == null) {
			if (other.strMenuCode != null) {
				return false;
			}
		} else if (!strMenuCode.equals(other.strMenuCode)) {
			return false;
		}
		if (strMenuName == null) {
			if (other.strMenuName != null) {
				return false;
			}
		} else if (!strMenuName.equals(other.strMenuName)) {
			return false;
		}
		return true;
	}

	/**
	 * @return the strMenuCode
	 */
	public String getStrMenuCode() {
		return strMenuCode;
	}

	/**
	 * @return the strMenuName
	 */
	public String getStrMenuName() {
		return strMenuName;
	}
}
