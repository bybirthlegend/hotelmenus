/********************************************************
 * Copyright (c) 2022 https://sanguinesoftwares.com		*
 * All rights reserved.									*
 * @author Ritesh										*
 ********************************************************/
package com.sanguine.qrmenu.controller;

import java.math.BigDecimal;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Currency;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.sanguine.qrmenu.beans.clsCashFreeResponse;
import com.sanguine.qrmenu.beans.clsFormDataBean;
import com.sanguine.qrmenu.beans.clsMenuHead;
import com.sanguine.qrmenu.beans.clsPricingDtl;
import com.sanguine.qrmenu.constants.DependencyManagedConfigProvider;
import com.sanguine.qrmenu.constants.clsConstants;
import com.sanguine.qrmenu.constants.clsRequestParamConstants;
import com.sanguine.qrmenu.constants.clsSessionConstants;
import com.sanguine.qrmenu.dao.clsMenuDAO;
import com.sanguine.qrmenu.dao.clsUtilityDAO;

import com.sanguine.qrmenu.model.clsBillDtlModel;
import com.sanguine.qrmenu.model.clsBillHdModel;
import com.sanguine.qrmenu.model.clsBillHdModel_ID;
import com.sanguine.qrmenu.model.clsCostCenterMasterModel;
import com.sanguine.qrmenu.model.clsCustomerMasterModel;
import com.sanguine.qrmenu.model.clsCustomerMasterModel_ID;
import com.sanguine.qrmenu.model.clsSetupHdModel;
import com.sanguine.qrmenu.service.clsMenuServiceImpl;
import com.sanguine.qrmenu.service.clsSetupServiceImpl;
import com.sanguine.qrmenu.service.clsUtilityServiceImpl;

import cashfree.client.OrdersClient;
import cashfree.exception.CashfreeException;
import cashfree.models.CustomerDetails;
import cashfree.models.OrderInvoice;
import cashfree.models.OrderMetaData;
import cashfree.models.OrderSplit;
import cashfree.models.request.CreateOrderRequest;
import cashfree.models.request.GetOrderRequest;
import cashfree.models.response.CreateOrderResponse;
import cashfree.models.response.GetOrderResponse;
import cashfree.net.http.HttpConstants;
import cashfree.net.http.HttpHeaders;

@Controller
public class clsMenuController {
	public static final String CST_MENU_MODEL = "menuModel";
	/**
	 * ---------------------------------------------------------
	 * 
	 */
	@Autowired
	private clsMenuDAO menuDAO;
	
	@Autowired
	private clsUtilityDAO utilityDAO;
	

	@Autowired
	clsMenuServiceImpl objMenuServiceImpl;
	@Autowired
	clsSetupServiceImpl objSetupServiceImpl;
	@Autowired
	private clsUtilityServiceImpl utility;

	/**
	 * ---------------------------------------------------------
	 * 
	 */
	@RequestMapping(value = "/loadMenu", method = RequestMethod.GET)
	public ModelAndView funOpenForm(Model model, HttpServletRequest request) {
		String clientCode = (String) request.getSession().getAttribute(clsSessionConstants.SV_CLIENT_CODE);

		String costCenterCode = request.getParameter(clsRequestParamConstants.RP_COST_CENTER_CODE);
		String operationType = request.getParameter(clsRequestParamConstants.RP_OPERATION_TYPE);

		clsCostCenterMasterModel objCostCenterMasterModel = objSetupServiceImpl.getCostCenterById(clientCode,
				costCenterCode);
		if (objCostCenterMasterModel == null) {
			return new ModelAndView("error"); // Design needed for this page
		}
		String costCenterName = objCostCenterMasterModel.getStrCostCenterName();
		// Add Cost Center Code and Name to Session for future use.
		request.getSession().setAttribute(clsSessionConstants.SV_COST_CENTER_NAME, costCenterName);
		request.getSession().setAttribute(clsSessionConstants.SV_COST_CENTER_CODE, costCenterCode);
		request.getSession().setAttribute(clsSessionConstants.SV_OPERATION_TYPE, operationType);

		clsFormDataBean obBillSettlementBean = new clsFormDataBean();
		String posDate = (String) request.getSession().getAttribute(clsSessionConstants.SV_POS_DATE);
		String posCode = (String) request.getSession().getAttribute(clsSessionConstants.SV_POS_CODE);
		String gAreaWisePricing = clsConstants._N;
		Map<clsMenuHead, List<clsPricingDtl>> map_MenuHeadAgainstItems = objMenuServiceImpl
				.funGetMenuItemsWithPricingDtlMap(clientCode, posDate, posCode, gAreaWisePricing, null, null,
						costCenterCode);
		obBillSettlementBean.setMapMenuHeadWithItemDetails(map_MenuHeadAgainstItems);
		Map<String, clsPricingDtl> map_ItemCodeAgainstItemsDetails = new HashMap<String, clsPricingDtl>();
		for (clsMenuHead MenuHead : map_MenuHeadAgainstItems.keySet()) {
			List<clsPricingDtl> listItemDetails = map_MenuHeadAgainstItems.get(MenuHead);
			for (clsPricingDtl itemDetails : listItemDetails) {
				map_ItemCodeAgainstItemsDetails.put(itemDetails.getStrItemCode(), itemDetails);
			}
		}
		obBillSettlementBean.setMapItemDetails(map_ItemCodeAgainstItemsDetails);
		return new ModelAndView("frmMenu", CST_MENU_MODEL, obBillSettlementBean);
	}

