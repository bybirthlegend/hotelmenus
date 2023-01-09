/********************************************************
 * Copyright (c) 2022 https://sanguinesoftwares.com		*
 * All rights reserved.									*
 ********************************************************/
package com.sanguine.qrmenu.service;

import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sanguine.qrmenu.constants.clsConstants;
import com.sanguine.qrmenu.dao.clsUtilityDAO;

@Service
public class clsUtilityServiceImpl implements clsUtilityService {
	@Autowired
	clsUtilityDAO objUtilityDao;

	@SuppressWarnings("rawtypes")
	@Override
	public List funGetList(StringBuffer query_statement, String queryType) throws Exception {
		return objUtilityDao.funGetList(query_statement, queryType);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.sanguine.qrmenu.service.clsUtilityService#getDay()
	 * 
	 * @ Return day of the week, eg Monday , Tuesday, Wednesday ....
	 * 
	 * @return
	 */
	@Override
	public String getDayName() {
		Format f = new SimpleDateFormat(clsConstants._EEEE);
		String str = f.format(new Date());
		// prints day name
		System.out.println("Day Name: " + str);
		return str;
	}
	/*
	 * (non-Javadoc)
	 * 
	 * @see com.sanguine.qrmenu.service.clsUtilityService#dateTodaysDate()
	 */

	@Override
	public String dateTodaysDate() {
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat(clsConstants._YYYY_MM_DD);
		System.out.println("Today's date: " + sdf.format(cal.getTime()));
		return sdf.format(cal.getTime());
	}

	@Override
	/**
	 * @
	 */
	public String getStrTodaysPricingColumn() {
		String day = null;
		String tempday = getDayName();
		switch (tempday) {
		case clsConstants.Day.SUNDAY:
			day = clsConstants.dbPricingColumn.STR_PRICE_SUNDAY;
			break;
		case clsConstants.Day.MONDAY:
			day = clsConstants.dbPricingColumn.STR_PRICE_MONDAY;
			break;
		case clsConstants.Day.TUESDAY:
			day = clsConstants.dbPricingColumn.STR_PRICE_TUESDAY;
			break;
		case clsConstants.Day.WEDNESDAY:
			day = clsConstants.dbPricingColumn.STR_PRICE_WEDNESDAY;
			break;
		case clsConstants.Day.THURSDAY:
			day = clsConstants.dbPricingColumn.STR_PRICE_THURSDAY;
			break;
		case clsConstants.Day.FRIDAY:
			day = clsConstants.dbPricingColumn.STR_PRICE_FRIDAY;
			break;
		case clsConstants.Day.SATURDAY:
			day = clsConstants.dbPricingColumn.STR_PRICE_SATURDAY;
			break;
		default:
			day = clsConstants.dbPricingColumn.STR_PRICE_SUNDAY;
		}
		return day;
	}

	public String funGetCustomerCodeForQRMenu(String clientCode) {
		long lastNo = 1;
		String propertCode = clientCode.substring(4);
		String customerMasterCode = "";
		try {
			StringBuffer str = new StringBuffer();
			str.append("select ifnull(max(right(strCustomerCode,8)),0) from tblcustomermaster");
			List list = objUtilityDao.funGetList(str, clsConstants._SQL);
			if (!list.get(0).toString().equals("0")) {
				String strCode = "00";
				String code = list.get(0).toString();
				System.out.println("code-->" + code);
				StringBuilder sb = new StringBuilder(code);
				strCode = sb.substring(1, sb.length());
				lastNo = Long.parseLong(strCode);
				lastNo++;
				customerMasterCode = propertCode + "C" + String.format("%07d", lastNo);
			} else {
				customerMasterCode = propertCode + "C" + String.format("%07d", lastNo);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return customerMasterCode;
	}

	public String funGetCurrentDateTime(String pattern) {
		String currentDateTime;
		Date dt = new Date();
		if (pattern.equals("yyyy-MM-dd")) {
			currentDateTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(dt);
		} else {
			currentDateTime = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss").format(dt);
		}
		return currentDateTime;
	}

	public String funGetCurrentDate(String pattern) {
		String currentDate;
		Date dt = new Date();
		currentDate = new SimpleDateFormat(pattern).format(dt);
		return currentDate;
	}

	public Map<String, String> getMapModeOfOperations(String strModeOfOperation) {
		Map<String, String> mapModeOfOperation = new LinkedHashMap<String, String>();
		if (strModeOfOperation == null) {
			mapModeOfOperation.put(clsConstants.ModeOfOperationsKeys.STR_DINE_IN,
					clsConstants.ModeOfOperationsValues.STR_DINE_IN);
			return mapModeOfOperation;
		}
		String arr[] = strModeOfOperation.split(",");
		for (String modeOfOp : arr) {
			
			
			if (modeOfOp.equalsIgnoreCase(clsConstants.ModeOfOperationsKeys.STR_HOME_DELIVERY)
					|| modeOfOp.equalsIgnoreCase(clsConstants.ModeOfOperationsValues.STR_HOME_DELIVERY)) {
				mapModeOfOperation.put(clsConstants.ModeOfOperationsKeys.STR_HOME_DELIVERY,
						clsConstants.ModeOfOperationsValues.STR_HOME_DELIVERY);
			}
			if (modeOfOp.equalsIgnoreCase(clsConstants.ModeOfOperationsKeys.STR_TAKE_AWAY)
					|| modeOfOp.equalsIgnoreCase(clsConstants.ModeOfOperationsValues.STR_TAKE_AWAY)) {
				mapModeOfOperation.put(clsConstants.ModeOfOperationsKeys.STR_TAKE_AWAY,
						clsConstants.ModeOfOperationsValues.STR_TAKE_AWAY);
			}
			
			if (modeOfOp.equalsIgnoreCase(clsConstants.ModeOfOperationsKeys.STR_DINE_IN)
					|| modeOfOp.equalsIgnoreCase(clsConstants.ModeOfOperationsValues.STR_DINE_IN)) {
				mapModeOfOperation.put(clsConstants.ModeOfOperationsKeys.STR_DINE_IN,
						clsConstants.ModeOfOperationsValues.STR_DINE_IN);
			}

		}
		return mapModeOfOperation;
	}
	
	
	
	public String funGetGateway() 
	{
		
		
		return "payu";
	}
	
}
