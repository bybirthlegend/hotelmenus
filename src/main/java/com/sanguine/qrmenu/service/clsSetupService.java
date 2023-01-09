/********************************************************
 * Copyright (c) 2022 https://sanguinesoftwares.com		*
 * All rights reserved.									*
 ********************************************************/
package com.sanguine.qrmenu.service;

import java.util.List;

import com.sanguine.qrmenu.model.clsCostCenterMasterModel;
import com.sanguine.qrmenu.model.clsPosMasterModel;
import com.sanguine.qrmenu.model.clsSetupHdModel;

/**
 * @author Ritesh
 *
 */
public interface clsSetupService {
	public List<clsSetupHdModel> listSetup(String clientCode);

	public clsSetupHdModel getSetupById(String clientCode, String posCode);

	public List<clsCostCenterMasterModel> listCostCenter(String clientCode);

	public clsCostCenterMasterModel getCostCenterById(String clientCode, String costCenterCode);

	public List<clsPosMasterModel> listPosMaster(String clientCode);

	public clsPosMasterModel getPosMasterById(String clientCode, String posCode);
	
	
}
