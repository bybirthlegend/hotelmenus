/********************************************************
 * Copyright (c) 2022 https://sanguinesoftwares.com		*
 * All rights reserved.									*
 ********************************************************/
package com.sanguine.qrmenu.service;

import java.util.List;

public interface clsUtilityService {
	@SuppressWarnings("rawtypes")
	public List funGetList(StringBuffer query, String queryType) throws Exception;

	public String getDayName();

	public String dateTodaysDate();

	public String getStrTodaysPricingColumn();

	public String funGetCustomerCodeForQRMenu(String clientCode);
}
