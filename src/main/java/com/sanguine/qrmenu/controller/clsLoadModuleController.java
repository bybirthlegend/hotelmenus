/********************************************************
 * Copyright (c) 2022 https://sanguinesoftwares.com		*
 * All rights reserved.									*
 ********************************************************/
package com.sanguine.qrmenu.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sanguine.qrmenu.beans.clsCostCenterBean;
import com.sanguine.qrmenu.beans.clsModeOfOperationBean;
import com.sanguine.qrmenu.constants.clsConstants;
import com.sanguine.qrmenu.constants.clsRequestParamConstants;
import com.sanguine.qrmenu.constants.clsSessionConstants;
import com.sanguine.qrmenu.model.clsCostCenterMasterModel;
import com.sanguine.qrmenu.model.clsPosMasterModel;
import com.sanguine.qrmenu.model.clsSetupHdModel;
import com.sanguine.qrmenu.service.clsSetupServiceImpl;
import com.sanguine.qrmenu.service.clsUtilityServiceImpl;

@Controller
public class clsLoadModuleController {
	@Autowired
	clsSetupServiceImpl objSetupServiceImpl;
	@Autowired
	private clsUtilityServiceImpl utility;
	/**
	 * ---------------------------------------------------------
	 * 
	 */
	public static final String CST_MODE_OF_OP = "modeOfOperationModel";
	public static final String CST_COST_CENTER_MODEL = "costCenterModel";
	public static final String CST_POS_MASTER_MODEL = "posMasterModel";

	/**
	 * ---------------------------------------------------------
	 * 
	 */
	@RequestMapping(value = "/ModeOfOperation", method = RequestMethod.GET)
	public ModelAndView loadFrmModeOfOperation(Map<String, Object> model, HttpServletRequest request)
			throws ServletException {
		// Client code is mandatory in URL
		if (request.getParameter(clsRequestParamConstants.RP_CLIENT_CODE) == null) {
			return new ModelAndView("error"); // Design needed for this page
		}
		String clientCode = request.getParameter(clsRequestParamConstants.RP_CLIENT_CODE).toString();
		// Now validate if client code is valid or not
		List<clsSetupHdModel> tblSetupEntrieslist = objSetupServiceImpl.listSetup(clientCode);
		if (tblSetupEntrieslist == null || (tblSetupEntrieslist != null && tblSetupEntrieslist.size() == 0)) {
			return new ModelAndView("error"); // Design needed for this page
		}
		clsModeOfOperationBean modelModeOfOp = new clsModeOfOperationBean();
		// Now client code is validated , save it to session
		request.getSession().setAttribute(clsSessionConstants.SV_CLIENT_CODE, clientCode);
		
		String tableNumber = request.getParameter(clsRequestParamConstants.RP_TABLE_NO).toString();
		
		if (tableNumber != null)
		{
			request.getSession().setAttribute(clsSessionConstants.SV_TABLE_NO, tableNumber);
		}
		else
		{
			request.getSession().setAttribute(clsSessionConstants.SV_TABLE_NO, "");
		}
		
		// If Size is 1 , no need to load POS selection Page
		if (tblSetupEntrieslist.size() > 1) {
			clsSetupHdModel setup = tblSetupEntrieslist.get(0);
			String clientName = setup.getStrClientName();
			request.getSession().setAttribute(clsSessionConstants.SV_CLIENT_NAME, clientName);
			modelModeOfOp.setMapOperationTypes(utility.getMapModeOfOperations(setup.getStrOperationType()));
			request.getSession().setAttribute(clsSessionConstants.SV_PAYMENT_GATEWAY, setup.getPaymentGateway());
		}
		
		
		// Here we need to load POS Selection Page
		else if (tblSetupEntrieslist.size() > 1) {

			return new
					 ModelAndView("redirect:/posSelection.html");
			
		}
		
		 if(modelModeOfOp.getMapOperationTypes().size() < 2) { return new
				 ModelAndView("redirect:/posSelection.html"); }
		 
		 
		return new ModelAndView("frmModeOfOperation", CST_MODE_OF_OP, modelModeOfOp);
	}

	/**
	 * ---------------------------------------------------------
	 * 
	 */
	// TODO For now calling everything for single. In future there will be separate
	// controller
	// Controller to Display POS Masters
	@RequestMapping(value = { 
			clsConstants.ModeOfOperationsKeys.STR_DINE_IN,
			clsConstants.ModeOfOperationsKeys.STR_TAKE_AWAY,
			clsConstants.ModeOfOperationsKeys.STR_HOME_DELIVERY
		 })
	public ModelAndView loadPos(Map<String, Object> model, HttpServletRequest request) {
		if (request.getParameter(clsRequestParamConstants.RP_OPERATION_TYPE) == null) {
			return new ModelAndView("error"); // Design needed for this page
		}
		String operationType = request.getParameter(clsRequestParamConstants.RP_OPERATION_TYPE).toString();
		request.getSession().setAttribute(clsSessionConstants.SV_OPERATION_TYPE, operationType);
		return new ModelAndView("redirect:/posSelection.html");
	}

