<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.LinkedList"%>
<%@ page import="java.util.List"%>
<%@ page import="com.sanguine.qrmenu.constants.clsSessionConstants"%>
<%@ page import =  "org.json.simple.JSONArray" %>
<%@ page import =  "org.json.simple.JSONObject" %>



<!DOCTYPE html>
<html lang="en">
<head>
<title>Menu Items</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
	
	
	<script src="https://code.jquery.com/jquery-3.1.1.min.js">
<%-- <script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script> --%>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="<spring:url value="../${pageContext.request.contextPath}/resources/css/brandstyle.css"/>">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
<script type="text/javascript" >






var operationType = "DineIn";


function myFunction() {
	  var input = document.getElementById("Search");
	  var filter = input.value.toLowerCase();
	  var nodes = document.getElementsByClassName('target');
	  var nodeshead = document.getElementsByClassName('menuhead');	  
	  

	  for (i = 0; i < nodes.length; i++) {
	    if (nodes[i].innerText.toLowerCase().includes(filter)) {
	      nodes[i].style.display = "block";
	    } else {
	      nodes[i].style.display = "none";
	 
	    }
	  }
	}
	/*--------------------------------------------------------------------*/
	$(document).ready(function() {
		/* funShowDivMenuItems(); */
		document.getElementById("buttonview").style.display = 'block';
		


		
	});
	/*--------------------------------------------------------------------*/
	function funShowDivMenuItems() {
		document.getElementById("divMenuItems").style.display = 'block';
		document.getElementById("divOrderReview").style.display = 'none';
		document.getElementById("divCustomerDetails").style.display = 'none';
		document.getElementById("divSingleItem").style.display = 'none';
		document.getElementById("divOrderReview").style.display = 'none';
		document.getElementById("divOrderDetailsDiv").style.display = 'none';
	}
	/*--------------------------------------------------------------------*/
	function funShowDivOrderReview() {
		funFinalItemDetails();
		document.getElementById("divMenuItems").style.display = 'none';
		document.getElementById("divMenuItems").style.display = 'none';
		document.getElementById("divOrderReview").style.display = 'block';
		document.getElementById("divOrderDetailsDiv").style.display = 'block';
		document.getElementById("divSingleItem").style.display = 'none';
		document.getElementById("divCustomerDetails").style.display = 'none';
	}
	/*--------------------------------------------------------------------*/
	function funBackToDivOrderReview() {
		document.getElementById("divMenuItems").style.display = 'none';
		document.getElementById("divOrderReview").style.display = 'block';
		document.getElementById("divOrderDetailsDiv").style.display = 'block';
		document.getElementById("divCustomerDetails").style.display = 'none';
	}
	/*--------------------------------------------------------------------*/
	function funMakePayment() {

		var namee = document.getElementById("name").value;
		var mobilee = document.getElementById("mobile-no").value;
		 
		if(namee.length < 3)
			{
			
			alert("PLease Enter valid name");
			
			}
		else if(mobilee.length < 10)
		{
			alert("PLease Enter valid mobile number");
		
		}
		else
			{
			
			document.makePayment.action = "actionMakePayment.html";
			document.makePayment.method = "POST";
			document.makePayment.submit();
			}
		
		
	}
	///////payu below harsh//////////////
	function funMakePaymentpayu() {
		document.makePayment.action = "actionMakePaymentpayu.html";
		document.makePayment.method = "POST";
		document.makePayment.submit();
	}
	////////////////////////////////////////////
	/*--------------------------------------------------------------------*/
	function funGenerateQRCode() {
		document.makePayment.action = "success.html";
		document.makePayment.method = "POST";
		document.makePayment.submit();
	}
	/*--------------------------------------------------------------------*/
	function funShowDivCustomerDetails() {
		document.getElementById("divMenuItems").style.display = 'none';
		document.getElementById("divOrderReview").style.display = 'block';
		document.getElementById("divOrderDetailsDiv").style.display = 'none';
		document.getElementById("divCustomerDetails").style.display = 'block';
	}
	/*--------------------------------------------------------------------*/
	function funShowSingleItem(itemname, itemCode, price) {
		$('#hidGrandTotal').val(price);
		$('#hidItemCode').val(itemCode);
		//	 var dblOrdQty = $("#dblOrdQty").val();
		document.getElementById("hidItemCode").innerHTML = itemCode;
		/* document.getElementById("navbar").style.display = 'none'; */
		document.getElementById("idItemName").innerHTML = itemname;
		document.getElementById("idPrice").innerHTML = price;
		document.getElementById("divMenuItems").style.display = 'none';
		document.getElementById("divSingleItem").style.display = 'block';
		document.getElementById("divCustomerDetails").style.display = 'none';
		document.getElementById("btnAddItem").value = 1;
	}
	/*--------------------------------------------------------------------*/
