/********************************************************
 * Copyright (c) 2022 https://sanguinesoftwares.com		*
 * All rights reserved.									*
 ********************************************************/
package com.sanguine.qrmenu.controller;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sanguine.qrmenu.constants.clsRequestParamConstants;

			

@Controller
public class clsLoadModuleController {

	
	
	///////////// harsh /////////////////////
	
	
	
	@RequestMapping(value = "/Bill", method = RequestMethod.GET)
	public ModelAndView loadFrmBill(Map<String, Object> model, HttpServletRequest request)
			throws ServletException {
		// Client code is mandatory in URL
		if (request.getParameter(clsRequestParamConstants.RP_CLIENT_CODE) == null) {
			return new ModelAndView("error"); // Design needed for this page
		}
		
		String clientCode = request.getParameter(clsRequestParamConstants.RP_CLIENT_CODE).toString();
		String billnumber = request.getParameter(clsRequestParamConstants.RP_BILL_NO).toString();
	
		
		
		
		   final String DB_URL = "jdbc:mysql://localhost:3306/premsnew";
		   final String USER = "root";
		   final String PASS = "sanguine";
	
		
		
		
		


		Statement st = null;
		JSONObject obj = new JSONObject();
	    ModelAndView modelAndView = new ModelAndView("frmloadbill");
		try {
			
			
			// class `com.mysql.jdbc.Driver'. This is deprecated. The new driver class is `com.mysql.cj.jdbc.Driver'.
			  Class.forName(
			            "com.mysql.cj.jdbc.Driver");
			
			Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);

			st = conn.createStatement();

			String sql = "";
			sql = "SELECT * FROM tblbillhd WHERE strClientCode = '"+clientCode+"' AND strBillNo = '"+billnumber+"'; ";
			
			
			

			// /////////

			ResultSet rsSwipeStatus = st.executeQuery(sql);
			
			////sonali
			String sql2  = "";
			sql2="SELECT strItemName,dblRate,dblQuantity,dblAmount,dblTaxAmount,dteBillDate,dblDiscountAmt  FROM tblbilldtl WHERE strClientCode = '"+clientCode+"' AND strBillNo = '"+billnumber+"'; ";
			
			
			
			ResultSet rsSwipeStatus2 = st.executeQuery(sql2);
			
			while(rsSwipeStatus2.next())
			{			
				modelAndView.addObject("STRITEMNAME",rsSwipeStatus.getString(1));
				modelAndView.addObject("DBLRATE",rsSwipeStatus.getString(2));
				modelAndView.addObject("DBLQUANTITY",rsSwipeStatus.getString(3));
				modelAndView.addObject("DBLAMOUNT",rsSwipeStatus.getString(4));
				modelAndView.addObject("DBLTAXAMOUNT",rsSwipeStatus.getString(5));
				modelAndView.addObject("DTEBILLDATE",rsSwipeStatus.getString(6));
				modelAndView.addObject("TBLBILLDTL",rsSwipeStatus.getString(7));
			    modelAndView.addObject("STRITEMNAME",rsSwipeStatus.getString(8));
			    
			
			}
			
			
			while (rsSwipeStatus.next()) {

			//	obj.put("CardSwipeStatus", rsSwipeStatus.getString(1));
				//obj.put("SkipWaiterStatus", rsSwipeStatus.getString(2));

				modelAndView.addObject("strBillNo",rsSwipeStatus.getString(1));
				modelAndView.addObject("strAdvBookingNo",  rsSwipeStatus.getString(2));
				modelAndView.addObject("dteBillDate",  rsSwipeStatus.getString(3));
				modelAndView.addObject("strPOSCode",  rsSwipeStatus.getString(4));
				modelAndView.addObject("strSettelmentMode",  rsSwipeStatus.getString(5));
				modelAndView.addObject("dblDiscountAmt",  rsSwipeStatus.getString(6));
				modelAndView.addObject("dblDiscountPer",  rsSwipeStatus.getString(7));
				modelAndView.addObject("dblTaxAmt",  rsSwipeStatus.getString(8));
				modelAndView.addObject("dblSubTotal",  rsSwipeStatus.getString(9));
			    modelAndView.addObject("dblGrandTotal",  rsSwipeStatus.getString(10));
			    modelAndView.addObject("strTakeAway",  rsSwipeStatus.getString(11));
			    modelAndView.addObject("strOperationType",  rsSwipeStatus.getString(12));
			    modelAndView.addObject("strUserCreated",  rsSwipeStatus.getString(13));
		        modelAndView.addObject("strUserEdited",  rsSwipeStatus.getString(14));
		        modelAndView.addObject("dteDateCreated",  rsSwipeStatus.getString(15));
		        modelAndView.addObject("dteDateEdited",  rsSwipeStatus.getString(16));
		        modelAndView.addObject("strClientCode",  rsSwipeStatus.getString(17));
		        modelAndView.addObject("strTableNo",  rsSwipeStatus.getString(18));
		        modelAndView.addObject("strWaiterNo",  rsSwipeStatus.getString(19));
		        modelAndView.addObject("strCustomerCode",  rsSwipeStatus.getString(20));
		        modelAndView.addObject("strManualBillNo",  rsSwipeStatus.getString(21));
		        modelAndView.addObject("intShiftCode",  rsSwipeStatus.getString(22));
		        modelAndView.addObject("intPaxNo",  rsSwipeStatus.getString(23));
		        modelAndView.addObject("strDataPostFlag",  rsSwipeStatus.getString(24)); 
		        modelAndView.addObject("strReasonCode",  rsSwipeStatus.getString(25));
		        modelAndView.addObject("strRemarks",  rsSwipeStatus.getString(26));
		        modelAndView.addObject("dblTipAmount",  rsSwipeStatus.getString(27));
		        modelAndView.addObject("dteSettleDate",  rsSwipeStatus.getString(28));
		        modelAndView.addObject("strCounterCode",  rsSwipeStatus.getString(29));
		        modelAndView.addObject("dblDeliveryCharges",  rsSwipeStatus.getString(30)); 
		        modelAndView.addObject("strCouponCode",  rsSwipeStatus.getString(31));
		        modelAndView.addObject("strAreaCode",  rsSwipeStatus.getString(32));
		        modelAndView.addObject("strDiscountRemark",  rsSwipeStatus.getString(33));
		        modelAndView.addObject("strTakeAwayRemarks",  rsSwipeStatus.getString(34));
		        modelAndView.addObject("strDiscountOn",  rsSwipeStatus.getString(35));
		        modelAndView.addObject("strCardNo",  rsSwipeStatus.getString(36)); 
		        modelAndView.addObject("strTransactionType",  rsSwipeStatus.getString(37));
		        modelAndView.addObject("strJioMoneyRRefNo",  rsSwipeStatus.getString(38));
		        modelAndView.addObject("strJioMoneyAuthCode",  rsSwipeStatus.getString(39));
		        modelAndView.addObject("strJioMoneyTxnId",  rsSwipeStatus.getString(40));
		        modelAndView.addObject("strJioMoneyTxnDateTime",  rsSwipeStatus.getString(41));
		        modelAndView.addObject("strJioMoneyCardNo",  rsSwipeStatus.getString(42)); 
		        modelAndView.addObject("strJioMoneyCardType",  rsSwipeStatus.getString(43));
		        modelAndView.addObject("dblRoundOff",rsSwipeStatus.getString(44));
                modelAndView.addObject("intBillSeriesPaxNo",  rsSwipeStatus.getString(45));
                modelAndView.addObject("dtBillDate",  rsSwipeStatus.getString(46));
		        modelAndView.addObject("intOrderNo",  rsSwipeStatus.getString(47));
		        modelAndView.addObject("strCRMRewardId",  rsSwipeStatus.getString(48));
		        modelAndView.addObject("strNSCTax",  rsSwipeStatus.getString(49));
		        modelAndView.addObject("strKOTToBillNote",  rsSwipeStatus.getString(50));
		        modelAndView.addObject("dblUSDConverionRate",  rsSwipeStatus.getString(51));
		        modelAndView.addObject("strNDTax",  rsSwipeStatus.getString(52));
		        
		       
		
		        
		       
		        
	   
				// ////////////ABOVE BY
				// HARSH/////////////////////////////

			}
			rsSwipeStatus.close();

			st.close();
			conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
		

	    modelAndView.addObject(clsRequestParamConstants.RP_CLIENT_CODE, clientCode);
	    modelAndView.addObject(clsRequestParamConstants.RP_BILL_NO, billnumber);

	    return modelAndView;
	
	}
	
//////////////////


}
