<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.LinkedList"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Single Item Page</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1,shrink-to-fit=no">
<meta name="viewport" content="initial-scale=1.0">
<meta name="viewport" content="width=590">
<meta charset="UTF-8" />
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="<spring:url value="/resources/js/jquery.autocomplete.min.js"/>"></script>
<script type="text/javascript"
	src="<spring:url value="/resources/js/jquery-confirm.min.js"/>"></script>
<script type="text/javascript"
	src="<spring:url value="/resources/js/jquery.autocomplete.min.js"/>"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/5.3.45/css/		materialdesignicons.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/5.3.45/fonts/materialdesignicons-webfont.ttf">
<link rel="stylesheet" type="text/css"
	href="<spring:url value="/resources/css/jquery-confirm.min.css"/>" />
<script type="text/javascript"
	src="<spring:url value="/resources/js/bootstrap.bundle.min.js"/>"></script>
<script type="text/javascript"
	src="<spring:url value="/resources/js/bootstrap.min.js"/>"></script>
<script type="text/javascript"
	src="<spring:url value="/resources/js/mdb.min.js"/>"></script>
<script type="text/javascript"
	src="<spring:url value="/resources/js/print.min.js"/>"></script>
<script type="text/javascript"
	src="<spring:url value="/resources/js/easy-numpad.js"/>"></script>
<script type="text/javascript"
	src="<spring:url value="/resources/js/confirm-prompt.js"/>"></script>
<style type="text/css">
.card {
	/*  background-color: #c7c7c747;
*/
	border-radius: 2px;
	box-shadow: -1px 2px 4px rgba(0, 0, 0, .25), 1px 1px 3px
		rgba(0, 0, 0, .1);
	margin: 0 auto;
	/*  max-width: 340px;*/
	/*  margin-top: 10px;
*/
}
.card-media {
	width: 100%;
}
.card-details {
	padding: 10px 5px;
}
.card-head {
	font-weight: 400;
}
.card-head {
	color: #000000;
}
.card-action-button {
	border-radius: 2px;
	color: #188a36;
	cursor: pointer;
	display: inline-block;
	font-weight: 500;
	margin: 0;
	padding: 10px;
	text-decoration: none;
}
button.btn {
	position: initial;
	color: ff9900;
}
button.btn a {
	color: #fff;
}
.card-action-button:hover {
	background-color: rgba(255, 168, 58, .2);
}
.center {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width:60px;
}
</style>
<script type="text/javascript">
	var objMenuItemButton;
	var objIndex;
	var NumPadDialogFor;
	var itemChangeQtySelected, itemPrice, strItemCode, strItemCodeFromMainMenu, dblItemRate;
	var jsonArrForPricing = $
	{
		command.jsonArrForDirectBillerMenuItemPricing
	};
	$(document).ready(function() {
		funDisplayCart();
	});
	function funUpdateQtyAndAmount() {
		var quantity = 0;
		var amount = 0;
		$.each(listPunchedItmeDtl, function(i, obj) {
			if (strItemCodeFromMainMenu == obj.itemCode) {
				quantity = quantity + obj.quantity;
			}
		})
		$("#txtAddQuantity").val(quantity);
	}
</script>
</head>
<body font-family: 'Poppins', sans-serif;background-color: transparent;" >
	<div class="container" style="width: 615px;">
		<div class="icondiv" style="height: 85px;width: 100%; background-color: transparent;">
		<!-- background-color: transparent; -->
		<!-- 	<i class="mdi mdi-arrow-left" style="margin: 0px 40px; color: #fff; font-size: 45px; font-weight: bolder;"  onclick="funShowDivMenuItems()"></i> 
			 -->
			<img class="center" src="../${pageContext.request.contextPath}/resources/images/x.png" onclick="funShowDivMenuItems()">
			<%-- <a href="#about">
			 <img src="../${pageContext.request.contextPath}/resources/images/iconaddtocart.svg" id=""  onclick="funShowDivOrderReview()"  style="width: 40px;float:right;margin: 10px 60px 0px 0px;"/>
			 </a> 
			  --%>
			<input id="itemCountInSinglePage" style="display:none;background: #ffffff; position:relative; left:320px; border-radius: 25px;  width: 30px; height: 30px" class="rcorners1" readonly="readonly" />
		</div>
		<div class="card" style="border:0">
			<img src="../${pageContext.request.contextPath}/resources/images/foodimages_01.png"
				id="singleItemImage" title="Item Image" style="width:100%;"  class="card-media" />
			<div class="card-details">
				<div class="row">
					<img src="../${pageContext.request.contextPath}/resources/images/icons8-veg.png"
						style="height: 35px; margin-left: 3%; float: left;" /> 
						<label class="card-head" id="idItemName" style="display: inline-block;  font-size: 26px; font-weight: bold;"></label>
				</div>
				<div class="row">
					<label id="idDetails"
						style="color: #7b7272; margin-left: 5%; margin-bottom: 5%; font-size: 20px;"></label>
				</div>
				<div class="row">
					<small class="price"> <label class="mdi mdi-currency-inr"
						id="idPrice"
						style="font-weight: 600; font-size: 30px; color: #000; font-family: 'calibri'; width: 120%; margin-left: 30px;"></label>
					</small>
				</div>
			</div>
		</div>
		<div class="row">
			<div  style="text-align: center;">
				<button class="btn" id="btnAddToCart"	 style="background-color: #ffffff; display: block; width: 0px; height: 0px; font-size: 0px;">
					Add To Cart
				</button>
			</div>
			<div class="number" id="qtydiscplay"></div>
			<div style="text-align: center;">  
				<button class="btn" type="button" id="btnAddItem" onclick="funMenuItem()"  style="border-radius:15px;margin-left:10px;background-color: #1589FF; display: block; width: 515px; height: 60px; font-size: 31px;">
						<a href="#">Add Item</a>
				</button>					
			</div>
		</div> <br>
		<div class="row">
			<div style="text-align: center;width: 100%">
				<div onclick="funDecreaseQty()"
					style="padding-right: 50px; padding-left: 50px; padding-top: 15px; padding-bottom: 15px; border: none; margin-left: 100px; float: left; background-color: #cc2900">
					<i class="fa fa-minus" style="color: white; font-size: 30px"> </i>
				</div>
				<input type="text" id="txtAddQuantity" readonly="readonly" style="border:none;text-align: center;font-size: 48px; color: black; width: 50px; height: 50px; text-align: left"value="1" />
				<div onclick="funIncreaseQty()" 
				   style="padding-right: 50px; padding-left: 50px; padding-top: 15px; padding-bottom: 15px; border: none; margin-right: 100px; float: right; background-color: #1589FF">
					<i class="fa fa-plus" style="color: white; font-size: 30px"> </i>
				</div>
			</div>	
		</div>
	</div>
</body>
</html>