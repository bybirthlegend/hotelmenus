/********************************************************
 * Copyright (c) 2022 https://sanguinesoftwares.com		*
 * All rights reserved.									*
 ********************************************************/
package com.sanguine.qrmenu.controller;


import java.io.BufferedReader;
import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Map;

import java.io.Reader;
import java.io.FileReader;

import java.util.List;
import java.util.ArrayList;

import java.util.HashMap;
import java.io.IOException;

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

	
	
	
    private File file;
    private BufferedReader br;
    static String[] configData;
    static String[] tempData;
    private String fileData;
    private int i;
	
	
	
	
	
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
	
		
		
		
		
		
		
		
		
		
        clsLoadModuleController.configData = new String[45];
        clsLoadModuleController.tempData = new String[45];
        this.file = new File(String.valueOf(System.getProperty("user.dir")) + "/BillConfig.txt");
        System.out.print("File Path= " + this.file.getAbsolutePath());
        System.out.print("File Path= " + System.getProperty("user.dir"));
     
        List<String> list = new ArrayList<String>();
        
        
        
        
        
        
        try {
            final FileReader fr = new FileReader(this.file);
            final BufferedReader br = new BufferedReader(fr);
            final StringBuffer sb = new StringBuffer();
            String line;
            while ((line = br.readLine()) != null) {
                list.add(line);
                sb.append(line);
                sb.append("\n");
            }
            fr.close();
            System.out.println("Contents of File: ");
            System.out.println(sb.toString());
        }
        catch (IOException e) {
            e.printStackTrace();
        }
        
        
        
		
		
		
		  final String DB_URL = list.get(0).substring(list.get(0).lastIndexOf("=") +
		  1).trim(); final String USER =
		  list.get(1).substring(list.get(1).lastIndexOf("=") + 1).trim(); final String
		  PASS = list.get(2).substring(list.get(2).lastIndexOf("=") + 1).trim();
		 
		
		
		
		/*
		 * final String DB_URL = "jdbc:mysql://localhost:3306/premsnew"; final String
		 * USER = "root"; final String PASS = "sanguine";
		 */
	
		
		
		
		




	
	    
	    
	    
	    
        final List<HashMap> countryList = new ArrayList<HashMap>();
        final List<HashMap> taxList = new ArrayList<HashMap>();
        final ArrayList<HashMap> itemlist = new ArrayList<HashMap>();
        Statement st = null;
        final JSONObject obj = new JSONObject();
        final ModelAndView modelAndView = new ModelAndView("frmloadbill");
	    
	    
	    
	    
		try {
			
			
            Class.forName("com.mysql.cj.jdbc.Driver");
             Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            st = conn.createStatement();
            String sql = "";
            sql = "SELECT * FROM tblbillhd WHERE strClientCode = '" + clientCode + "' AND strBillNo = '" + billnumber + "'; ";
           ResultSet rsSwipeStatus = st.executeQuery(sql);
           
           
           
           
           
           
           
           
           
           while (rsSwipeStatus.next()) {
               modelAndView.addObject("strBillNo", (Object)rsSwipeStatus.getString(1));
               modelAndView.addObject("strAdvBookingNo", (Object)rsSwipeStatus.getString(2));
               modelAndView.addObject("dteBillDate", (Object)rsSwipeStatus.getString(3));
               modelAndView.addObject("strPOSCode", (Object)rsSwipeStatus.getString(4));
               modelAndView.addObject("strSettelmentMode", (Object)rsSwipeStatus.getString(5));
               modelAndView.addObject("dblDiscountAmt", (Object)rsSwipeStatus.getString(6));
               modelAndView.addObject("dblDiscountPer", (Object)rsSwipeStatus.getString(7));
               modelAndView.addObject("dblTaxAmt", (Object)rsSwipeStatus.getString(8));
               modelAndView.addObject("dblSubTotal", (Object)rsSwipeStatus.getDouble(9));
               modelAndView.addObject("dblGrandTotal", (Object)rsSwipeStatus.getDouble(10));
               modelAndView.addObject("strTakeAway", (Object)rsSwipeStatus.getString(11));
               modelAndView.addObject("strOperationType", (Object)rsSwipeStatus.getString(12));
               modelAndView.addObject("strUserCreated", (Object)rsSwipeStatus.getString(13));
               modelAndView.addObject("strUserEdited", (Object)rsSwipeStatus.getString(14));
               modelAndView.addObject("dteDateCreated", (Object)rsSwipeStatus.getString(15));
               modelAndView.addObject("dteDateEdited", (Object)rsSwipeStatus.getString(16));
               modelAndView.addObject("strClientCode", (Object)rsSwipeStatus.getString(17));
               modelAndView.addObject("strTableNo", (Object)rsSwipeStatus.getString(18));
               modelAndView.addObject("strWaiterNo", (Object)rsSwipeStatus.getString(19));
               modelAndView.addObject("strCustomerCode", (Object)rsSwipeStatus.getString(20));
               modelAndView.addObject("strManualBillNo", (Object)rsSwipeStatus.getString(21));
               modelAndView.addObject("intShiftCode", (Object)rsSwipeStatus.getString(22));
               modelAndView.addObject("intPaxNo", (Object)rsSwipeStatus.getString(23));
               modelAndView.addObject("strDataPostFlag", (Object)rsSwipeStatus.getString(24));
               modelAndView.addObject("strReasonCode", (Object)rsSwipeStatus.getString(25));
               modelAndView.addObject("strRemarks", (Object)rsSwipeStatus.getString(26));
               modelAndView.addObject("dblTipAmount", (Object)rsSwipeStatus.getString(27));
               modelAndView.addObject("dteSettleDate", (Object)rsSwipeStatus.getString(28));
               modelAndView.addObject("strCounterCode", (Object)rsSwipeStatus.getString(29));
               modelAndView.addObject("dblDeliveryCharges", (Object)rsSwipeStatus.getString(30));
               modelAndView.addObject("strCouponCode", (Object)rsSwipeStatus.getString(31));
               modelAndView.addObject("strAreaCode", (Object)rsSwipeStatus.getString(32));
               modelAndView.addObject("strDiscountRemark", (Object)rsSwipeStatus.getString(33));
               modelAndView.addObject("strTakeAwayRemarks", (Object)rsSwipeStatus.getString(34));
               modelAndView.addObject("strDiscountOn", (Object)rsSwipeStatus.getString(35));
               modelAndView.addObject("strCardNo", (Object)rsSwipeStatus.getString(36));
               modelAndView.addObject("strTransactionType", (Object)rsSwipeStatus.getString(37));
               modelAndView.addObject("strJioMoneyRRefNo", (Object)rsSwipeStatus.getString(38));
               modelAndView.addObject("strJioMoneyAuthCode", (Object)rsSwipeStatus.getString(39));
               modelAndView.addObject("strJioMoneyTxnId", (Object)rsSwipeStatus.getString(40));
               modelAndView.addObject("strJioMoneyTxnDateTime", (Object)rsSwipeStatus.getString(41));
               modelAndView.addObject("strJioMoneyCardNo", (Object)rsSwipeStatus.getString(42));
               modelAndView.addObject("strJioMoneyCardType", (Object)rsSwipeStatus.getString(43));
               modelAndView.addObject("dblRoundOff", (Object)rsSwipeStatus.getString(44));
               modelAndView.addObject("intBillSeriesPaxNo", (Object)rsSwipeStatus.getString(45));
               modelAndView.addObject("dtBillDate", (Object)rsSwipeStatus.getString(46));
               modelAndView.addObject("intOrderNo", (Object)rsSwipeStatus.getString(47));
               modelAndView.addObject("strCRMRewardId", (Object)rsSwipeStatus.getString(48));
               modelAndView.addObject("strNSCTax", (Object)rsSwipeStatus.getString(49));
               modelAndView.addObject("strKOTToBillNote", (Object)rsSwipeStatus.getString(50));
               modelAndView.addObject("dblUSDConverionRate", (Object)rsSwipeStatus.getString(51));
               modelAndView.addObject("strNDTax", (Object)rsSwipeStatus.getString(52));
           }
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           String sql2 = "";
           sql2 = "SELECT trim(strItemName),trim(ROUND(dblRate)),trim(ROUND(dblQuantity)),trim(ROUND(dblAmount)),dblTaxAmount,dteBillDate,dblDiscountAmt  FROM tblbilldtl WHERE strClientCode = '" + clientCode + "' AND strBillNo = '" + billnumber + "'; ";
           ResultSet rsSwipeStatus2 = st.executeQuery(sql2);
           int i = 1;
           
           
           
           
           
           while (rsSwipeStatus2.next()) {
               final HashMap<String, String> map = new HashMap<String, String>();
               final String itemName = rsSwipeStatus2.getString(1);
               final String qty = rsSwipeStatus2.getString(3);
               final String rate = rsSwipeStatus2.getString(2);
               final String amount = rsSwipeStatus2.getString(4);
               final int space = 21 - qty.length();
               final String spaces = String.format("%" + space + "s", "");
               map.put("STRITEMNAME", rsSwipeStatus2.getString(1));
               final int space2 = 8 - rate.length();
               final String spaces2 = String.format("%" + space2 + "s", "");
               final int space3 = 9 - amount.length();
               final String spaces3 = String.format("%" + space3 + "s", " ");
               map.put("DBLQUANTITY", String.valueOf(spaces) + rsSwipeStatus2.getString(3));
               map.put("DBLRATE", String.valueOf(spaces2) + rsSwipeStatus2.getString(2));
               map.put("DBLAMOUNT", String.valueOf(spaces3) + rsSwipeStatus2.getString(4));
               map.put("DBLTAXAMOUNT", rsSwipeStatus2.getString(5));
               map.put("DTEBILLDATE", rsSwipeStatus2.getString(6));
               countryList.add(map);
               modelAndView.addObject("countryList", (Object)countryList);
           }
           
           
           
           
           
           
           
           
           String sqlTaxDetail = "";
           
           sqlTaxDetail = "select b.strTaxDesc,ROUND(SUM(a.dblTaxAmount),1)  from tblbilltaxdtl  a,tbltaxhd b, tblbillhd c \r\n\t\t where c.strBillNo='" + billnumber + "' \r\n" + "\t\t  and a.strTaxCode=b.strTaxCode \r\n" + "\t\t    and a.strBillNo=c.strBillNo \r\n" + "\t\t  and a.strClientCode=c.strClientCode \r\n" + "\t\t    and date(a.dteBillDate)=date(c.dteBillDate) \r\n" + "\t\t    \r\n" + "\t\t    and b.strTaxCalculation='Forward' \r\n" + "\t\t   and  a.strClientcode = '" + clientCode + "'\r\n" + "\t\t   and  c.strClientcode = '" + clientCode + "'\r\n" + "\t\t   \r\n" + "\t\t   GROUP BY b.strTaxDesc;";
           
           
           
           
         ResultSet rsTaxDetail = st.executeQuery(sqlTaxDetail);
           while (rsTaxDetail.next()) {
               final HashMap<String, String> map2 = new HashMap<String, String>();
               final String taxdesc = rsTaxDetail.getString(1);
               final String taxamt = rsTaxDetail.getString(2);
               final int space = 20 - taxdesc.length() - taxamt.length();
               final String spaces = String.format("%" + space + "s", "");
               map2.put("strTaxDesc", String.valueOf(rsTaxDetail.getString(1)) + spaces);
               map2.put("dblTaxAmt", rsTaxDetail.getString(2));
               taxList.add(map2);
               modelAndView.addObject("taxList", (Object)taxList);
           }
           
           
           
           
           
           
           
           String sqlDiscounDetail = "";
           
           sqlDiscounDetail = "select a.dblDiscPer,a.dblDiscAmt,a.strDiscOnType,a.strDiscOnValue,b.strReasonName,a.strDiscRemarks \t\t    from tblbilldiscdtl a ,tblreasonmaster b,tblbillhd c \t\t     where a.strDiscReasonCode=b.strReasonCode \t\t    and a.strBillNo=c.strBillNo \t\t     and a.strClientCode=c.strClientCode\t\t     and date(a.dteBillDate)=date(c.dteBillDate) \t\t     and a.strBillNo='" + billnumber + "' " + "\t\t    and c.strClientCode='" + clientCode + "' ";
          
           
           ResultSet rsDiscdetail = st.executeQuery(sqlDiscounDetail);
           while (rsDiscdetail.next()) {
               modelAndView.addObject("dblDiscPer", (Object)(String.valueOf(rsDiscdetail.getDouble(1)) + "%" + " " + "On" + " "));
               modelAndView.addObject("dblDiscAmt", (Object)rsDiscdetail.getDouble(2));
               modelAndView.addObject("strDiscOnType", (Object)rsDiscdetail.getString(3));
               modelAndView.addObject("strReasonName", (Object)rsDiscdetail.getString(5));
               modelAndView.addObject("strDiscRemarks", (Object)rsDiscdetail.getString(6));
           }
           
           
           
           
           
           String sqlHeaderDetail = "";
           sqlHeaderDetail = "select ifnull(a.strTableNo,''),ifnull(a.strWaiterNo,''),a.dteBillDate,time(a.dteBillDate),a.dblDiscountAmt,a.dblSubTotal,\r\n\t\t    ifnull(a.strCustomerCode,''),a.dblGrandTotal,a.dblTaxAmt,ifnull(a.strReasonCode,''),ifnull(a.strRemarks,''),a.strUserCreated, \r\n\t\t   IFNULL(a.dblDeliveryCharges,0.00),a.dblDiscountPer,b.strPOSName,a.intPaxNo \r\n\t\t  ,ifnull(c.strTableName,''),ifnull(d.strWShortName,''),ifnull(d.strWFullName,''),ifnull(l.strSettelmentType,''),ifnull(j.strReasonName,'') as voidedReason, \r\n\t\t    ifnull(g.strReasonName,''),ifnull(e.strCustomerName,''),ifnull(a.strAdvBookingNo,''),ifnull(a.dblTipAmount,0.00) \r\n\t\t    ,a.strOperationType,ifnull(a.strTakeAwayRemarks,''),ifnull(e.longMobileNo,''),ifnull(m.strCustType,''),ifnull(e.strExternalCode,'')\r\n\t\t    ,ifnull(DATE_FORMAT(date(e.dteDOB),'%d-%m-%Y'),''),ifnull(e.strGSTNo,''),a.strKOTToBillNote,a.dblUSDConverionRate,a.intOrderNo  \r\n \t\t,e.strEmailId ,h.strClientName,\r\n\t\t\th.strAddressLine1,h.strAddressLine2,h.strAddressLine3,h.strCityName  \t\t    from tblbillhd a \r\n\t\t    left outer join tblposmaster b on a.strposCode=b.strPosCode  \r\n\t\t    left outer join tbltablemaster c on a.strTableNo=c.strTableNo and a.strClientCode=c.strClientCode \r\n\t\t    left outer join tblwaitermaster d on a.strWaiterNo=d.strWaiterNo and a.strClientCode=d.strClientCode \r\n\t\t    left outer join tblcustomermaster e on a.strCustomerCode=e.strCustomerCode and a.strClientCode=e.strClientCode \r\n\t\t    left outer join tbldebitcardmaster f on a.strCardNo=f.strCardNo \r\n\t\t    left outer join tblreasonmaster g on a.strReasonCode=g.strReasonCode \r\n \t\tleft outer join tblsetup h on a.strClientCode=h.strClientId \t\t    left outer join tblvoidbillhd j on a.strBillNo=j.strBillNo and a.strposCode=j.strPosCode and a.strClientCode=j.strClientCode \r\n\t\t    left outer join tblbillsettlementdtl k on a.strBillNo=k.strBillNo and a.strClientCode=k.strClientCode AND DATE(a.dteBillDate)=DATE(k.dteBillDate) \r\n\t\t    left outer join tblsettelmenthd l on k.strSettlementCode=l.strSettelmentCode \r\n\t\t    LEFT OUTER JOIN tblcustomertypemaster m ON e.strCustomerType=m.strCustTypeCode \r\n\t\t    where a.strBillNo='" + billnumber + "' \r\n" + "\t\t    AND a.strClientcode = '" + clientCode + "'\r\n" + "\t\t    \r\n" + "\t\t    group by a.strBillNo;\r\n" + "\t   ";
           final ResultSet rsHeaderDetail = st.executeQuery(sqlHeaderDetail);
           while (rsHeaderDetail.next()) {
               modelAndView.addObject("strPOSName", (Object)rsHeaderDetail.getString(15));
               modelAndView.addObject("strTableName", (Object)rsHeaderDetail.getString(17));
               modelAndView.addObject("strWFullName", (Object)rsHeaderDetail.getString(19));
               modelAndView.addObject("longMobileNo", (Object)rsHeaderDetail.getString(28));
               modelAndView.addObject("strGSTNo", (Object)rsHeaderDetail.getString(32));
               modelAndView.addObject("strEmailId", (Object)rsHeaderDetail.getString(36));
               modelAndView.addObject("strClientName", (Object)rsHeaderDetail.getString(37));
               
               String formattedAdress = rsHeaderDetail.getString(38);
               
               formattedAdress.toLowerCase();
               
               formattedAdress = formattedAdress.substring(0, 1).toUpperCase() + formattedAdress.substring(1);  
               
               modelAndView.addObject("strAddressLine1", (Object)formattedAdress);
               modelAndView.addObject("strAddressLine2", (Object)rsHeaderDetail.getString(39));
               modelAndView.addObject("strAddressLine3", (Object)rsHeaderDetail.getString(40));
               modelAndView.addObject("strCityName", (Object)rsHeaderDetail.getString(41));
           }
           rsSwipeStatus.close();
           rsSwipeStatus2.close();
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
