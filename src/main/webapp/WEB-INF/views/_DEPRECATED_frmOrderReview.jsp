<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="java.util.LinkedList"%>
<%@ page import="java.util.List"%>
<%@ page import="com.sanguine.qrmenu.constants.clsSessionConstants"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title></title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" media="screen" href="<spring:url value="/resources/css/bootstrap.min.css"/>" />
	<link rel="stylesheet" type="text/css" media="screen" href="<spring:url value="/resources/css/style.css"/>" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script type="text/javascript" src="<spring:url value="/resources/js/jquery.slim.min.js"/>"></script>
	<script type="text/javascript" src="<spring:url value="/resources/js/popper.min.js"/>"></script>
	<script type="text/javascript" src="<spring:url value="/resources/js/bootstrap.bundle.min.js"/>"></script>
</head>
<body>
<s:form name="1_makePayment" method="POST" action="" modelAttribute="menuModel">
<div id="divOrderDetailsDiv">
	<div id="navbar" class="container-fluid navigation-bg"
		style="padding: 1rem;">
		<div class="container">
			<div class="row">
				<div class="col-7">
					</div>
					<div class="col-1">
					</div>
					<div class="col-1">
						<a href="ModeOfOperation.html?clientCode=<%=session.getAttribute(clsSessionConstants.SV_CLIENT_CODE).toString()%>"><img
							src="../${pageContext.request.contextPath}/resources/images/home.svg"
							width="25px"></a>
					</div>
					<div class="col-1">
						<a href="#"><img src="../${pageContext.request.contextPath}/resources/images/notification.svg" width="25px"></a>
					</div>
					<div class="col-1">
						<a href="javascript:void(0);" onclick="funShowDivOrderReview();"><img
							src="../${pageContext.request.contextPath}/resources/images/iconaddtocart.svg"
							width="25px"></a> <input id="itemCountInMainPage" value="0" style="margin-top:-150px ;background: #ffffff; border-radius: 25px; width: 30px; height: 30px"class="rcorners1" readonly="readonly" onclick="funShowDivOrderReview();"/>
					</div>
			</div>
		</div>
	</div>
	<div class="container-fluid navigation-bg" style="padding:1rem;">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-6">
					<img src="../${pageContext.request.contextPath}/resources/images/Arrow.svg" width="20px" onclick="funShowDivMenuItems()">
				</div>
			</div>
		</div>
	</div>
	<section class="order-from-wrapper">
		<div class="container">
			<h2>Your Order</br>From SEP HOSPITALITY LLP</h2>
		</div>
	</section>
	<section>
		<img src="../${pageContext.request.contextPath}/resources/images/daltadka2.jpg" width="100%">
	</section>
	<section class="mb-5">
		<div class="containerr" style="margin-top:20px;">
			<div class="box">
				<div class="box-row">
					<div class="box-cell box1">
						<table class="table" id="tblSettleItemTable" style="margin:30px 0px;">
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section>
		<div class="container">
			<a href="#" class="apply-coupon-btn">Apply Coupon <span class="float-right">></span> </a>
		</div>
	</section>
	<section class="amount-wrapper">
		<div class="container">
			<table class="table">
				<tbody>
					<tr>
						<td>Items Sub Total</td>
						<td class="text-right" id ="subTotal">Rs. TO-DO.00</td>
					</tr>
					<tr>
						<td class="small-text">Taxes and Charges (5%)</td>
						<td class="text-right" id = "tax">Rs. TO-DO.00</td>
					</tr>
					<tr>
						<td class="weight-600" >To Pay</td>
						<td class="weight-600 float-right" id = "payTotal">Rs. TO-DO.00</td>
					</tr>
				</tbody>
			</table>
		</div>
	</section>
	<section>
		<div class="container">
			<a href="javascript:void(0);" onclick="funShowDivCustomerDetails();" class="cart-btn">Proceed</a>
		</div>
	</section>
</div>
<!-- End of Order Review Div id 'divOrderDetailsDiv' -->
<!-- ----------------------------------------------- -->
<!-- Start of Customer Div id 'divCustomerDetails' -->
<div id="divCustomerDetails">
			<div id="navbar" class="container-fluid navigation-bg"
				style="padding: 1rem;">
				<div class="container">
					<div class="row">
						<div class="col-7">
						</div>
						<div class="col-1">
						</div>
						<div class="col-1">
							<a href="ModeOfOperation.html?clientCode=<%=session.getAttribute(clsSessionConstants.SV_CLIENT_CODE).toString()%>"><img
								src="../${pageContext.request.contextPath}/resources/images/home.svg"
								width="25px"></a>
						</div>
						<div class="col-1">
							<a href="#"><img src="../${pageContext.request.contextPath}/resources/images/notification.svg" width="25px"></a>
						</div>
						<div class="col-1">
							<a href="javascript:void(0);" onclick="funShowDivOrderReview();"><img
								src="../${pageContext.request.contextPath}/resources/images/iconaddtocart.svg"
								width="25px"></a> <input id="itemCountInMainPage" value="0" style="margin-top:-150px ;background: #ffffff; border-radius: 25px; width: 30px; height: 30px"class="rcorners1" readonly="readonly" onclick="funShowDivOrderReview();"/>
						</div>
					</div>
				</div>
			</div>
			<div class="container-fluid navigation-bg" style="padding:1rem;">
				<div class="container">
					<div class="row">
						<div class="col-md-6 col-6">
							<a href="javascript:void(0);" onclick="funBackToDivOrderReview();"><img src="../${pageContext.request.contextPath}/resources/images/Arrow.svg" width="20px"></a>
						</div>
					</div>
				</div>
			</div>
	<section class="order-from-wrapper">
		<div class="container">
			<h2 style="font-size:30px;">Customer Details</h2>
		</div>
	</section>
	<section>
		<div class="container">
			<div class="form-group">
				<s:input style="height:60px;font-size:20px;" type="text" class="form-control" id="name" placeholder="Customer Name*" name="name" path="strCustName"/>
			</div>
			<div class="form-group">
				<s:input type="text" pattern="\d*" maxlength="10" style="height:60px;font-size:20px;" class="form-control" id="mobile-no" placeholder="Mobile No* for Order Notification" name="mobile-no" path="strEmailID"/>
			</div>
			<div class="form-group">
				<s:input style="height:60px;font-size:20px;" type="email" class="form-control" placeholder="Email ID*" id="email" path="strMobNum"/>
			</div>
		</div>
	</section>
	<section>
		<div class="container">
			<a  href="javascript:void(0);" style="height:60px;font-size:20px;"onclick="funMakePayment()" class="cart-btn">Pay Now</a>
		</div>
	</section>
</div>
<!-- End of Customer Div id 'divCustomerDetails' -->
<!-- Start of Hidden Var -->
	<s:hidden id="hidgrandTotal" path="dblGrandTotal"/>
	<s:hidden id="hidSubTotal" path="dblSubTotal"/>
	<s:hidden id="hidTaxTotal" path="dblTotalTaxAmt"/>
<!-- End of Hidden Var -->
</s:form>
</body>
</html>
