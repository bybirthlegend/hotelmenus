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

import com.sanguine.qrmenu.constants.clsConstants;

@Transactional
@Repository
public class clsUtilityDAOImpl implements clsUtilityDAO {
	private static final Logger logger = LoggerFactory.getLogger(clsUtilityDAOImpl.class);
	private static final String EXCEPTION_MESSAGE = "Query type must be specified as either SQL or HQL";
	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public List funGetList(StringBuffer strQuery, String queryType) throws Exception {
		Query query;
		Session session = this.sessionFactory.getCurrentSession();
		if (queryType.equals(clsConstants._SQL)) {
			query = session.createSQLQuery(strQuery.toString());
			return query.list();
		} else if (queryType.equals(clsConstants._HQL)) {
			query = session.createQuery(strQuery.toString());
			return query.list();
		} else {
			throw new IllegalArgumentException(EXCEPTION_MESSAGE);
		}
	}
}