</script>
<script type="text/javascript">
	var NofItems = 0;
	var listPunchedItmeDtl = [];
	var price = 0.00;
	var totalprice = 0;
	var Type = "DineIn";
	var pm = false;
	/*--------------------------------------------------------------------*/
	function funMenuItem() {
		$("#txtAddQuantity").val(1);
		var singleObj = {};
		//	Object.freeze(singleObj);
		singleObj['itemName'] = document.getElementById("idItemName").innerHTML;
		singleObj['quantity'] = document.getElementById("txtAddQuantity").value;
		singleObj['itemPrice'] = $('#hidGrandTotal').val();
		singleObj['itemCode'] = $('#hidItemCode').val();
		//	Object.freeze(listPunchedItmeDtl);
		var isduplicate = false;
		var currentitemcode = $('#hidItemCode').val();
		$.each(listPunchedItmeDtl, function(i, obj) {
			if (obj.itemCode == currentitemcode) {
				isduplicate = true;
				obj.quantity = +obj.quantity
						+ +document.getElementById("txtAddQuantity").value;
			}
		})
		if (!isduplicate) {
			listPunchedItmeDtl.push(singleObj);
		}
		document.getElementById("divSingleItem").style.display = 'none';
		document.getElementById("navbar").style.display = 'block';
		document.getElementById("divMenuItems").style.display = 'block';
		document.getElementById("btnAddToCart").style.display = 'block';
		funUpdateCartQty();
	}
	/*--------------------------------------------------------------------*/
	function funDisplayqty() {
		document.getElementById("btnAddToCart").style.display = 'none';
		document.getElementById("itemCountInSinglePage").style.display = 'block';
		document.getElementById("itemCountInMainPage").style.display = 'block';
		document.getElementById("btnAddItem").style.display = 'block';
		$("#txtAddQuantity").val(1);
	}
	/*--------------------------------------------------------------------*/
	function funDisplayCart() {
		document.getElementById("btnAddToCart").style.display = 'block';
		document.getElementById("qtydiscplay").style.display = 'none';
		document.getElementById("btnAddItem").style.display = 'none';
	}
	/*--------------------------------------------------------------------*/
	function funIncreaseQty() {
		var quantity = parseInt($("#txtAddQuantity").val());
		var oldQty = quantity + 1;
		$("#txtAddQuantity").val(oldQty);
		$("#itemCountInSinglePage").val(oldQty);
		///dblItemRate
		var Amt = $("#idPrice").text();
		var TotalAmt = parseFloat(Amt) + parseFloat(dblItemRate);
		//$("#idPrice").text(TotalAmt);
		$("#idPrice").text(Amt);
	}
	/*--------------------------------------------------------------------*/
	function funDecreaseQty() {
		if (parseInt($("#txtAddQuantity").val()) == 0) {
			funDisplayCart();
		} else {
			var Newqty = parseInt($("#txtAddQuantity").val()) - 1;
			$("#txtAddQuantity").val(Newqty);
			var Amt = $("#idPrice").text();
			var TotalAmt = parseFloat(Amt) - parseFloat(dblItemRate);
			$("#idPrice").text(TotalAmt);
		}
	}
	/*--------------------------------------------------------------------*/
	function funUpdateCartQty() {
		var quantity = 0;
		$.each(listPunchedItmeDtl, function(i, obj) {
			if (!(obj.itemName.startsWith("-->"))) {
				quantity = +quantity + +obj.quantity;
			}
		})
		//	$("#itemCountInSinglePage").val(quantity);
		$("#itemCountInMainPage").val(quantity);
		
		pm = false;
	}
	/*--------------------------------------------------------------------*/
	function funFinalItemDetails() {
		console.log("funFinalItemDetails() called");
		var tblSettleItemDtl = document.getElementById('tblSettleItemTable');
		var $rows = $('#tblSettleItemTable').empty();
		var TotalAmt = 0.00;
		$
				.each(
						listPunchedItmeDtl,
						function(i, obj) {
							var rowCount = tblSettleItemDtl.rows.length;
							var insertRow = tblSettleItemDtl
									.insertRow(rowCount);
							var col1 = insertRow.insertCell(0);
							var col2 = insertRow.insertCell(1);
							var col3 = insertRow.insertCell(2);
							var col4 = insertRow.insertCell(3);
							var col5 = insertRow.insertCell(4);
							var dblAmount = obj.itemPrice;
							TotalAmt = TotalAmt + dblAmount;
							col1.innerHTML = "<input readonly=\"readonly\" size=\"33px\"  class=\"itemName\" style=\"text-align:left;color:black;height:30px;width:380px;border:none; padding-left:5px;font-size:21px;font-weight:600;font-family:'calibri';margin-bottom:8px;\"   name=\"listOfBillItemDtl["
									+ (rowCount)
									+ "].strItemName\" id=\"strItemName."
									+ (rowCount)
									+ "\" value='"
									+ obj.itemName
									+ "' />";
							col2.innerHTML = "	<div class=\"\" id=\"qtysettle\" style=\"width:120%;height:85px;margin-top:-8px;font-weight:100;\" >"
									+ " <span class=\"minus\"  onclick=\"funSettleDecreaseQty(this,"
									+ rowCount
									+ ")\" style=\"font-size: 45px;\">-</span>"
									+ "<input type=\"text\" style=\" padding-left: 12px; font-size: 23px;color: black; width:37%;height:56%;text-align: left\" name=\"listOfBillItemDtl["
									+ (rowCount)
									+ "].dblQuantity\" id=\"dblQuantity."
									+ (rowCount)
									+ "\" value='"
									+ obj.quantity
									+ "' />"
									+ " <span class=\"plus\"  onclick=\"funSettleIncreaseQty(this,"
									+ rowCount
									+ ")\" style=\"font-size: 22px;float:right;display:contents;font-weight:800;\">+</span></div></div>"
							col3.innerHTML = "<span style=\"font-size:17px;\" class=\"mdi mdi-currency-inr\"></span><input readonly=\"readonly\" size=\"20px\" class=\"itemAmt\" style=\"text-align: left; color:black; height:30px;width:53px;font-size:21px;margin-top:-6px;border:none;font-family:'calibri';\"  name=\"listOfBillItemDtl["
									+ (rowCount)
									+ "].amount\" id=\"dblAmount."
									+ (rowCount)
									+ "\" value='"
									+ dblAmount
									+ "'/>";
							col4.innerHTML = "<input type=\"hidden\" size=\"0px\"   class=\"itemCode\"  name=\"listOfBillItemDtl["
									+ (rowCount)
									+ "].strItemCode\" id=\"itemCode."
									+ (rowCount)
									+ "\" value='"
									+ obj.itemCode
									+ "' />";
							col5.innerHTML = "<input type=\"hidden\" size=\"0px\"   class=\"rate\"  name=\"listOfBillItemDtl["
									+ (rowCount)
									+ "].dblPrice\" id=\"rate."
									+ (rowCount)
									+ "\" value='"
									+ obj.itemPrice
									+ "' />";
						})
		funCalculateTotals(TotalAmt);//TotalAmt is without tax
		console.log("Amount = " + TotalAmt);
	}
	/*--------------------------------------------------------------------*/
	function funCalculateTotals(tempSubTotal) {
		$("#hidSubTotal").val(0.0);
		$("#hidgrandTotal").val(0.0);
		$("#hidTaxTotal").val(0.0);
		document.getElementById("finaltotal").innerHTML = '';
		document.getElementById("finalTax").innerHTML = '';
		document.getElementById("finalGrandtotal").innerHTML = '';
		
		var subTotal = tempSubTotal;
		var percentToGet = 5;//flat 5 %
		var taxAmount = ((percentToGet / 100) * subTotal).toFixed(2);
		
		var taxAmountRounded = ((percentToGet / 100) * subTotal).toFixed();
		console.log("percent = " + taxAmount);
		
		
		var grandTotal = parseFloat(subTotal) + parseFloat(taxAmountRounded);
		
		//set value to hidden var
		$("#hidSubTotal").val(subTotal);
		$("#hidgrandTotal").val(grandTotal);
		$("#hidTaxTotal").val(taxAmountRounded);
		document.getElementById("finaltotal").innerHTML = 'Sub total: ₹'
				+ subTotal;
		document.getElementById("finalTax").innerHTML = 'Taxes: ₹' + taxAmount;
		document.getElementById("finalGrandtotal").innerHTML = 'Payable Amount: ₹'
				+ grandTotal;
	}
	/*--------------------------------------------------------------------*/
	function funSettleIncreaseQty(obj, index) {
		var qtyInc = document.getElementById("dblQuantity." + index).value;
		var qty = parseInt(qtyInc) + parseInt(1);
		document.getElementById("dblQuantity." + index).value = qty;
		var amount = document.getElementById("dblAmount." + index).value;
		var rate = amount / qtyInc;
		var total = parseInt(rate) * qty;
		document.getElementById("dblAmount." + index).value = total;
		//Recalculate Sub total(Without Tax)
		var oldSubtotal = parseFloat($("#hidSubTotal").val());
		var newSubtotal = parseFloat(oldSubtotal) + parseFloat(rate);
		funCalculateTotals(newSubtotal)
	}
	/*--------------------------------------------------------------------*/
	function funSettleDecreaseQty(obj, index) {
		var qtyDec = document.getElementById("dblQuantity." + index).value;
		var qty = parseInt(qtyDec) - parseInt(1);
		if (!(parseInt(qty) == 0)) {
			document.getElementById("dblQuantity." + index).value = qty;
			var amount = document.getElementById("dblAmount." + index).value;
			var rate = amount / qtyDec;
			var total = parseInt(rate) * qty;
			document.getElementById("dblAmount." + index).value = total;
			//Recalculate Sub total(Without Tax)
			var oldSubtotal = parseFloat($("#hidSubTotal").val());
			var newSubtotal = parseFloat(oldSubtotal) - parseFloat(rate);
			funCalculateTotals(newSubtotal)
		}
	}
	////////////////
	function funPLUS(BTID, INID, LID, PRICE, ICODE) {
		var currentValue = parseInt(document.getElementById(INID).value, 10);
		var newvalue = currentValue + 1;
		document.getElementById(INID).value = newvalue;
		$.each(listPunchedItmeDtl, function(i, obj) {
			if (obj.itemCode == ICODE) {
				obj.quantity = +obj.quantity + 1;
				var pricexqty = parseInt(PRICE) * newvalue;
				obj.itemPrice = +pricexqty;
			}
		})
		totalprice = parseInt(totalprice) + parseInt(PRICE);
		if (totalprice < 0)
		{
			totalpice = 0;
		}
		document.getElementById("totalvalue").textContent = "₹" + totalprice;
		
	}
	function funMINUS(BTID, INID, LID, PRICE, ICODE, BCODE,ADCODE) {
		var currentValue = parseInt(document.getElementById(INID).value, 10);
		var newvalue = currentValue - 1;
		$.each(listPunchedItmeDtl, function(i, obj) {
			if (obj.itemCode == ICODE) {
				obj.quantity = +obj.quantity - 1;
				var pricexqty = parseInt(PRICE) * newvalue;
				obj.itemPrice = +pricexqty;
				
				if (newvalue <= 0)
					{
					listPunchedItmeDtl.splice(i) ;
					}
				
			}
		})
		totalprice = parseInt(totalprice) - parseInt(PRICE);
		if (totalprice < 0)
		{
			totalpice = 0;
		}
		document.getElementById("totalvalue").textContent = "₹" + totalprice;
		if (newvalue >= 0) {
			document.getElementById(INID).value = newvalue;
		}
		if (newvalue <= 0) {
			
			document.getElementById(BCODE).style.display = 'none';
			document.getElementById(ADCODE).style.display = 'block';

			
			NofItems = NofItems - 1;
			if (NofItems == 0) {
				document.getElementById("bottomBar").style.display = 'none';
				listPunchedItmeDtl = [];
			}
		}
	}
	/*--------------------------------------------------------------------*/
	function funAddClick(PRICE, INID, INAME, ICODE,ADCODE,BCODE) {

		document.getElementById(ADCODE).style.display = 'none';
		document.getElementById(BCODE).style.display = 'block';
		NofItems = NofItems + 1;
		document.getElementById(INID).value = 1;
		
		
if(!pm){
	
		pm = true;
	
		
		
		var currentValue = parseInt(document.getElementById(INID).value, 10);
		var pricexqty = parseInt(PRICE) * currentValue;
		totalprice = parseInt(totalprice) + parseInt(PRICE) * currentValue;
		if (totalprice < 0)
		{
			totalpice = 0;
		}
		document.getElementById("totalvalue").textContent = "₹" + totalprice;
		document.getElementById("bottomBar").style.display = 'block';
		//////////BELOW PUSHHING ITEM TO CART//////////////
		var singleObj = {};
		singleObj['itemName'] = INAME;
		singleObj['quantity'] = currentValue;
		singleObj['itemPrice'] = pricexqty;
		singleObj['itemCode'] = ICODE;
		var isduplicate = false;
		var currentitemcode = ICODE;
		$.each(listPunchedItmeDtl, function(i, obj) {
			if (obj.itemCode == currentitemcode) {
				isduplicate = true;
				obj.quantity = +obj.quantity + +currentValue;
			}
		})
		if (!isduplicate) {
			listPunchedItmeDtl.push(singleObj);
		}
		funUpdateCartQty();
		//////////END OF PUSHHING ITEM TO CART//////////////
		
		
		}
		
		
	}
	/*--------------------------------------------------------------------*/
	function funViewCartClick() {
		document.getElementById("OrderPopup").style.display = 'block';
		var ul = document.getElementById("iTemNameList");
		var ul2 = document.getElementById("iTemPriceList");
		var ul3 = document.getElementById("iTemQtyList");
		ul.innerHTML = "";
		ul2.innerHTML = "";
		ul3.innerHTML = "";
		$
				.each(
						listPunchedItmeDtl,
						function(i, obj) {
							var name = obj.itemName;
							var price = obj.itemPrice;
							var qty = obj.quantity;
							var li = document.createElement('li');
							li.appendChild(document.createTextNode(name));
							li.setAttribute('style',
									'margin-bottom:10px;margin-top:10px');
							ul.appendChild(li);
							var li2 = document.createElement('li');
							li2.appendChild(document
									.createTextNode("₹" + price));
							li2
									.setAttribute('style',
											'margin-bottom:10px;margin-top:9px;padding-top:10px;padding-bottom:10px');
							ul2.appendChild(li2);
							var li3 = document.createElement('li');
							li3
									.setAttribute('style',
											'margin-bottom:10px;margin-top:9px;padding-top:10px;padding-bottom:10px');
							li3.appendChild(document.createTextNode(qty));
							ul3.appendChild(li3);
						})
		//document.getElementById("finaltotal").innerHTML = 'Total: ₹'+totalprice;
		funFinalItemDetails();
	}
	/*--------------------------------------------------------------------*/
		function funCrossClicked() {
		/* 	document.getElementById("OrderPopup").style.display = 'none'; */
		/* var conButton = document.getElementById("contineuBTN");
		conButton.dataset.target = "#OrderPopup";
		conButton.click();
		conButton.dataset.target = "#cartPopup";
		conButton.click(); */
		var toogleButton = document.getElementById("togglecart");
		toogleButton.click();
	}
	
	
	
	function funContinueClicked() {
		/* 	document.getElementById("OrderPopup").style.display = 'none'; */
		var conButton = document.getElementById("contineuBTN");
		conButton.dataset.target = "#OrderPopup";
		conButton.click();
		conButton.dataset.target = "#cartPopup";
		conButton.click();
		var toogleButton = document.getElementById("togglecart");
		toogleButton.click();
	}
	function funToggleClicked() {
		
		  var l1 = document.getElementById("takewaytoggle");  
		  
		  if (l1.checked == true)
		  {  
			<%-- 	<%=session.getAttribute(clsSessionConstants.SV_COST_CENTER_NAME).toString()%> --%>
			  
		} 
		  
		  
	}
	

	
	
	function setFocusTo(okitem){
	    
		   var element = document.getElementById("hddd"+okitem);
		    var headerOffset = 250;
		    var elementPosition = element.getBoundingClientRect().top;
		    var offsetPosition = elementPosition + window.pageYOffset - headerOffset;
		  
		    window.scrollTo({
		         top: offsetPosition,
		         behavior: "smooth"
		    });
	    
	/*     document.getElementById("hddd"+okitem).scrollIntoView(); */
	}
	
	
	
	function checkcustomer()
	{
	
		if(document.getElementById("mobile-no").value.length == 10)
		{
			///// below ajax request mapping
		
				var searchUrl="";
				searchUrl= getContextPath()+"/checkcustomer.html?mobile="+document.getElementById("mobile-no").value;
				
				$.ajax({
				        type: "GET",
				        url: searchUrl,
					    dataType: "text",
					    success: function(response)
					    {
					    	
					    	 
					    	if(response != '@')
					    		{
					    	
					    	 var namee = response.substring(0, response.indexOf('@'));
					    	 document.getElementById("name").value = namee;
					    	 
					    		var address = response.substring(response.indexOf('@') + 1);
					    	
					    	 document.getElementById("address").value = address;
					    	
					    		}
					    	
					    },
					    error: function(jqXHR, exception) {
				            if (jqXHR.status === 0) {
				                alert('Not connect.n Verify Network.');
				            } else if (jqXHR.status == 404) {
				                alert('Requested page not found. [404]');
				            } else if (jqXHR.status == 500) {
				                alert('Internal Server Error [500].');
				            } else if (exception === 'parsererror') {
				                alert('Requested JSON parse failed.');
				            } else if (exception === 'timeout') {
				                alert('Time out error.');
				            } else if (exception === 'abort') {
				                alert('Ajax request aborted.');
				            } else {
				                alert('Uncaught Error.n' + jqXHR.responseText);
				            }		            
				        }
				      });
			
			
		
		
			
		}
		else
			{
			
	    	 document.getElementById("name").value = ""; 	
	    	 document.getElementById("address").value = "";
			
			}
		
		
	}
	
	function getContextPath() 
	{
		return window.location.pathname.substring(0, window.location.pathname.indexOf("/",2));
	}
	

	/*--------------------------------------------------------------------*/
