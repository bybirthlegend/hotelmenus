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
<title>Scan OTP</title>
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
	<nav
		class="container navbar navbar-expand-sm navbar-dark fixed-top pt-2"
		style="background: #f7f6f7;">
	<form>
		<div class="row" style="margin: 20px 0px 10px;">
			<div class="col-12">
				<h2 onclick="history.back()">
					<a href="#"><img
						src="../${pageContext.request.contextPath}/resources/images/All-20.png"
						style="width: 8px; margin-right: 10px"> </a>Your Orders!
				</h2>
			</div>
		</div>
	</form>
	</nav>
	<div class="container add-to-cart-wrapper" style="margin-top: 80px">
		<div class="row no-gutters">
			<div class="col-md-12">
				<div class="dishlist-wrapper">
					<div class="row">
						<div class="col-8">
							<h4>Order No: 260</h4>
							<h6>Ordered at 12:30 pm; 26-06-22</h6>
							<div class="next-icon">
								<i class="fa fa-chevron-circle-down" aria-hidden="true"></i>
							</div>
						</div>
						<div class="col-4">
							<img
								src="../${pageContext.request.contextPath}/resources/images/All-14.png"
								width="80px;">
						</div>
					</div>
				</div>
				<div class="dishlist-wrapper">
					<div class="row">
						<div class="col-8">
							<h4>Order No: 260</h4>
							<h6>Ordered at 12:30 pm; 26-06-22</h6>
							<div class="next-icon">
								<i class="fa fa-chevron-circle-down" aria-hidden="true"></i>
							</div>
						</div>
						<div class="col-4">
							<img
								src="../${pageContext.request.contextPath}/resources/images/All-14.png"
								width="80px;">
						</div>
					</div>
				</div>
				<div class="dishlist-wrapper">
					<div class="row">
						<div class="col-8">
							<h4>Order No: 260</h4>
							<h6>Ordered at 12:30 pm; 26-06-22</h6>
							<div class="next-icon">
								<i class="fa fa-chevron-circle-down" aria-hidden="true"></i>
							</div>
						</div>
						<div class="col-4">
							<img
								src="../${pageContext.request.contextPath}/resources/images/All-14.png"
								width="80px;">
						</div>
					</div>
				</div>
				<div class="dishlist-wrapper">
					<div class="row">
						<div class="col-8">
							<h4>Order No: 260</h4>
							<h6>Ordered at 12:30 pm; 26-06-22</h6>
							<div class="next-icon">
								<i class="fa fa-chevron-circle-down" aria-hidden="true"></i>
							</div>
						</div>
						<div class="col-4">
							<img
								src="../${pageContext.request.contextPath}/resources/images/All-14.png"
								width="80px;">
						</div>
					</div>
				</div>
				<div class="dishlist-wrapper">
					<div class="row">
						<div class="col-8">
							<h4>Order No: 260</h4>
							<h6>Ordered at 12:30 pm; 26-06-22</h6>
							<div class="next-icon">
								<i class="fa fa-chevron-circle-down" aria-hidden="true"></i>
							</div>
						</div>
						<div class="col-4">
							<img
								src="../${pageContext.request.contextPath}/resources/images/All-14.png"
								width="80px;">
						</div>
					</div>
				</div>
				<div class="dishlist-wrapper">
					<div class="row">
						<div class="col-8">
							<h4>Order No: 260</h4>
							<h6>Ordered at 12:30 pm; 26-06-22</h6>
							<div class="next-icon">
								<i class="fa fa-chevron-circle-down" aria-hidden="true"></i>
							</div>
						</div>
						<div class="col-4">
							<img
								src="../${pageContext.request.contextPath}/resources/images/All-14.png"
								width="80px;">
						</div>
					</div>
				</div>
				<div class="dishlist-wrapper">
					<div class="row">
						<div class="col-8">
							<h4>Order No: 260</h4>
							<h6>Ordered at 12:30 pm; 26-06-22</h6>
							<div class="next-icon">
								<i class="fa fa-chevron-circle-down" aria-hidden="true"></i>
							</div>
						</div>
						<div class="col-4">
							<img
								src="../${pageContext.request.contextPath}/resources/images/All-14.png"
								width="80px;">
						</div>
					</div>
				</div>
				<div class="dishlist-wrapper">
					<div class="row">
						<div class="col-8">
							<h4>Order No: 260</h4>
							<h6>Ordered at 12:30 pm; 26-06-22</h6>
							<div class="next-icon">
								<i class="fa fa-chevron-circle-down" aria-hidden="true"></i>
							</div>
						</div>
						<div class="col-4">
							<img
								src="../${pageContext.request.contextPath}/resources/images/All-14.png"
								width="80px;">
						</div>
					</div>
				</div>
			</div>
		</div>
</body>
</html>
