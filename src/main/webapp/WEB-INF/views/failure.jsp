<%@page import="java.security.MessageDigest"%>
<%@page import="java.security.NoSuchAlgorithmException"%>
<%@page import="java.io.*"%>
<%@page import="java.net.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.List"%>
<%@ page import="com.sanguine.qrmenu.constants.clsSessionConstants"%>
<%@ page import="com.sanguine.qrmenu.constants.clsRequestParamConstants"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Payment Failed</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="<spring:url value="../${pageContext.request.contextPath}/resources/css/brandstyle.css"/>">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

	<img
			src="https://kga.quinta.co.in:8450/KarnatakaGolfAssociation/resources/images/payment-error.png"
			width="100%">
			
	
		<div class="row" style="text-align:center">
			<div class="col-12">
					<a href="https://kga.quinta.co.in:8450/KarnatakaGolfAssociation/ModeOfOperation.html?clientCode=437.001&tableNo=" class="btn btn-primary" style="text-align:center; padding: 10px 45px;border-radius: 8px;font-size: 14px; border: none; background: #7a60ff;color: #ffffff;">Home</a> <%-- class="btn-my-order" --%>
			</div>
			
		</div>	
</body>
</html>