	/**
	 * ---------------------------------------------------------
	 * 
	 */
	
	
	@RequestMapping(value = "/posSelection")
	public ModelAndView showPosSelection(Map<String, Object> model, HttpServletRequest request) {

		String clientCode = (String) request.getSession().getAttribute(clsSessionConstants.SV_CLIENT_CODE);
		clientCode = (clientCode != null) ? clientCode : "437.001";
		request.getSession().setAttribute(clsSessionConstants.SV_CLIENT_CODE, clientCode);
		// Add Current Date As Pos Date In Session Var
		LocalDateTime ldt = LocalDateTime.now();
		String posDate = DateTimeFormatter.ofPattern("yyyy-MM-dd", Locale.ENGLISH).format(ldt);
		// String posDate = "2022-06-01";//TODO need to fetch it from DB. this is for
		// testing purpose
		request.getSession().setAttribute(clsSessionConstants.SV_POS_DATE, posDate);
		// Check Pos Master
		List<clsPosMasterModel> listPosMasters = objSetupServiceImpl.listPosMaster(clientCode);
		request.getSession().setAttribute(clsSessionConstants.SV_POS_DATE, posDate);
		// Single pos , so no need to open pos selection page
		/*
		 * if (listPosMasters.size() == 1) { clsPosMasterModel posMaster =
		 * listPosMasters.get(0); String posCode = posMaster.getStrPosCode(); String
		 * posName = posMaster.getStrPosName();
		 * request.getSession().setAttribute(clsSessionConstants.SV_POS_CODE, posCode);
		 * request.getSession().setAttribute(clsSessionConstants.SV_POS_NAME, posName);
		 * return new ModelAndView( "redirect:/loadCostCenters.html?" +
		 * clsRequestParamConstants.RP_POS_CODE + "=" + posCode); }
		 */
		// Multi Pos
		Map<String, String> mapPosMaster = new HashMap<String, String>();
		Map<String, clsPosMasterModel> mapPosMasterDetails = new HashMap<String, clsPosMasterModel>();
		for (clsPosMasterModel obj : listPosMasters) {
			mapPosMaster.put(obj.getStrPosCode(), obj.getStrPosName());
			mapPosMasterDetails.put(obj.getStrPosCode(), obj);
		}
		model.put("mapPosMaster", mapPosMaster);
		model.put("mapPosMasterDetails", mapPosMasterDetails);
		return new ModelAndView("frmPosSelection", CST_POS_MASTER_MODEL, model);
	}

	/**
	 * ---------------------------------------------------------
	 * 
	 */
	@RequestMapping(value = "/loadCostCenters")
	public ModelAndView loadCostCenter(Map<String, Object> model, HttpServletRequest request) {
		
	
		
		if (request.getParameter(clsRequestParamConstants.RP_POS_CODE) == null) {
			return new ModelAndView("error"); // Design needed for this page
		
		}
		String clientCode = (String) request.getSession().getAttribute(clsSessionConstants.SV_CLIENT_CODE);
		String posCode = request.getParameter(clsRequestParamConstants.RP_POS_CODE).toString();
		if (request.getSession().getAttribute(clsSessionConstants.SV_POS_NAME) == null) {
			clsPosMasterModel objPosMasterModel = objSetupServiceImpl.getPosMasterById(clientCode, posCode);
			if (objPosMasterModel == null) {
				return new ModelAndView("error"); // Design needed for this page
			}
			request.getSession().setAttribute(clsSessionConstants.SV_POS_CODE, objPosMasterModel.getStrPosCode());
			request.getSession().setAttribute(clsSessionConstants.SV_POS_NAME, objPosMasterModel.getStrPosName());
		}
		List<clsCostCenterMasterModel> listCostCenters = objSetupServiceImpl.listCostCenter(clientCode);
		// If Size is 1 , no need to load Cost Center Selection Page selection Page
		if (listCostCenters.size() == 1) {
			clsCostCenterMasterModel objCostCenterMasterModel = listCostCenters.get(0);
			String strCostCenterCode = objCostCenterMasterModel.getStrCostCenterCode();
			String strCostCenterName = objCostCenterMasterModel.getStrCostCenterName();
			request.getSession().setAttribute(clsSessionConstants.SV_COST_CENTER_CODE, strCostCenterCode);
			request.getSession().setAttribute(clsSessionConstants.SV_COST_CENTER_NAME, strCostCenterName);
			return new ModelAndView("redirect:/loadMenu.html?" + clsRequestParamConstants.RP_COST_CENTER_CODE + "="
					+ strCostCenterCode);
		}
		clsCostCenterBean bean = new clsCostCenterBean();
		Map<String, String> mapCostCenter = new HashMap<String, String>();
		Map<String, clsCostCenterMasterModel> mapCostCenterDetails = new HashMap<String, clsCostCenterMasterModel>();
		for (clsCostCenterMasterModel obj : listCostCenters) {
			mapCostCenter.put(obj.getStrCostCenterCode(), obj.getStrCostCenterName());
			mapCostCenterDetails.put(obj.getStrCostCenterCode(), obj);
		}
		
		
		
		///////////////below harsh//////////////
		List<clsPosMasterModel> listPosMasters = objSetupServiceImpl.listPosMaster(clientCode);
		Map<String, String> mapPosMaster = new HashMap<String, String>();
		Map<String, clsPosMasterModel> mapPosMasterDetails = new HashMap<String, clsPosMasterModel>();
		for (clsPosMasterModel obj : listPosMasters) {
			mapPosMaster.put(obj.getStrPosCode(), obj.getStrPosName());
			mapPosMasterDetails.put(obj.getStrPosCode(), obj);
		}
		
		
		
		bean.setMapPosMaster(mapPosMaster);
		bean.setMapPosMasterDetails(mapPosMasterDetails);
		
		
		///////////////////harsh/////////////////
		
		
		bean.setMapCostCenter(mapCostCenter);
		bean.setMapCostCenterDetails(mapCostCenterDetails);
		return new ModelAndView("frmCostCenterSelection", CST_COST_CENTER_MODEL, bean);
	}
	
}
