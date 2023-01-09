/********************************************************
 * Copyright (c) 2022 https://sanguinesoftwares.com		*
 * All rights reserved.									*
 ********************************************************/
package com.sanguine.qrmenu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sanguine.qrmenu.dao.clsSetupDAO;
import com.sanguine.qrmenu.model.clsCostCenterMasterModel;
import com.sanguine.qrmenu.model.clsPosMasterModel;
import com.sanguine.qrmenu.model.clsSetupHdModel;

/**
 * @author Ritesh
 *
 */
@Service
public class clsSetupServiceImpl implements clsSetupService {
	@Autowired
	private clsSetupDAO objSetupDAO;

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.sanguine.qrmenu.service.clsSetupService#listSetup()
	 */
	@Override
	public List<clsSetupHdModel> listSetup(String clientCode) {
		return objSetupDAO.listSetup(clientCode);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.sanguine.qrmenu.service.clsSetupService#getSetuoById(java.lang.String,
	 * java.lang.String)
	 */
	@Override
	public clsSetupHdModel getSetupById(String clientCode, String posCode) {
		return objSetupDAO.getSetupById(clientCode, posCode);
	}

	@Override
	public List<clsCostCenterMasterModel> listCostCenter(String clientCode) {
		// TODO Auto-generated method stub
		return objSetupDAO.listCostCenter(clientCode);
	}

	@Override
	public clsCostCenterMasterModel getCostCenterById(String clientCode, String costCenterCode) {
		return objSetupDAO.getCostCenterById(clientCode, costCenterCode);
	}

	@Override
	public List<clsPosMasterModel> listPosMaster(String clientCode) {
		return objSetupDAO.listPosMaster(clientCode);
	}

	@Override
	public clsPosMasterModel getPosMasterById(String clientCode, String posCode) {
		return objSetupDAO.getPosMasterById(clientCode, posCode);
	}
	//////////////below by harsh////////////

	
}
