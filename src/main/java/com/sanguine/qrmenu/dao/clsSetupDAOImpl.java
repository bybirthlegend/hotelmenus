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

import com.sanguine.qrmenu.model.clsCostCenterMasterModel;
import com.sanguine.qrmenu.model.clsCostCenterMasterModel_ID;
import com.sanguine.qrmenu.model.clsPosMasterModel;
import com.sanguine.qrmenu.model.clsSetupHdModel;
import com.sanguine.qrmenu.model.clsSetupModel_ID;

/**
 * @author Ritesh
 *
 */
@Transactional
@Repository
public class clsSetupDAOImpl implements clsSetupDAO {
	private static final Logger logger = LoggerFactory.getLogger(clsUtilityDAOImpl.class);
	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.sanguine.qrmenu.dao.clsSetupDAO#listSetup()
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List<clsSetupHdModel> listSetup(String clientCode) {
		Session session = this.sessionFactory.getCurrentSession();
		String hql = "FROM clsSetupHdModel WHERE strClientCode=" + clientCode;
		Query query = session.createQuery(hql);
		List<clsSetupHdModel> setupList = query.list();
		/*
		 * for(clsSetupHdModel s : setupList){ logger.info("clsSetupHdModel List::"+s);
		 * }
		 */
		return setupList;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.sanguine.qrmenu.dao.clsSetupDAO#getSetuoById(java.lang.String,
	 * java.lang.String)
	 */
	@Override
	public clsSetupHdModel getSetupById(String clientCode, String posCode) {
		Session session = this.sessionFactory.getCurrentSession();
		clsSetupHdModel s = (clsSetupHdModel) session.load(clsSetupHdModel.class,
				new clsSetupModel_ID(clientCode, posCode));
		// logger.info("clsSetupHdModel loaded successfully, clsSetupHdModel
		// details="+s);
		return s;
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List<clsCostCenterMasterModel> listCostCenter(String clientCode) {
		Session session = this.sessionFactory.getCurrentSession();
		String hql = "FROM clsCostCenterMasterModel WHERE strClientCode=" + clientCode;
		Query query = session.createQuery(hql);
		List<clsCostCenterMasterModel> CostCenterList = query.list();
		/*
		 * for(clsCostCenterMasterModel s : CostCenterList){
		 * logger.info("clsCostCenterMasterModel List::"+s); }
		 */
		return CostCenterList;
	}

	@Override
	public clsCostCenterMasterModel getCostCenterById(String clientCode, String costCenterCode) {
		Session session = this.sessionFactory.getCurrentSession();
		clsCostCenterMasterModel c = (clsCostCenterMasterModel) session.get(clsCostCenterMasterModel.class,
				new clsCostCenterMasterModel_ID(clientCode, costCenterCode));
		// logger.info("Person loaded successfully, clsCostCenterMasterModel
		// details="+c);
		return c;
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List<clsPosMasterModel> listPosMaster(String clientCode) {
		Session session = this.sessionFactory.getCurrentSession();
		String hql = "FROM clsPosMasterModel WHERE strClientCode=" + clientCode + " AND strOperationalYN = 'Y'";
		Query query = session.createQuery(hql);
		List<clsPosMasterModel> posMasterList = query.list();
		/*
		 * for(clsCostCenterMasterModel s : CostCenterList){
		 * logger.info("clsCostCenterMasterModel List::"+s); }
		 */
		return posMasterList;
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public clsPosMasterModel getPosMasterById(String clientCode, String posCode) {
		Session session = this.sessionFactory.getCurrentSession();
		String hql = "FROM clsPosMasterModel WHERE strClientCode=" + clientCode + " AND strPosCode ='" + posCode
				+ "' AND strOperationalYN = 'Y'";
		Query query = session.createQuery(hql);
		List<clsPosMasterModel> posMasterList = query.list();
		clsPosMasterModel p = null;
		if (posMasterList.size() > 0) {
			p = posMasterList.get(0);
		}
		// logger.info("clsSetupHdModel loaded successfully, clsSetupHdModel
		// details="+s);
		return p;
	}

	@Override
	public clsSetupHdModel getPayment() {
		// TODO Auto-generated method stub
		return null;
	}
}
