/********************************************************
 * Copyright (c) 2022 https://sanguinesoftwares.com		*
 * All rights reserved.									*
 ********************************************************/
package com.sanguine.qrmenu.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sanguine.qrmenu.beans.clsMenuHead;
import com.sanguine.qrmenu.beans.clsPricingDtl;
import com.sanguine.qrmenu.constants.clsConstants;
import com.sanguine.qrmenu.dao.clsMenuDAO;
import com.sanguine.qrmenu.model.clsBillHdModel;
import com.sanguine.qrmenu.model.clsCustomerMasterModel;

@Service
public class clsMenuServiceImpl implements clsMenuService {
	@Autowired
	private clsMenuDAO menuDAO;
	@Autowired
	private clsUtilityServiceImpl utility;

	// unused
	@Override
	public JSONObject funGetMenuHeads(String strPOSCode, String userCode, String clientCode, String groupCode,
			String groupNames) {
		JSONObject jObjTableData = null;
		try {
			List list = funGetMenuHeadList(strPOSCode, userCode, clientCode, groupCode, groupNames, null);// menuDAO.funGetMenuHeads(sqlBuffer.toString());
			if (list != null && list.size() > 0) {
				jObjTableData = new JSONObject();
				JSONArray jArr = new JSONArray();
				for (int i = 0; i < list.size(); i++) {
					Object[] obj = (Object[]) list.get(i);
					JSONObject objSettle = new JSONObject();
					String strMenuName = obj[1].toString();// .replace(" ", "&#x00A;");
					objSettle.put(clsConstants._STR_MENU_CODE, obj[0].toString());
					objSettle.put(clsConstants._STR_MENU_NAME, strMenuName);
					jArr.add(objSettle);
				}
				jObjTableData.put(clsConstants._MENU_HEADS, jArr);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return jObjTableData;
	}

	@Override
	public List funGetMenuHeadList(String strPOSCode, String userCode, String clientCode, String groupCode,
			String groupNames, String strCostCenterCode) {
		List list = null;
		try {
			StringBuffer sqlBuffer = new StringBuffer();
			sqlBuffer.append(
					"select DISTINCT(e.strMenuCode),e.strMenuName from tblmenuitempricingdtl a,tblgrouphd b,tblsubgrouphd c ,"
							+ " tblitemmaster d,tblmenuhd e"
							+ " where a.strMenuCode= e.strMenuCode and a.strItemCode=d.strItemCode "
							+ " and d.strSubGroupCode=c.strSubGroupCode and c.strGroupCode=b.strGroupCode"
							+ " AND a.strClientCode=e.strClientCode"
							+ " and a.strClientCode=d.strClientCode and d.strClientCode=c.strClientCode and c.strClientCode=b.strClientCode"
							+ " and e.strOperational='Y' AND a.strClientCode='" + clientCode
							+ "' and a.strCostCenterCode ='" + strCostCenterCode + "' ");
			if (groupCode != null) {
				sqlBuffer.append(" and b.strGroupCode='" + groupCode + "' ");
			} else if (groupNames != null) {
				String groupNamesForQuerry = "";
				if (groupNames.contains("AND")) {
					String[] gArrNames = groupNames.split("AND");
					for (String gNames : gArrNames) {
						if (groupNamesForQuerry.length() > 0) {
							groupNamesForQuerry += ",'" + gNames + "'";
						} else {
							groupNamesForQuerry = "'" + gNames + "'";
						}
					}
				} else {
					groupNamesForQuerry = "'" + groupNames + "'";
				}
				sqlBuffer.append(" and b.strGroupName in ( " + groupNamesForQuerry + " )");
			} else {
				sqlBuffer.append(
						" and b.strGroupName in ('FOOD','FOODS','Food','Foods','BEVERAGES','BEVERAGE','Beverage','Beverages','Liquor')");
			}
			sqlBuffer.append(" order by e.intSequence asc; ");
			System.out.println("Menu Head " + sqlBuffer.toString());
			list = menuDAO.funGetMenuHeads(sqlBuffer.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	// unused
	@Override
	public JSONObject funGetMenuItemsWithPricingDtl(String clientCode, String todaysDate, String posCode,
			String gAreaWisePricing, String gDirectAreaCode, String strItemCode) {
		String pricing_column = utility.getStrTodaysPricingColumn();
		JSONObject jObjTableData = new JSONObject();
		List list = null;
		String sql_ItemDtl;
		if (posCode == null) {
			posCode = "";
		}
		try {
			StringBuffer sqlBuilder = new StringBuffer();
			if (clsConstants._N.equalsIgnoreCase(gAreaWisePricing)) {
				sql_ItemDtl = "SELECT a.strItemCode,b.strItemName,a.strTextColor,a." + pricing_column
						+ " as strPrice,a.tmeTimeFrom,a.strAMPMFrom,a.tmeTimeTo,a.strAMPMTo,"
						+ " a.strCostCenterCode,a.strHourlyPricing,a.strSubMenuHeadCode,a.dteFromDate,a.dteToDate,b.strStockInEnable ,a.strMenuCode ,b.strSubGroupCode,c.strGroupCode ,c.strSubGroupName,d.strGroupName,b.strItemDetails ,b.strItemImage"
						+ " " + " FROM tblmenuitempricingdtl a ,tblitemmaster b "
						+ " left outer join tblsubgrouphd c on b.strSubGroupCode=c.strSubGroupCode and b.strClientCode=c.strClientCode "
						+ " left outer join  tblgrouphd d  on c.strGroupCode= d.strGroupCode and c.strClientCode=d.strClientCode  "
						+ "" + "  WHERE  a.strItemCode=b.strItemCode " + "  " + " and date(dteFromDate)<='" + todaysDate
						+ "' and date(dteToDate)>='" + todaysDate + "'" + "  and (a.strPosCode='" + posCode
						+ "' or a.strPosCode='All') " + " "
						+ "  and a.strClientCode=b.strClientCode and a.strClientCode='" + clientCode + "' ";
				if (strItemCode != null && !strItemCode.isEmpty() && strItemCode.length() > 0) {
					sql_ItemDtl += " and b.strItemCode='" + strItemCode + "' ";
				}
				sql_ItemDtl += " ORDER BY b.strItemName ASC ";
			} else {
				sql_ItemDtl = "SELECT a.strItemCode,b.strItemName,a.strTextColor,a." + pricing_column
						+ "as strPrice,a.tmeTimeFrom,a.strAMPMFrom,a.tmeTimeTo,a.strAMPMTo,"
						+ " a.strCostCenterCode,a.strHourlyPricing,a.strSubMenuHeadCode,a.dteFromDate,a.dteToDate,b.strStockInEnable ,a.strMenuCode,b.strSubGroupCode,c.strGroupCode,c.strSubGroupName,d.strGroupName,b.strItemDetails ,b.strItemImage"
						+ " "
						+ " FROM tblmenuitempricingdtl a ,tblitemmaster b left outer join tblsubgrouphd c on b.strSubGroupCode=c.strSubGroupCode and b.strClientCode=c.strClientCode "
						+ " left outer join  tblgrouphd d  on c.strGroupCode= d.strGroupCode  and c.strClientCode=d.strClientCode "
						+ " WHERE a.strAreaCode='" + gDirectAreaCode + "' " + "  and a.strItemCode=b.strItemCode "
						+ " and (a.strPosCode='" + posCode + "' or a.strPosCode='All') " + " "
						+ " and date(a.dteFromDate)<='" + todaysDate + "' and date(a.dteToDate)>='" + todaysDate + "' "
						+ " and a.strClientCode=b.strClientCode and a.strClientCode='" + clientCode + "' " + " ";
				if (strItemCode != null && !strItemCode.isEmpty() && strItemCode.length() > 0) {
					sql_ItemDtl += " and b.strItemCode='" + strItemCode + "'  ";
				}
				sql_ItemDtl += "  ORDER BY b.strItemName ASC ";
			}
			sqlBuilder.append(sql_ItemDtl);
			System.out.println("Menu Items " + sql_ItemDtl.toString());
			list = menuDAO.funGetGetMenuItemsWithPricingDtl(sqlBuilder.toString());
			JSONArray jArr = new JSONArray();
			if (list.size() > 0) {
				for (int i = 0; i < list.size(); i++) {
					Object[] obj = (Object[]) list.get(i);
					String itemName = obj[1].toString();// .replace(" ", "&#x00A;");
					JSONObject objSettle = new JSONObject();
					objSettle.put("strItemCode", obj[0].toString());
					objSettle.put("strItemName", itemName);
					objSettle.put("strTextColor", obj[2].toString());
					objSettle.put("strPrice", obj[3].toString());
					objSettle.put("tmeTimeFrom", obj[4].toString());
					objSettle.put("strAMPMFrom", obj[5].toString());
					objSettle.put("tmeTimeTo", obj[6].toString());
					objSettle.put("strAMPMTo", obj[7].toString());
					objSettle.put("strCostCenterCode", obj[8].toString());
					objSettle.put("strHourlyPricing", obj[9].toString());
					objSettle.put("strSubMenuHeadCode", obj[10].toString());
					objSettle.put("dteFromDate", obj[11].toString());
					objSettle.put("dteToDate", obj[12].toString());
					objSettle.put("strStockInEnable", obj[13].toString());
					objSettle.put("strMenuCode", obj[14].toString());
					objSettle.put("strSubGroupCode", obj[15].toString());
					objSettle.put("strGroupcode", obj[16].toString());
					objSettle.put("strSubGroupName", obj[17].toString());
					objSettle.put("strGroupName", obj[18].toString());
					objSettle.put("strItemDetails", obj[19].toString());
					objSettle.put("strItemImage", obj[20].toString());
					jArr.add(objSettle);
				}
			}
			jObjTableData.put(clsConstants._MENU_ITEM_PRICING_DTL, jArr);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return jObjTableData;
	}

	@Override
	public Map<clsMenuHead, List<clsPricingDtl>> funGetMenuItemsWithPricingDtlMap(String clientCode, String posDate,
			String posCode, String gAreaWisePricing, String gDirectAreaCode, String strItemCode,
			String strCostCenterCode) {
		// TODO Auto-generated method stub
		String pricing_column = utility.getStrTodaysPricingColumn();
		Map<clsMenuHead, List<clsPricingDtl>> map = new HashMap<clsMenuHead, List<clsPricingDtl>>();
		String sql_ItemDtl;
		if (posCode == null) {
			posCode = "";
		}
		try {
			List listMenuHeads = funGetMenuHeadList(posCode, null, clientCode, null, null, strCostCenterCode);
			StringBuffer sqlBuilder = new StringBuffer();
			if (listMenuHeads != null && listMenuHeads.size() > 0) {
				for (int i = 0; i < listMenuHeads.size(); i++) {
					Object[] objRawMenuHead = (Object[]) listMenuHeads.get(i);
					String strMenuCode = objRawMenuHead[0].toString();
					String strMenuName = objRawMenuHead[1].toString();
					if (clsConstants._N.equalsIgnoreCase(gAreaWisePricing)) {
						sql_ItemDtl = "SELECT a.strItemCode,b.strItemName,a.strTextColor,cast(a." + pricing_column
								+ " as decimal(10,2))as strPrice,a.tmeTimeFrom,a.strAMPMFrom,a.tmeTimeTo,a.strAMPMTo,"
								+ " a.strCostCenterCode,a.strHourlyPricing,a.strSubMenuHeadCode,a.dteFromDate,a.dteToDate,b.strStockInEnable ,a.strMenuCode ,b.strSubGroupCode,c.strGroupCode ,c.strSubGroupName,d.strGroupName,b.strItemDetails ,b.strItemImage"
								+ " " + " FROM tblmenuitempricingdtl a ,tblitemmaster b "
								+ " left outer join tblsubgrouphd c on b.strSubGroupCode=c.strSubGroupCode and b.strClientCode=c.strClientCode "
								+ " left outer join  tblgrouphd d  on c.strGroupCode= d.strGroupCode and c.strClientCode=d.strClientCode  "
								+ "" + "  WHERE  a.strItemCode=b.strItemCode " + "  " + " and date(dteFromDate)<='"
								+ posDate + "' and date(dteToDate)>='" + posDate + "'" + "  and (a.strPosCode='"
								+ posCode + "' or a.strPosCode='All') " + " "
								+ "  and a.strClientCode=b.strClientCode and a.strClientCode='" + clientCode
								+ "' and a.strMenuCode='" + strMenuCode + "'  and a.strCostCenterCode ='"
								+ strCostCenterCode + "' ";
						if (strItemCode != null && !strItemCode.isEmpty() && strItemCode.length() > 0) {
							sql_ItemDtl += " and b.strItemCode='" + strItemCode + "' ";
						}
						sql_ItemDtl += " ORDER BY b.strItemName ASC ";
					} else {
						sql_ItemDtl = "SELECT a.strItemCode,b.strItemName,a.strTextColor,cast(a." + pricing_column
								+ " as decimal(10,2))as strPrice,a.tmeTimeFrom,a.strAMPMFrom,a.tmeTimeTo,a.strAMPMTo,"
								+ " a.strCostCenterCode,a.strHourlyPricing,a.strSubMenuHeadCode,a.dteFromDate,a.dteToDate,b.strStockInEnable ,a.strMenuCode,b.strSubGroupCode,c.strGroupCode,c.strSubGroupName,d.strGroupName,b.strItemDetails ,b.strItemImage"
								+ " "
								+ " FROM tblmenuitempricingdtl a ,tblitemmaster b left outer join tblsubgrouphd c on b.strSubGroupCode=c.strSubGroupCode and b.strClientCode=c.strClientCode "
								+ " left outer join  tblgrouphd d  on c.strGroupCode= d.strGroupCode  and c.strClientCode=d.strClientCode "
								+ " WHERE a.strAreaCode='" + gDirectAreaCode + "' "
								+ "  and a.strItemCode=b.strItemCode " + " and (a.strPosCode='" + posCode
								+ "' or a.strPosCode='All') " + " " + " and date(a.dteFromDate)<='" + posDate
								+ "' and date(a.dteToDate)>='" + posDate + "' "
								+ " and a.strClientCode=b.strClientCode and a.strClientCode='" + clientCode
								+ "' and a.strMenuCode='" + strMenuCode + "'  and a.strCostCenterCode ='"
								+ strCostCenterCode + "' ";
						if (strItemCode != null && !strItemCode.isEmpty() && strItemCode.length() > 0) {
							sql_ItemDtl += " and b.strItemCode='" + strItemCode + "'  ";
						}
						sql_ItemDtl += "  ORDER BY b.strItemName ASC ";
					}
					System.out.println("Menu Items " + sql_ItemDtl.toString());
					sqlBuilder.append(sql_ItemDtl);
					List list_raw = menuDAO.funGetGetMenuItemsWithPricingDtl(sqlBuilder.toString());
					List<clsPricingDtl> list = new ArrayList<clsPricingDtl>();
					if (list_raw.size() > 0) {
						for (int j = 0; j < list_raw.size(); j++) {
							Object[] obj = (Object[]) list_raw.get(j);
							clsPricingDtl objPricing = new clsPricingDtl();
							objPricing.setStrItemCode(obj[0].toString());
							objPricing.setStrItemName(obj[1].toString());
							objPricing.setStrTextColor(obj[2].toString());
							objPricing.setDblPrice(Double.parseDouble(obj[3].toString()));
							objPricing.setTmeTimeFrom(obj[4].toString());
							objPricing.setStrAMPMFrom(obj[5].toString());
							objPricing.setTmeTimeTo(obj[6].toString());
							objPricing.setStrAMPMTo(obj[7].toString());
							objPricing.setStrCostCenterCode(obj[8].toString());
							objPricing.setStrHourlyPricing(obj[9].toString());
							objPricing.setStrSubMenuHeadCode(obj[10].toString());
							objPricing.setDteFromDate(obj[11].toString());
							objPricing.setDteToDate(obj[12].toString());
							objPricing.setStrStockInEnable(obj[13].toString());
							objPricing.setStrMenuCode(obj[14].toString());
							objPricing.setStrSubGroupCode(obj[15].toString());
							objPricing.setStrGroupcode(obj[16].toString());
							objPricing.setStrSubGroupName(obj[17].toString());
							objPricing.setStrGroupName(obj[18].toString());
							objPricing.setStrItemDetails(obj[19].toString());
							objPricing.setStrItemImage(obj[20].toString());
							list.add(objPricing);
						}
						clsMenuHead objMenuHead = new clsMenuHead(strMenuCode, strMenuName);
						map.put(objMenuHead, list);
					}
					// sqlBuilder.setLength(0);
					sqlBuilder = new StringBuffer();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}

	/**
	 * This method takes bill Series Prefix as F,L etc.
	 * 
	 * @param billSeriesPrefix
	 * @return billNo for this bill series prefix
	 */
	public String funGetBillSeriesBillNo(String billSeriesPrefix, String posCode, String clientCode) {
		String billSeriesBillNo = "";
		try {
			int billSeriesLastNo = 0;
			StringBuilder sqlBuilder = new StringBuilder();
			sqlBuilder.setLength(0);
			sqlBuilder.append("select a.intLastNo " + "from tblbillseries a " + "where a.strBillSeries='"
					+ billSeriesPrefix + "' " + "and (a.strPOSCode='" + posCode
					+ "' OR a.strPOSCode='All') and strClientCode='" + clientCode + "' ");
			List listOfBillSeriesLatNo = menuDAO.funGetList(sqlBuilder, "sql");
			if (listOfBillSeriesLatNo != null && listOfBillSeriesLatNo.size() > 0) {
				billSeriesLastNo = Integer.parseInt(listOfBillSeriesLatNo.get(0).toString());
			}
			billSeriesBillNo = billSeriesPrefix + "" + posCode + "" + String.format("%05d", (billSeriesLastNo + 1));
			// update last bill series last no
			String sqlUpdate = "update tblbillseries " + "set intLastNo='" + (billSeriesLastNo + 1) + "' "
					+ "where (strPOSCode='" + posCode + "' OR strPOSCode='All') " + "and strBillSeries='"
					+ billSeriesPrefix + "' and strClientCode='" + clientCode + "' ";
			menuDAO.funExecuteUpdate(sqlUpdate, "sql");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return billSeriesBillNo;
	}

	public int funGetLastOrderNo() {
		int orderNo = 0;
		try {
			StringBuilder sql = new StringBuilder("select * from tblinternal a  where a.strTransactionType='OrderNo' ");
			List list = menuDAO.funGetList(sql, "sql");
			if (list.size() > 0) {
				Object[] obj = (Object[]) list.get(0);
				orderNo = Integer.parseInt(obj[1].toString());
				orderNo++;
				menuDAO.funExecuteUpdate(
						"update tblinternal set dblLastNo=(dblLastNo+1) where strTransactionType='OrderNo' ", "sql");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return orderNo;
	}

	public void funSave(clsBillHdModel objBillHd) {
		menuDAO.funSave(objBillHd);
	}

	public void funSaveCustomerMaster(clsCustomerMasterModel objCustomer) {
		menuDAO.funSave(objCustomer);
	}
}