	//////////////// payu harsh/////////

	@RequestMapping(value = "/actionMakePaymentpayu", method = RequestMethod.POST)
	public ModelAndView funOpenPayuForm(@ModelAttribute("command") @Valid clsFormDataBean objGroupBean,
			BindingResult result, HttpServletRequest request, Map<String, Object> model) {

		/* double grandTotal = objGroupBean.getDblGrandTotal(); */
		double txTotal = objGroupBean.getDblGrandTotal();
		String address = objGroupBean.getStrAddress();

		// model.put("grandTotal", grandTotal);



		// return new ModelAndView("redirect:/payuform.html?grandTotal=" + grandTotal);
		// After sucessful response save data here
		////
		System.out.println("save data here");
		String clientCode = (String) request.getSession().getAttribute(clsSessionConstants.SV_CLIENT_CODE);
		String posCode = (String) request.getSession().getAttribute(clsSessionConstants.SV_POS_CODE);
		String posDate = (String) request.getSession().getAttribute(clsSessionConstants.SV_POS_DATE);
		String tableNo = (String) request.getSession().getAttribute(clsSessionConstants.SV_TABLE_NO);
		String optyPE = (String) request.getSession().getAttribute(clsSessionConstants.SV_OPERATION_TYPE);
		String billSeriesBillNo = objMenuServiceImpl.funGetBillSeriesBillNo("SM", posCode, clientCode);
		tableNo = (tableNo != null) ? tableNo : "";
		optyPE = (optyPE == null) ? "DineIn" : "";
		/**
		 * Start Customer detail save
		 */
		String strCustomerCode = utility.funGetCustomerCodeForQRMenu(clientCode);
		String customerMasterCode = strCustomerCode;
		String strCreated = utility.funGetCurrentDateTime("yyyy-MM-dd HH:mm:ss");
		
		
		String custName = objGroupBean.getStrCustName();
		String custMobileNo = objGroupBean.getStrMobNum();
		String emailID = objGroupBean.getStrEmailID();
		
		
		if (!(objGroupBean.getListOfBillItemDtl() != null && objGroupBean.getListOfBillItemDtl().size() > 0)) {
			return null;
		}
		
		
		try {
			String strBuildingCode = "";
			clsCustomerMasterModel objCustomer = new clsCustomerMasterModel(
					new clsCustomerMasterModel_ID(customerMasterCode, clientCode));
			objCustomer.setStrCustomerName(custName);
			objCustomer.setStrBuldingCode("");
			objCustomer.setStrBuildingName("");
			objCustomer.setStrStreetName("");
			objCustomer.setStrLandmark("");
			objCustomer.setStrArea("");
			objCustomer.setStrCity("");
			objCustomer.setStrState("");
			objCustomer.setIntPinCode("");
			objCustomer.setLongMobileNo(custMobileNo);
			objCustomer.setStrOfficeBuildingCode("");
			objCustomer.setStrOfficeBuildingName("");
			objCustomer.setStrOfficeStreetName("");
			objCustomer.setStrOfficeLandmark("N");
			objCustomer.setStrOfficeArea("");
			objCustomer.setStrOfficeCity("");
			objCustomer.setStrOfficePinCode("");
			objCustomer.setStrOfficeState("");
			objCustomer.setStrOfficeNo("");
			objCustomer.setStrOfficeAddress("N");
			objCustomer.setStrExternalCode("");
			objCustomer.setStrCustomerType("");
			objCustomer.setDteDOB("1980-01-01 00:00:00");
			objCustomer.setStrGender("");
			objCustomer.setDteAnniversary("1980-01-01 00:00:00");
			objCustomer.setStrEmailId(emailID);
			objCustomer.setStrClientCode(clientCode);
			objCustomer.setStrUserCreated("");
			objCustomer.setStrUserEdited("");
			objCustomer.setDteDateCreated(utility.funGetCurrentDateTime("yyyy-MM-dd"));
			objCustomer.setDteDateEdited(utility.funGetCurrentDateTime("yyyy-MM-dd"));
			objCustomer.setStrCRMId("N");
			objCustomer.setStrCustAddress("");
			objCustomer.setStrDataPostFlag("N");
			objCustomer.setStrGSTNo("");
			objCustomer.setStrTempAddress("");
			objCustomer.setStrTempLandmark("");
			objCustomer.setStrTempStreet("");
			
			
			/* objMenuServiceImpl.funSaveCustomerMaster(objCustomer); */
			
			
			
			
		
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		
		/**
		 * End
		 */
		
		int OrderNo = objMenuServiceImpl.funGetLastOrderNo();
		double subTotalForTax = 0.00, netTotal = 0.00, discPer = 0, discAmt = 0, deliveryCharge = 0.00,
				totalTaxAmt = 0.00, grandTotal = 0.00, tipAmt = 0.00, roudOff = 0.00, usdConvertionRate = 0.00;
		int intBillSeriesPax = 0;
		Date dt = new Date();
		String currentDateTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(dt);
		String dateTime = posDate + " " + currentDateTime.split(" ")[1];
		double total = 0.0;
		List<clsPricingDtl> listOfPunchedItemDtls = objGroupBean.getListOfBillItemDtl();
		List<clsBillDtlModel> listObjBillDtl = new ArrayList<clsBillDtlModel>();
		for (clsPricingDtl ojbPunchedItem : listOfPunchedItemDtls) {
			clsBillDtlModel objBillDtl = new clsBillDtlModel();
			double amount = ojbPunchedItem.getDblPrice();
			subTotalForTax = subTotalForTax + amount + txTotal;
			objBillDtl.setStrItemCode(ojbPunchedItem.getStrItemCode());
			objBillDtl.setStrItemName(ojbPunchedItem.getStrItemName());
			objBillDtl.setStrAdvBookingNo("");
			objBillDtl.setDblRate(ojbPunchedItem.getDblPrice());
			objBillDtl.setDblQuantity(ojbPunchedItem.getDblQuantity());
			objBillDtl.setDblAmount(amount);
			objBillDtl.setDblTaxAmount(0);
			objBillDtl.setDteBillDate(dateTime);
			objBillDtl.setStrKOTNo("NA");
			objBillDtl.setStrCounterCode("");
			objBillDtl.setTmeOrderProcessing("00:00:00");
			objBillDtl.setStrDataPostFlag("N");
			objBillDtl.setStrMMSDataPostFlag("N");
			objBillDtl.setStrManualKOTNo("NA");
			objBillDtl.setTdhYN("N");
			objBillDtl.setStrPromoCode("NA");
			objBillDtl.setStrWaiterNo("NA");
			objBillDtl.setSequenceNo("NA");
			objBillDtl.setTmeOrderPickup("00:00:00");
			objBillDtl.setDblDiscountAmt(0);
			objBillDtl.setDblDiscountPer(0);
			listObjBillDtl.add(objBillDtl);
		}
		///// below by harsh tax aaded to total amount/////////
		grandTotal = subTotalForTax; // Temporary value set
		///////////////
		clsBillHdModel objBillHd = new clsBillHdModel(new clsBillHdModel_ID(billSeriesBillNo, posDate, clientCode));
		objBillHd.setStrBillNo(billSeriesBillNo);
		objBillHd.setStrAdvBookingNo("");
		objBillHd.setDteBillDate(dateTime);
		objBillHd.setStrPOSCode(posCode);
		objBillHd.setStrSettelmentMode("");
		objBillHd.setDblDiscountAmt(discAmt);
		objBillHd.setDblDiscountPer(discPer);
		objBillHd.setDblTaxAmt(txTotal);
		objBillHd.setDblSubTotal(grandTotal - txTotal);
		objBillHd.setDblGrandTotal(grandTotal);
		objBillHd.setStrTakeAway("");
		objBillHd.setStrOperationType(optyPE);
		objBillHd.setStrUserCreated("");
		objBillHd.setStrUserEdited("");
		objBillHd.setDteDateCreated(currentDateTime);
		objBillHd.setDteDateEdited(currentDateTime);
		objBillHd.setStrClientCode(clientCode);
		objBillHd.setStrTableNo(tableNo);
		objBillHd.setStrWaiterNo("");
		objBillHd.setStrCustomerCode(customerMasterCode);
		objBillHd.setStrManualBillNo("");
		objBillHd.setIntShiftCode(0);// /////////////////////////
		objBillHd.setIntPaxNo(0);
		objBillHd.setStrDataPostFlag("N");
		objBillHd.setStrReasonCode("");
		objBillHd.setStrRemarks("");
		objBillHd.setDblTipAmount(0.0);
		objBillHd.setDteSettleDate(posDate);
		objBillHd.setStrCounterCode("");
		objBillHd.setDblDeliveryCharges(0);
		objBillHd.setStrAreaCode("");
		objBillHd.setStrDiscountRemark("");
		objBillHd.setStrTakeAwayRemarks("");
		objBillHd.setStrTransactionType("");
		objBillHd.setIntOrderNo(0);
		objBillHd.setStrCouponCode("");
		objBillHd.setStrJioMoneyRRefNo("");
		objBillHd.setStrJioMoneyAuthCode("");
		objBillHd.setStrJioMoneyTxnId("");
		objBillHd.setStrJioMoneyTxnDateTime("");
		objBillHd.setStrJioMoneyCardNo("");
		objBillHd.setStrJioMoneyCardType("");
		objBillHd.setDblRoundOff(0);
		objBillHd.setIntBillSeriesPaxNo(0);
		objBillHd.setDtBillDate(posDate);
		objBillHd.setIntOrderNo(OrderNo);
		objBillHd.setStrDiscountOn("");
		objBillHd.setStrCardNo("");
		objBillHd.setListBillDtlModel(listObjBillDtl);
		objMenuServiceImpl.funSave(objBillHd);

		
		request.getSession().setAttribute("grandTotal", grandTotal);
		
		
	//// HARSH SAVING CUSTOMER BELOW ////////////
	/*
	 * try {
	 * 
	 * menuDAO.funExecuteUpdate("INSERT INTO `tblcustomermaster` VALUES ('"
	 * +customerMasterCode+"', '"+custName+"', '', '', '"
	 * +address+"', '', '', 'Pune', 'Maharashtra', '', '"
	 * +custMobileNo+"', '', '', '', '', '', '', 'Pune', '', 'Maharashtra', '', 'SANGUINE', 'SANGUINE', '2022-08-06 10:54:29', '2022-08-06 10:54:29', 'N', '"
	 * +clientCode+"', '', '', 'CT001', '1980-01-01 00:00:00', 'Male', '1980-01-01 00:00:00', '', '', '', '', '', '', '', '', 'NA', 0.0000, '', 'null', '', '', '');\r\n"
	 * + "", "sql");
	 * 
	 * } catch (Exception e) { e.printStackTrace(); } //// HARSH SAVING CUSTOMER
	 * ABOVE //////////// //// HARSH SAVING HOME DELIVERY BELOW //////////// try {
	 * 
	 * menuDAO.funExecuteUpdate("INSERT INTO `tblhomedelivery` VALUES ('"
	 * +billSeriesBillNo+"', '001C0010719', 'DB000001', '2021-10-02', '8:43:52:PM', 'P01', '"
	 * +address+"', '', '', '', '', 'N', '"+clientCode+"', 0.00, 0.00);", "sql");
	 * 
	 * } catch (Exception e) { e.printStackTrace(); }
	 */
				
				
			//// HARSH SAVING HOME DELIVERY ABOVE ////////////
				
				
			///////////////////////////////////////////////////////
		
		
		
		
		
		
		
		// set default Table No to session
		
		request.getSession().setAttribute(clsSessionConstants.SV_TABLE_NO, "");
		
		
		
		
		
		
		return new ModelAndView("payuform", "command", objGroupBean);

	}

	//////////////////

	/**
	 * ---------------------------------------------------------
	 * 
	 * @throws MalformedURLException
	 * @throws CashfreeException
	 * @throws JsonProcessingException
	 * 
	 */
	@RequestMapping(value = "/actionMakePayment", method = RequestMethod.POST)
	public String funOpenPayuForm(@ModelAttribute clsFormDataBean objGroupBean, BindingResult result,
			HttpServletRequest request, ModelMap modelMap, RedirectAttributes redir)
			throws MalformedURLException, JsonProcessingException, CashfreeException {


	
		
		// Call PaymentGatewayAPI CashFree here. on Payment Done we will call below
		// code.

		Double grantTotal = objGroupBean.getDblGrandTotal();
		double txTotal = objGroupBean.getDblTotalTaxAmt();

		// After sucessful response save data here
		////
		System.out.println("save data here");
		String clientCode = (String) request.getSession().getAttribute(clsSessionConstants.SV_CLIENT_CODE);
		String posCode = (String) request.getSession().getAttribute(clsSessionConstants.SV_POS_CODE);
		String posDate = (String) request.getSession().getAttribute(clsSessionConstants.SV_POS_DATE);
		String tableNo = (String) request.getSession().getAttribute(clsSessionConstants.SV_TABLE_NO);
		String optyPE = (String) request.getSession().getAttribute(clsSessionConstants.SV_OPERATION_TYPE);
		String billSeriesBillNo = objMenuServiceImpl.funGetBillSeriesBillNo("SM", posCode, clientCode);
		tableNo = (tableNo != null) ? tableNo : "";
		optyPE = (optyPE == null) ? "DineIn" : "";
		/**
		 * Start Customer detail save
		 */
		String strCustomerCode = utility.funGetCustomerCodeForQRMenu(clientCode);
		String customerMasterCode = strCustomerCode;
		String strCreated = utility.funGetCurrentDateTime("yyyy-MM-dd HH:mm:ss");
		
		
		String custName = objGroupBean.getStrCustName();
		String custMobileNo = objGroupBean.getStrMobNum();
		String emailID = objGroupBean.getStrEmailID();
		if (!(objGroupBean.getListOfBillItemDtl() != null && objGroupBean.getListOfBillItemDtl().size() > 0)) {
			return null;
		}
		try {
			String strBuildingCode = "";
			clsCustomerMasterModel objCustomer = new clsCustomerMasterModel(
					new clsCustomerMasterModel_ID(customerMasterCode, clientCode));
			objCustomer.setStrCustomerName(custName);
			objCustomer.setStrBuldingCode("");
			objCustomer.setStrBuildingName("");
			objCustomer.setStrStreetName("");
			objCustomer.setStrLandmark("");
			objCustomer.setStrArea("");
			objCustomer.setStrCity("");
			objCustomer.setStrState("");
			objCustomer.setIntPinCode("");
			objCustomer.setLongMobileNo(custMobileNo);
			objCustomer.setStrOfficeBuildingCode("");
			objCustomer.setStrOfficeBuildingName("");
			objCustomer.setStrOfficeStreetName("");
			objCustomer.setStrOfficeLandmark("N");
			objCustomer.setStrOfficeArea("");
			objCustomer.setStrOfficeCity("");
			objCustomer.setStrOfficePinCode("");
			objCustomer.setStrOfficeState("");
			objCustomer.setStrOfficeNo("");
			objCustomer.setStrOfficeAddress("N");
			objCustomer.setStrExternalCode("");
			objCustomer.setStrCustomerType("");
			objCustomer.setDteDOB("1980-01-01 00:00:00");
			objCustomer.setStrGender("");
			objCustomer.setDteAnniversary("1980-01-01 00:00:00");
			objCustomer.setStrEmailId(emailID);
			objCustomer.setStrClientCode(clientCode);
			objCustomer.setStrUserCreated("");
			objCustomer.setStrUserEdited("");
			objCustomer.setDteDateCreated(utility.funGetCurrentDateTime("yyyy-MM-dd"));
			objCustomer.setDteDateEdited(utility.funGetCurrentDateTime("yyyy-MM-dd"));
			objCustomer.setStrCRMId("N");
			objCustomer.setStrCustAddress("");
			objCustomer.setStrDataPostFlag("N");
			objCustomer.setStrGSTNo("");
			objCustomer.setStrTempAddress("");
			objCustomer.setStrTempLandmark("");
			objCustomer.setStrTempStreet("");
			
			
			/* objMenuServiceImpl.funSaveCustomerMaster(objCustomer); */
			
			
			
			
		
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		
		/**
		 * End
		 */
		
		int OrderNo = objMenuServiceImpl.funGetLastOrderNo();
		double subTotalForTax = 0.00, netTotal = 0.00, discPer = 0, discAmt = 0, deliveryCharge = 0.00,
				totalTaxAmt = 0.00, grandTotal = 0.00, tipAmt = 0.00, roudOff = 0.00, usdConvertionRate = 0.00;
		int intBillSeriesPax = 0;
		Date dt = new Date();
		String currentDateTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(dt);
		String dateTime = posDate + " " + currentDateTime.split(" ")[1];
		double total = 0.0;
		List<clsPricingDtl> listOfPunchedItemDtls = objGroupBean.getListOfBillItemDtl();
		List<clsBillDtlModel> listObjBillDtl = new ArrayList<clsBillDtlModel>();
		for (clsPricingDtl ojbPunchedItem : listOfPunchedItemDtls) {
			clsBillDtlModel objBillDtl = new clsBillDtlModel();
			double amount = ojbPunchedItem.getDblPrice();
			subTotalForTax = subTotalForTax + amount + txTotal;
			objBillDtl.setStrItemCode(ojbPunchedItem.getStrItemCode());
			objBillDtl.setStrItemName(ojbPunchedItem.getStrItemName());
			objBillDtl.setStrAdvBookingNo("");
			objBillDtl.setDblRate(ojbPunchedItem.getDblPrice());
			objBillDtl.setDblQuantity(ojbPunchedItem.getDblQuantity());
			objBillDtl.setDblAmount(amount);
			objBillDtl.setDblTaxAmount(0);
			objBillDtl.setDteBillDate(dateTime);
			objBillDtl.setStrKOTNo("NA");
			objBillDtl.setStrCounterCode("");
			objBillDtl.setTmeOrderProcessing("00:00:00");
			objBillDtl.setStrDataPostFlag("N");
			objBillDtl.setStrMMSDataPostFlag("N");
			objBillDtl.setStrManualKOTNo("NA");
			objBillDtl.setTdhYN("N");
			objBillDtl.setStrPromoCode("NA");
			objBillDtl.setStrWaiterNo("NA");
			objBillDtl.setSequenceNo("NA");
			objBillDtl.setTmeOrderPickup("00:00:00");
			objBillDtl.setDblDiscountAmt(0);
			objBillDtl.setDblDiscountPer(0);
			listObjBillDtl.add(objBillDtl);
		}
		///// below by harsh tax aaded to total amount/////////
		grandTotal = subTotalForTax; // Temporary value set
		///////////////
		clsBillHdModel objBillHd = new clsBillHdModel(new clsBillHdModel_ID(billSeriesBillNo, posDate, clientCode));
		objBillHd.setStrBillNo(billSeriesBillNo);
		objBillHd.setStrAdvBookingNo("");
		objBillHd.setDteBillDate(dateTime);
		objBillHd.setStrPOSCode(posCode);
		objBillHd.setStrSettelmentMode("");
		objBillHd.setDblDiscountAmt(discAmt);
		objBillHd.setDblDiscountPer(discPer);
		objBillHd.setDblTaxAmt(txTotal);
		objBillHd.setDblSubTotal(grandTotal - txTotal);
		objBillHd.setDblGrandTotal(grandTotal);
		objBillHd.setStrTakeAway("");
		objBillHd.setStrOperationType(optyPE);
		objBillHd.setStrUserCreated("");
		objBillHd.setStrUserEdited("");
		objBillHd.setDteDateCreated(currentDateTime);
		objBillHd.setDteDateEdited(currentDateTime);
		objBillHd.setStrClientCode(clientCode);
		objBillHd.setStrTableNo(tableNo);
		objBillHd.setStrWaiterNo("");
		objBillHd.setStrCustomerCode(customerMasterCode);
		objBillHd.setStrManualBillNo("");
		objBillHd.setIntShiftCode(0);// /////////////////////////
		objBillHd.setIntPaxNo(0);
		objBillHd.setStrDataPostFlag("N");
		objBillHd.setStrReasonCode("");
		objBillHd.setStrRemarks("");
		objBillHd.setDblTipAmount(0.0);
		objBillHd.setDteSettleDate(posDate);
		objBillHd.setStrCounterCode("");
		objBillHd.setDblDeliveryCharges(0);
		objBillHd.setStrAreaCode("");
		objBillHd.setStrDiscountRemark("");
		objBillHd.setStrTakeAwayRemarks("");
		objBillHd.setStrTransactionType("");
		objBillHd.setIntOrderNo(0);
		objBillHd.setStrCouponCode("");
		objBillHd.setStrJioMoneyRRefNo("");
		objBillHd.setStrJioMoneyAuthCode("");
		objBillHd.setStrJioMoneyTxnId("");
		objBillHd.setStrJioMoneyTxnDateTime("");
		objBillHd.setStrJioMoneyCardNo("");
		objBillHd.setStrJioMoneyCardType("");
		objBillHd.setDblRoundOff(0);
		objBillHd.setIntBillSeriesPaxNo(0);
		objBillHd.setDtBillDate(posDate);
		objBillHd.setIntOrderNo(OrderNo);
		objBillHd.setStrDiscountOn("");
		objBillHd.setStrCardNo("");
		objBillHd.setListBillDtlModel(listObjBillDtl);
		objMenuServiceImpl.funSave(objBillHd);

		
		
		
		
	//// HARSH SAVING CUSTOMER BELOW ////////////
		
				try {

					menuDAO.funExecuteUpdate("INSERT INTO `tblcustomermaster` VALUES ('"+customerMasterCode+"', '"+custName+"', '', '', '', '', '', 'Pune', 'Maharashtra', '', '"+custMobileNo+"', '', '', '', '', '', '', 'Pune', '', 'Maharashtra', '', 'SANGUINE', 'SANGUINE', '2022-08-06 10:54:29', '2022-08-06 10:54:29', 'N', '"+clientCode+"', '', '', 'CT001', '1980-01-01 00:00:00', 'Male', '1980-01-01 00:00:00', '', '', '', '', '', '', '', '', 'NA', 0.0000, '', 'null', '', '', '');\r\n"+ "", "sql");
					
				} catch (Exception e) {
					e.printStackTrace();
				}
				//// HARSH SAVING CUSTOMER ABOVE ////////////
				//// HARSH SAVING HOME DELIVERY BELOW ////////////
				try {

					menuDAO.funExecuteUpdate("INSERT INTO `tblhomedelivery` VALUES ('"+billSeriesBillNo+"', '001C0010719', 'DB000001', '2021-10-02', '8:43:52:PM', 'P01', 'home', '', '', '', '', 'N', '"+clientCode+"', 0.00, 0.00);", "sql");
					
				} catch (Exception e) {
					e.printStackTrace();
				}
				
				
				
			//// HARSH SAVING HOME DELIVERY ABOVE ////////////
				
				
			///////////////////////////////////////////////////////
		
		
		
		
		
		
		
		// set default Table No to session
		
		request.getSession().setAttribute(clsSessionConstants.SV_TABLE_NO, "");

		////
		try {
			OrdersClient ordersClient = new OrdersClient(new DependencyManagedConfigProvider());

			//// Cashfree Payment Gateway Integration
			String orderId = billSeriesBillNo + OrderNo;
			BigDecimal BgrandTotal = new BigDecimal(grandTotal);
			// BgrandTotal = BgrandTotal.setScale(2, BigDecimal.ROUND_HALF_EVEN);
			CreateOrderRequest createOrderRequest = new CreateOrderRequest();
			CustomerDetails custDetails = new CustomerDetails();
			custDetails.setCustomerId(
					custMobileNo.replaceAll("[^a-zA-Z0-9]", "-") + custName.replaceAll("[^a-zA-Z0-9]", "-"));

			// set customor mobile no to session
			request.getSession().setAttribute(clsSessionConstants.SV_CUST_MOBILE, "" + custMobileNo);

			// set customor mobile no to session
			request.getSession().setAttribute(clsSessionConstants.SV_CUST_NAME, "" + custName);

			System.out.println(" ====== " + custMobileNo);
			System.out.println(" ====== " + custName);
			System.out.println(" ====== " + emailID);
			custDetails.setCustomerName(custName);
			custDetails.setCustomerMail(emailID);
			custDetails.setCustomerPhone(custMobileNo);
			OrderMetaData orderMetaData = new OrderMetaData();
			// QUINTA
			// URL retUrl = new
			// URL("http://localhost:8080/SanguineMenus/success/{order_id}/{order_token}");
			// SANGUINE
			// URL retUrl = new
			// URL("https://kga.quinta.co.in:8450/KarnatakaGolfAssociation/success/{order_id}/{order_token}");
			URL retUrl = new URL("https://kga.quinta.co.in:8450/KarnatakaGolfAssociation/success/{order_id}/{order_token}");
			orderMetaData.setReturnUrl(retUrl);
			orderMetaData.setNotifyUrl(null);
			createOrderRequest.setOrderId(orderId);
			createOrderRequest.setOrderAmount(BgrandTotal);
			createOrderRequest.setOrderNote(
					billSeriesBillNo + ", Client code=" + clientCode + ", posCode=" + posCode + ",posDate =" + posDate);
			createOrderRequest.setCustomerDetails(custDetails);
			createOrderRequest.setOrderMetaData(orderMetaData);
			createOrderRequest.setCurrency(Currency.getInstance("INR"));
			//OrderSplit orderSplit = OrderSplit.builder().vendorId("SEPRESTAU_1").percentage(BigDecimal.valueOf(99.00))
			//		.build();
			//createOrderRequest.setOrderSplits(Collections.singletonList(orderSplit));
			// OrderInvoice invoice =
			// OrderInvoice.builder().gst("1").gstin("27AAFCN5072P1ZV").invoiceDate(new
			// Date())
			// .invoiceNumber("inv1633510110513").invoiceName("sample").cgst("1").build();
			HttpHeaders userControlledHeaders = new HttpHeaders();
			userControlledHeaders.replaceMapping(HttpConstants.HTTP_HEADER_REQUEST_ID_KEY, "request1" + orderId);
			createOrderRequest.setUserControlledHttpHeaders(userControlledHeaders);
			// createOrderRequest.setOrderInvoice(invoice);
			CreateOrderResponse response = ordersClient.createOrder(createOrderRequest);
			System.out.println(" ====== " + response.getPaymentLink() + "/#" + orderId);
			return "redirect:" + response.getPaymentLink() + "/#" + orderId;
		} catch (Exception e) {
			e.printStackTrace();
			// System.out.println(e.getValidationErrors());
			return "redirect:/loadMenu.html";
		}
		/*
		 * 
		 * redir.addFlashAttribute("billNumber", billSeriesBillNo);// Add bill number in
		 * this way redir.addFlashAttribute("companyName", "SEP HOSPITALITY LLP");// Add
		 * bill number in this way return "redirect:/success.html";
		 * 
		 */
	}

	/**
	 * ---------------------------------------------------------
	 * 
	 * @throws CashfreeException
	 * @throws JsonProcessingException
	 * 
	 */
	@RequestMapping(path = "/success/{order_id}/{order_token}")
	public ModelAndView showQrCode(@NotNull @PathVariable("order_id") String order_id,
			@NotNull @PathVariable("order_token") String order_token)
			throws JsonProcessingException, CashfreeException {
		System.out.println("order_id == " + order_id);
		System.out.println("order_token == " + order_token);
		GetOrderRequest getOrderRequest = new GetOrderRequest();
		getOrderRequest.setOrderID(order_id);
		OrdersClient ordersClient = new OrdersClient(new DependencyManagedConfigProvider());
		GetOrderResponse response1 = ordersClient.getOrder(getOrderRequest);
		System.out.println(response1);
		clsCashFreeResponse cashFreeResponse = new clsCashFreeResponse();
		if (response1.getOrderStatus().equals("PAID")) {
			cashFreeResponse.setBillNumber(order_id);
			cashFreeResponse.setCompanyName("SEP HOSPITALITY LLP");
			return new ModelAndView("success", "command", cashFreeResponse);
		} else {
			return new ModelAndView("failure", "command", null);
		}
	}

	@RequestMapping(value = "/orders")
	public ModelAndView showOrders(Model model) {
		return new ModelAndView("orders", "command", model);
	}

	@RequestMapping(value = "/payuform")
	public ModelAndView showpayuform(Model model) {
		return new ModelAndView("payuform", "command", model);
	}

	@RequestMapping(value = "/failure")
	public ModelAndView failure(Model model) {
		return new ModelAndView("failure", "command", model);
	}
	
	// Assign filed function to set data onto form for edit transaction.
	@RequestMapping(value = "/checkcustomer", method = RequestMethod.GET)
	public @ResponseBody String funAssignFields(@RequestParam("mobile") String mobile, HttpServletRequest request) {
		
		String MOBILE = request.getParameter("mobile");
		String name = "";
		String address = "";
		StringBuffer sql= new StringBuffer();
	
		
		
			sql.append("SELECT a.strCustomerName, concat(a.strStreetName,', ',a.strLandmark,', ',a.strBuildingName) Address FROM tblcustomermaster a WHERE a.longMobileNo = '"+MOBILE+"'");
				
				
				List list = null;
				try {
					list = utilityDAO.funGetList(sql, "sql");
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				if (list.size() > 0) {
					Object[] obj = (Object[]) list.get(0);
					
					name  =obj[0].toString();
					address  =obj[1].toString();
				}
		

		return name+"@"+address;
	}

}
