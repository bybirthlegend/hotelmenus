/********************************************************
 * Copyright (c) 2022 https://sanguinesoftwares.com		*
 * All rights reserved.									*
 ********************************************************/
package com.sanguine.qrmenu.service;

import java.util.List;
import java.util.Map;

import org.json.simple.JSONObject;

import com.sanguine.qrmenu.beans.clsMenuHead;
import com.sanguine.qrmenu.beans.clsPricingDtl;
import com.sanguine.qrmenu.model.clsBillHdModel;

public interface clsMenuService {
	/**
	 * ----------------------------------------------------*
	 * 
	 * @param strPOSCode
	 * @param userCode
	 * @param clientCode
	 * @param groupCode
	 * @param groupNames
	 * @return JSONObject
	 */
	public JSONObject funGetMenuHeads(String strPOSCode, String userCode, String clientCode, String groupCode,
			String groupNames);

	/**
	 * @param strPOSCode
	 * @param userCode
	 * @param clientCode
	 * @param groupCode
	 * @param groupNames
	 * @return list
	 */
	@SuppressWarnings("rawtypes")
	public List funGetMenuHeadList(String strPOSCode, String userCode, String clientCode, String groupCode,
			String groupNames, String strCostCenterCode);

	/**
	 * ----------------------------------------------------*
	 * 
	 * @param clientCode
	 * @param posDate
	 * @param posCode
	 * @param gAreaWisePricing
	 * @param gDirectAreaCode
	 * @param strItemCode
	 * @return
	 */
	public JSONObject funGetMenuItemsWithPricingDtl(String clientCode, String posDate, String posCode,
			String gAreaWisePricing, String gDirectAreaCode, String strItemCode);

	public Map<clsMenuHead, List<clsPricingDtl>> funGetMenuItemsWithPricingDtlMap(String clientCode, String posDate,
			String posCode, String gAreaWisePricing, String gDirectAreaCode, String strItemCode,
			String strCostCenterCode);

	public void funSave(clsBillHdModel objBillHd);
}
