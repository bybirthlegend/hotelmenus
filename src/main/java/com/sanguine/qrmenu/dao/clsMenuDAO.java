/********************************************************
 * Copyright (c) 2022 https://sanguinesoftwares.com		*
 * All rights reserved.									*
 ********************************************************/
package com.sanguine.qrmenu.dao;

import java.util.List;

import com.sanguine.qrmenu.model.clsBillHdModel;
import com.sanguine.qrmenu.model.clsCustomerMasterModel;

public interface clsMenuDAO {
	/**
	 * @param String query : Normal SQL query to fetch menu heads from Database
	 * @return List
	 */
	public List<?> funGetMenuHeads(String strSQLQueryForMenuHead);

	/**
	 * @param strSQL Query For Menu item With Pricing Dtl
	 * @return
	 */
	public List<?> funGetGetMenuItemsWithPricingDtl(String strSQLQueryFortMenuItemWithPricingDtl);

	public List funGetList(StringBuilder query, String queryType) throws Exception;

	public int funExecuteUpdate(String query, String queryType) throws Exception;

	public void funSave(clsBillHdModel objBillHd);

	public void funSave(clsCustomerMasterModel objCustomer);
}
