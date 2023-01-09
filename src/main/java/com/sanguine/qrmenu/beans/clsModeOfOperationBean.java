/********************************************************
 * Copyright (c) 2022 https://sanguinesoftwares.com		*
 * All rights reserved.									*
 ********************************************************/
/***
 * 
 * @author Ritesh
 */
package com.sanguine.qrmenu.beans;

import java.util.Map;

public class clsModeOfOperationBean {
	Map<String, String> mapOperationTypes;
	String selectedOperationType;

	/**
	 * @return the mapOperationTypes
	 */
	public Map<String, String> getMapOperationTypes() {
		return mapOperationTypes;
	}

	/**
	 * @param mapOperationTypes the mapOperationTypes to set
	 */
	public void setMapOperationTypes(Map<String, String> mapOperationTypes) {
		this.mapOperationTypes = mapOperationTypes;
	}

	/**
	 * @return the selectedOperationType
	 */
	public String getSelectedOperationType() {
		return selectedOperationType;
	}

	/**
	 * @param selectedOperationType the selectedOperationType to set
	 */
	public void setSelectedOperationType(String selectedOperationType) {
		this.selectedOperationType = selectedOperationType;
	}
}
