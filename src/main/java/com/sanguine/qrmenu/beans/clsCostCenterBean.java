/********************************************************
 * Copyright (c) 2022 https://sanguinesoftwares.com		*
 * All rights reserved.									*
 * @author Ritesh										*
 ********************************************************/
package com.sanguine.qrmenu.beans;

import java.util.HashMap;
import java.util.Map;

import com.sanguine.qrmenu.model.clsCostCenterMasterModel;
import com.sanguine.qrmenu.model.clsPosMasterModel;

public class clsCostCenterBean {
	private Map<String, String> mapCostCenter;
	private Map<String, clsCostCenterMasterModel> mapCostCenterDetails;
	private Map<String, String> mapPosMaster = new HashMap<String, String>();

	public Map<String, clsPosMasterModel> getMapPosMasterDetails() {
		return mapPosMasterDetails;
	}

	public void setMapPosMasterDetails(Map<String, clsPosMasterModel> mapPosMasterDetails) {
		this.mapPosMasterDetails = mapPosMasterDetails;
	}

	private Map<String, clsPosMasterModel> mapPosMasterDetails = new HashMap<String, clsPosMasterModel>();

	/**
	 * @return the mapCostCenter
	 */
	public Map<String, String> getMapCostCenter() {
		return mapCostCenter;
	}

	/**
	 * @param mapCostCenter the mapCostCenter to set
	 */
	public void setMapCostCenter(Map<String, String> mapCostCenter) {
		this.mapCostCenter = mapCostCenter;
	}

	/**
	 * @return the mapCostCenterDetails
	 */
	public Map<String, clsCostCenterMasterModel> getMapCostCenterDetails() {
		return mapCostCenterDetails;
	}

	/**
	 * @param mapCostCenterDetails the mapCostCenterDetails to set
	 */
	public void setMapCostCenterDetails(Map<String, clsCostCenterMasterModel> mapCostCenterDetails) {
		this.mapCostCenterDetails = mapCostCenterDetails;
	}

	public Map<String, String> getMapPosMaster() {
		return mapPosMaster;
	}

	public void setMapPosMaster(Map<String, String> mapPosMaster) {
		this.mapPosMaster = mapPosMaster;
	}
}