</script>
<style>
/* #rcorners1 {
	border-radius: 25px;
	background: #73AD21;
	padding: 20px;
	width: 200px;
	height: 150px;
}
div.scrollmenu {
  background-color: #ffffff;
  overflow: auto;
  white-space: nowrap;
}
div.scrollmenu a {
  display: inline-block;
  color: white;
  text-align: center;
  padding: 14px;
  text-decoration: none;
}
div.scrollmenu a:hover {
  background-color: #D9D9D9;
}
/* ------------s--------------------- */

.newaddlabel {
	border: 1px solid #007acc;
	border-radius: 10px;
	display: block;

	height: 28px;
	position: absolute;
	left: 50%;
	top: 50%;

	cursor: pointer;
}


.hlabel {
/* 	-webkit-perspective: 1000px;
	perspective: 1000px; */
/* 	-webkit-transform-style: preserve-3d; */
/* 	transform-style: preserve-3d; */
	display: block;
	width: 120px;
	height: 28px;
	position: absolute;
/* 	left: 50%;
	top: 50%; */
/* 	-webkit-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%); */
	cursor: pointer;
}

.cardd {
	position: relative;
	height: 28px;
	width: 100%;
/* 	-webkit-transform-style: preserve-3d; */
/* 	transform-style: preserve-3d; */
/* 	-webkit-transition: all 600ms; */
/* 	transition: all 600ms;
	z-index: 20; */
}

