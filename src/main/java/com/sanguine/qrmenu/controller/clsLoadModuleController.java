/********************************************************
 * Copyright (c) 2022 https://sanguinesoftwares.com		*
 * All rights reserved.									*
 ********************************************************/
package com.sanguine.qrmenu.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

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
	
		

	    
	    ModelAndView modelAndView = new ModelAndView("frmloadbill");
	    modelAndView.addObject(clsRequestParamConstants.RP_CLIENT_CODE, clientCode);
	    modelAndView.addObject(clsRequestParamConstants.RP_BILL_NO, billnumber);
	    return modelAndView;
	
	}
	
//////////////////


}
