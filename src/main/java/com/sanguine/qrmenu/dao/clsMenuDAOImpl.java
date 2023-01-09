/********************************************************
 * Copyright (c) 2022 https://sanguinesoftwares.com		*
 * All rights reserved.									*
 ********************************************************/
package com.sanguine.qrmenu.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sanguine.qrmenu.model.clsBillHdModel;
import com.sanguine.qrmenu.model.clsCustomerMasterModel;

@Transactional
@Repository
public class clsMenuDAOImpl implements clsMenuDAO {
	private static final Logger logger = LoggerFactory.getLogger(clsMenuDAOImpl.class);
	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public List<?> funGetMenuHeads(String strSQLQueryForMenuHead) {
		Query query;
		Session session = this.sessionFactory.getCurrentSession();
		query = session.createSQLQuery(strSQLQueryForMenuHead);
		return query.list();
	}

	@SuppressWarnings("rawtypes")
	@Override
	public List<?> funGetGetMenuItemsWithPricingDtl(String strSQLQueryFortMenuItemWithPricingDtl) {
		Query query;
		Session session = this.sessionFactory.getCurrentSession();
		query = session.createSQLQuery(strSQLQueryFortMenuItemWithPricingDtl);
		return query.list();
	}

	@Override
	public List<?> funGetList(StringBuilder strquery, String queryType) throws Exception {
		Query query;
		Session session = this.sessionFactory.getCurrentSession();
		query = session.createSQLQuery(strquery.toString());
		return query.list();
	}

	@Override
	public int funExecuteUpdate(String strquery, String queryType) throws Exception {
		Query query;
		if (queryType.equalsIgnoreCase("sql")) {
			query = this.sessionFactory.getCurrentSession().createSQLQuery(strquery);
			return query.executeUpdate();
		}
		return 0;
	}

	@Override
	public void funSave(clsBillHdModel objBillHd) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(objBillHd);
	}

	@Override
	public void funSave(clsCustomerMasterModel objCustomer) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(objCustomer);
	}
}