.cardd div {
display:block;
	position: absolute;
	height: 35px;
	width: 100%;
	color: #007acc;
	/* background: #ffe3e3; */
	text-align: center;
	line-height: 28px;
/* 	-webkit-backface-visibility: hidden;
	backface-visibility: hidden; */
	border: 1px solid #007acc;
	border-radius: 10px;
}


.cardd .back {
display:none;
	margin-left: -5px;
	/*  background: #ffe3e3; */
	color: #007acc;
	width: 125px;
	height: 35px;
/* 	-webkit-transform: rotateX(180deg);
	transform: rotateX(180deg); */
	
}

:checked+.cardd {
/* 	transform: rotateX(180deg);
	-webkit-transform: rotateX(180deg); */
}
/* ----------------e----------------------- */
.buttonClass, .cart-btn {
	font-size: 15px;
	font-family: Arial;
	padding-left: 30px;
	padding-right: 30px;
	padding-top: 10px;
	padding-bottom: 10px;
	border-width: 1px;
	color: #fff;
	border-color: #007acc;
	font-weight: bold;
	border-top-left-radius: 13px;
	border-top-right-radius: 13px;
	border-bottom-left-radius: 13px;
	border-bottom-right-radius: 13px;
	box-shadow: inset 0px -3px 7px 0px #29bbff;
	text-shadow: inset 0px 1px 0px #263666;
	background: linear-gradient(#2dabf9, #0688fa);
}

select, option {
	width: 270px;
	border: 0px;
	background: #ecf0ff;
	padding: 2px 10px;
	height: 40px;
	font-size: 14px;
	border-radius: 5px;
}

select, option:focus {
	outline: 0;
}

.navbarR {
	overflow: hidden;
	background-color: #333;
	position: fixed;
	bottom: 0;
	width: 100%;
}

.navbarR a {
	float: left;
	display: block;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}

.navbarR a.active {
	background-color: #0be31d;
	color: white;
}

.switch {
	position: relative;
	display: inline-block;
	width: 50px;
	height: 25px;
}

.switch input {
	opacity: 0;
	width: 0;
	height: 0;
}

.slider {
	position: absolute;
	cursor: pointer;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: #ccc;
	-webkit-transition: .4s;
	transition: .4s;
}

.slider:before {
	position: absolute;
	content: "";
	height: 20px;
	width: 20px;
	left: 4px;
	bottom: 4px;
	background-color: white;
	-webkit-transition: .4s;
	transition: .4s;
}

input:checked+.slider {
	background-color: #3CBC3C;
}

input:focus+.slider {
	box-shadow: 0 0 1px #3CBC3C;
}

input:checked+.slider:before {
	-webkit-transform: translateX(26px);
	-ms-transform: translateX(26px);
	transform: translateX(26px);
}
/* Rounded sliders */
.slider.round {
	border-radius: 34px;
}

.slider.round:before {
	border-radius: 50%;
}

.veg {
	marggin-top: 10px;
}

div.scrollmenu a:hover {
/*   background-color: #2c07f7; */

     border: 1px solid #007acc;
}


.menuhead {

}
.prevent-select {
  -webkit-user-select: none; /* Safari */
  -ms-user-select: none; /* IE 10 and IE 11 */
  user-select: none; /* Standard syntax */
}

</style>
</head>
<body style="background: #f7f6f7">




	<nav
		class="container navbar navbar-expand-sm navbar-dark fixed-top pt-2"
		style="background: #f7f6f7">

		  
		<form>
			<div class="row" style="margin: 20px 0px 10px;">
				<div class="col-6">
					<h2 onclick="history.back()"style="width: 400px;">
						<img
							src="../${pageContext.request.contextPath}/resources/images/All-20.png"
							style="width: 8px; margin-right: 10px">
						<%=session.getAttribute(clsSessionConstants.SV_COST_CENTER_NAME).toString()%></h2>
				</div>
				
<%-- 				<div class="col-4" style="font-size: 12px;">Only veg</div>
				
				<div class="col-2">
		
					<label class="switch" style="padding: 0px"> <input
						type="checkbox"><span class="slider round"></span></label>
			
				</div>
				
			
				
			
			
				
				
				
			</div>
					
				
				<div >
		
					<label class="switch" style="float:right;padding: 0px;margin-right:-10px;"> <input
						type="checkbox"	id="takewaytoggle" onclick="funToggleClicked"><span class="slider round"></span></label>
			
				</div>
							<div  style="float:right;font-size: 12px;margin-right:50px;">Take Away</div> --%>
		</form>
		

				<div class="dishlist-wrapper" style="background-color:#D3D3D3;margin:15px;height:100px;width:300px">
							<div class="row">
							
								<div class="col-8">
									<h5>Brand Offer Banner <br> "Coming soon..."</h5>
				
								</div>
							</div>
						</div> 
						
				
						 	<div class="scrollmenu"  style="overflow: auto;white-space: nowrap;width:330px;">
		<c:forEach items="${menuModel.mapMenuHeadWithItemDetails}" var="entry">
					
			
								
<%-- 						  <a    onMouseOver="this.style.color='#ffffff'" onMouseOut="this.style.color='#000000'"  style=" border-radius: 25px;	display: inline-block;color: black;text-align: center;padding: 14px;text-decoration: none;" href="#hdd'${entry.key.strMenuCode}'">${entry.key.strMenuName}</a> --%>
				<a onclick="setFocusTo('${entry.key.strMenuCode}')" style=" border-radius: 25px;	display: inline-block;color: #282828;text-align: center;padding: 14px;text-decoration: none;" class="button prevent-select">${entry.key.strMenuName}</a>
		<%-- 	  href="# ${entry.key.strMenuCode}" --%>
		
	<%-- 	onclick="funMenuHeadButtonClickedSearched('${entry.key.strMenuCode}')" --%>
				</c:forEach>
</div> 


	</nav>
	<div class="container add-to-cart-wrapper" style="margin-top: 290px">
	
	
	
	
<%-- 				   <div class="scrollmenu">
				 
				 <table id="tblMenuHeadDtl"    style="border-collapse: separate;margin:0px;height:170px;padding-top:67px;background:#2a81e8;"> <!-- class="table table-striped table-bordered table-hover" -->
									 <c:set var="sizeOfmenu" value="${fn:length(command.jsonArrForDirectBillerMenuHeads)}"></c:set>
									 <c:set var="menuCount" value="${0}"></c:set>
									 
									  <c:forEach var="objMenuHeadDtl" items="${command.jsonArrForDirectBillerMenuHeads}"  varStatus="varMenuHeadStatus">																																		
												<tr>
												<% 
												for(int k=0;k<50;k++) 
												{
												%>	 
												
												<c:if test="${menuCount lt sizeOfmenu}">
													<td style="padding-right: 5px;diaplay:inline;" >
														<label  id="${command.jsonArrForDirectBillerMenuHeads[menuCount].strMenuName}"    style= "width:auto;display:inline-block; text-align:center;label:active{underline};white-space:nowrap;color:white;font-weight:600;font-size:37px;padding-left:65px;"       
														onclick="funMenuHeadButtonClickedSearched(this)"  >${command.jsonArrForDirectBillerMenuHeads[menuCount].strMenuName}
														</label>
													</td>
													<c:set var="menuCount" value="${menuCount +1}"></c:set>
												</c:if>																						 													
																
													
												<%
												}
												%>
											   </tr>																																
										</c:forEach>									   				   									   									   							
									</table>
				 
				</div>  --%>



	
	
	
		<div class="input-group">
			<span class="input-group-append"
				style="background: #ffffff; border-radius: 50px 0px 0px 50px; border-top: 1px solid #007acc; border-left: 1px solid #007acc; border-bottom: 1px solid #007acc;">
				<button class="btn" type="button">
					<i class="fa fa-search"
						style="font-size: 14px; color: #007acc; font-weight: 100;"></i>
				</button>
			</span> <input onkeyup="myFunction()"  class="form-control py-2" type="search"
				placeholder="Search for items." name="example-search-input"
				id="Search"
				style="font-size: 12px; border: 1px solid #007acc; border-left: 0; height: 40px; border-radius: 0px 50px 50px 0px;">
		</div>
		<div class="row no-gutters mt-4">
			<div class="col-md-12" style="display: none" id="buttonview">
				<c:forEach items="${menuModel.mapMenuHeadWithItemDetails}"
					var="entry">
					<div class="tab-pane" id="${entry.key.strMenuCode}" role="tabpanel">
						<div class="row mt-3">
							<div class="col-6 menuhead">
								<h4 id="hddd${entry.key.strMenuCode}">${entry.key.strMenuName}</h4>
							</div>
						</div>
						<c:forEach items="${entry.value}" var="element">
						<div class="target">
							<div class="dishlist-wrapper">
								<div class="row">
									<div class="col-7"
										onclick="funShowSingleItem('${element.strItemName}','${element.strItemCode}','${element.dblPrice}');">
										<h5>${element.strItemName}
											<br>₹ ${element.dblPrice}/-
										</h5>
									</div>
									<div class="col-5">
										<label id="label${element.strItemCode}" class="hlabel">
											<input style="display: none;" type="checkbox" />
											<div class="cardd" style="margin-top: 1px">
											
											
												<div id="ADD${element.strItemCode}" onclick="funAddClick('${element.dblPrice}','input'+'${element.strItemCode}','${element.strItemName}','${element.strItemCode}','ADD'+'${element.strItemCode}','BACK'+'${element.strItemCode}' )">Add</div>
												
												<div  class="back" id="BACK${element.strItemCode}"  >
													<button id="'minusBT'+'${element.strItemCode}'"
														onclick="funMINUS('minusBT'+'${element.strItemCode}','input'+'${element.strItemCode}','label'+'${element.strItemCode}','${element.dblPrice}','${element.strItemCode}','BACK'+'${element.strItemCode}','ADD'+'${element.strItemCode}' )"
														style="font-size: 30px; padding: 3px; border: 0; color: #007acc; background-color: transparent; width: 30px"
														type="button" name="myButton">-</button>
													<input type="text" id="input${element.strItemCode}"
														readonly value="1"
														style="font-size: 25px; text-align: center; display: inline; width: 40px; background-color: transparent; border: 0px; color: #007acc;"
														disabled>
													<button id="'plusBT'+'${element.strItemCode}'"
														onclick="funPLUS('plusBT'+'${element.strItemCode}','input'+'${element.strItemCode}','label'+'${element.strItemCode}','${element.dblPrice}','${element.strItemCode}') "
														style="font-size: 30px; padding: 3px; border: 0; color: #007acc; background-color: transparent; width: 30px"
														type="button" name="myButton">+</button>
												</div>
											</div>
										</label>
									</div>
								</div>
							</div>
							</div>
						</c:forEach>
					</div>
				</c:forEach>
			</div>
		</div>
		<!-- The Modal -->
		<s:form name="makePayment" method="POST" action=""
			modelAttribute="menuModel">
			<div class="modal" id="cartPopup">
				<div class="modal-dialog">
					<div class="modal-content" style="background: #e8edff">
						<i class="fa fa-times" data-toggle="modal" data-target="#cartPopup"  style="font-size:30px;color:#007acc; margin: 0 auto;"></i>
						<div class="modal-body">
							<div class="row">
								<div class="col-12">
									<h2
										style="font-size: 20px; text-align: center; padding-bottom: 15px">Customer
										Details</h2>

									<div class="form-group">
										  <s:input type="number" maxlength="10" onkeydown="if(event.key==='.' || event.key==='+'  || event.key==='-' || event.key==='*'  || event.key==='#'  || event.key==='%'    || event.key==='/' ){event.preventDefault(); }  " oninput="javascript: if (this.value.length > 10) this.value = this.value.slice(0, 10); checkcustomer();" 
											class="form-control" name="number"
											style="border:1px solid #3f4054" id="mobile-no"
											placeholder="Mobile No* for Order Notification"
											path="strMobNum" />
									</div>
									
								     <div class="form-group">
										<s:input style="border:1px solid #3f4054" type="text"
											class="form-control" id="name" placeholder="Customer Name*"
											name="name" path="strCustName" />
									</div>
									
									<div class="form-group" style = "  display: none;">
										<s:input class="form-control"  type="email" value="apps.sanguine@gmail.com" id="email"
											name="email" style="border:1px solid #3f4054"
											placeholder="Email ID*" path="strEmailID" />
									</div>
										<div class="form-group" ">
										<s:input class="form-control"  type="text" value="" id="address"
											name="address" style="border:1px solid #3f4054"
											placeholder="Address*" path="strAddress" />
									</div>
									
									<!--<a href="javascript:void(0);" style="height:60px;font-size:20px;margin-left:30px;padding-top:10px" onclick="funMakePayment()" class="cart-btn">Proceed To Payment</a> -->
									<div>
										<a href="javascript:void(0);"
											style="background: #007acc; color: #ffffff; border: none; padding: 14px 45px; display: block; margin: auto; font-size: 14px; border-radius: 8px; width: 250px; margin-bottom: 10px"
											onclick="funMakePaymentpayu()" class="cart-btn">Proceed To
											Payment</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- The Order Review Modal -->
			<div class="modal" id="OrderPopup">
				<div class="modal-dialog">
				 
					<div class="modal-content">
				<i class="fa fa-times" data-toggle="modal" data-target="#OrderPopup"  style="font-size:30px;color:#007acc; margin: 0 auto;"></i>
						<div class="modal-body">

						
							<div class="col-md-12">
								<h5 style="color: #007acc;" >Review Order</h5>
							</div>
							<div class="col-md-12">
								<div class="dishlist-wrapper mb-4">
									<div class="row no-gutters mb-4">
										<div class="col-8">
											<ul style="font-size: 16px; margin-left: -30px"
												id="iTemNameList"></ul>
										</div>
										<div class="col-2">
											<ul style="list-style-type: none; margin-left: -30px"
												id="iTemQtyList"></ul>
										</div>
										<div class="col-2">
											<ul
												style="color: #007acc; list-style-type: none; margin-left: -40px;"
												id="iTemPriceList"></ul>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<h5
									style="color: #000000; text-align: right; margin-right: 10px; margin-top: 10px; font-size: 13px; font-weight: 600; float: right"
									id="finaltotal">Total ₹0</h5>
								<br>
								<h5
									style="color: #000000; text-align: right; margin-right: -90px; margin-top: 10px; font-size: 13px; font-weight: 600; float: right"
									id="finalTax">Tax ₹0</h5>
								<br>
								<h2
									style="color: #000000; text-align: right; margin-right: 10px; margin-top: 10px; font-size: 18px; font-weight: 600; float: right"
									id="finalGrandtotal">Payable Amount ₹0</h2>
							</div>
						</div>
						<div>
							<a data-toggle="modal" id="contineuBTN"
								style="background: #007acc; color: #ffffff; border: none; padding: 14px 45px; display: block; margin: auto; font-size: 14px; border-radius: 8px; width: 150px; margin-bottom: 10px"
								onclick="funContinueClicked();">Continue</a>
						</div>
					</div>
				</div>
			</div>
			<table class="table" id="tblSettleItemTable"
				style="display: none; margin: 30px 0px; visibility: hidden;">
			</table>
			<s:hidden id="hidgrandTotal" path="dblGrandTotal" />
			<s:hidden id="hidSubTotal" path="dblSubTotal" />
			<s:hidden id="hidTaxTotal" path="dblTotalTaxAmt" />
		</s:form>
		<div style="margin-left: -15px; display: none" id="bottomBar"
			class="navbarR">
			<span id="totalvalue"
				style="margin-left: 8px; font-size: 30px; color: #ffffff"
				class="label success"><b>0</b></span><a href="#home"
				data-toggle="modal" style="float: right" data-target="#OrderPopup"
				class="active" onclick="funViewCartClick()">View Cart</a>
		</div>
	</div>
	<button type="button" id="togglecart" style="display: none;"
		data-toggle="modal" data-target="#OrderPopup">Click Me!</button>
</body>
</html>
