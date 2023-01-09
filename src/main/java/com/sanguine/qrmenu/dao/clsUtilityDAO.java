/********************************************************
 * Copyright (c) 2022 https://sanguinesoftwares.com		*
 * All rights reserved.									*
 ********************************************************/
package com.sanguine.qrmenu.dao;

import java.util.List;

public interface clsUtilityDAO {
	@SuppressWarnings("rawtypes")
	public List funGetList(StringBuffer query, String queryType) throws Exception;
}
