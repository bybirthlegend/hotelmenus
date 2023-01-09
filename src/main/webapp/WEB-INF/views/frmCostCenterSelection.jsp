<%@ page import="java.security.MessageDigest"%>
<%@ page import="java.security.NoSuchAlgorithmException"%>
<%@ page import="java.io.*"%>
<%@ page import="java.net.*"%>
<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.List"%>
<%@ page import="com.sanguine.qrmenu.constants.clsSessionConstants"%>
<%@ page import="com.sanguine.qrmenu.constants.clsRequestParamConstants"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
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
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Studio CSS Below-->
<link rel="stylesheet"
	href="<spring:url value="../${pageContext.request.contextPath}/resources/css/brandstyle.css"/>">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<title>Brands</title>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js">
	
</script>



<style>

/*  Toggle Switch  */
.center {
	margin: auto;
	width: 50%;
	border: 3px solid green;
	padding: 10px;
}

.toggleSwitch span span {
	display: none;
}

.toggleSwitch {
	display: inline-block;
	height: 18px;
	position: relative;
	overflow: visible;
	padding: 0;
	cursor: pointer;
	width: 200px;
	background-color: #fafafa;
	border: 1px solid #007acc;
	border-radius: 5px;
	height: 34px;
}

.toggleSwitch * {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.toggleSwitch label, .toggleSwitch>span {
	line-height: 20px;
	height: 20px;
	vertical-align: middle;
}

.toggleSwitch input:focus ~ a, .toggleSwitch input:focus+label {
	outline: none;
}

.toggleSwitch label {
	position: relative;
	z-index: 3;
	display: block;
	width: 100%;
}

.toggleSwitch input {
	position: absolute;
	opacity: 0;
	z-index: 5;
}

.toggleSwitch>span {
	position: absolute;
	left: 0;
	width: calc(100% - 6px);
	margin: 0;
	text-align: left;
	white-space: nowrap;
	margin: 0 3px;
}

.toggleSwitch>span span {
	position: absolute;
	top: 0;
	left: 0;
	z-index: 5;
	display: block;
	width: 50%;
	margin-left: 50px;
	text-align: left;
	font-size: 0.9em;
	width: auto;
	left: 0;
	top: -1px;
	opacity: 1;
	width: 40%;
	text-align: center;
	line-height: 34px;
}

.toggleSwitch a {
	position: absolute;
	right: 50%;
	z-index: 4;
	display: block;
	top: 3px;
	bottom: 3px;
	padding: 0;
	left: 3px;
	width: 50%;
	background-color: #007acc;
	border-radius: 4px;
	-webkit-transition: all 0.2s ease-out;
	-moz-transition: all 0.2s ease-out;
	transition: all 0.2s ease-out;
	box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);
}

.toggleSwitch>span span:first-of-type {
	color: #FFF;
	opacity: 1;
	left: 0;
	margin: 0;
	width: 50%;
}

.toggleSwitch>span span:last-of-type {
	left: auto;
	right: 0;
	color: #999;
	margin: 0;
	width: 50%;
}

.toggleSwitch>span:before {
	content: '';
	display: block;
	width: 100%;
	height: 100%;
	position: absolute;
	left: 0;
	top: -2px;
	/* background-color: #fafafa;
	border: 1px solid #ccc; */
	border-radius: 30px;
	-webkit-transition: all 0.2s ease-out;
	-moz-transition: all 0.2s ease-out;
	transition: all 0.2s ease-out;
}

.toggleSwitch input:checked ~ a {
	left: calc(50% - 3px);
}

.toggleSwitch input:checked ~ span:before {
	/* border-color: #0097D1;
	box-shadow: inset 0 0 0 30px #0097D1; */
	
}

.toggleSwitch input:checked ~ span span:first-of-type {
	left: 0;
	color: #999;
}

.toggleSwitch input:checked ~ span span:last-of-type {
	/* opacity: 1;
	color: #fff;	 */
	color: #FFF;
}
/* Switch Sizes */
.toggleSwitch.large {
	width: 60px;
	height: 27px;
}

.toggleSwitch.large a {
	width: 27px;
}

.toggleSwitch.large>span {
	height: 29px;
	line-height: 28px;
}

.toggleSwitch.large input:checked ~ a {
	left: 41px;
}

.toggleSwitch.large>span span {
	font-size: 1.1em;
}

.toggleSwitch.large>span span:first-of-type {
	left: 50%;
}

.toggleSwitch.xlarge {
	width: 80px;
	height: 36px;
}

.toggleSwitch.xlarge a {
	width: 36px;
}

.toggleSwitch.xlarge>span {
	height: 38px;
	line-height: 37px;
}

.toggleSwitch.xlarge input:checked ~ a {
	left: 52px;
}

.toggleSwitch.xlarge>span span {
	font-size: 1.4em;
}

.toggleSwitch.xlarge>span span:first-of-type {
	left: 50%;
}

/*  End Toggle Switch  */
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
</style>
<script type="text/javascript">





// Shorthand for $( document ).ready()
$(function() {


    var select = document.getElementById("year");
    /* 	
	    for(var i = 2011; i >= 1900; --i) {
	        var option = document.createElement('option');
	        option.text = option.value = i;
	        select.add(option, 0);
	    } */


	    
	    var option = document.createElement('option');
        option.text = option.value = 'Select Pos';
        select.add(option);
        <c:forEach items="${costCenterModel.mapPosMaster }" var="entry">
        var option = document.createElement('option');
        option.text = option.value = '${entry.value}'+'-'+'${entry.key}';
        select.add(option);

        </c:forEach>
	
	
        document.getElementById('year').addEventListener('change', function() {
        	
        	  /* alert(this.value.split('-').pop()); */
        	  
        	  var hd = this.value.split('-').pop()
   
        	  window.location.href = 'loadCostCenters.html?posCode='+hd;
       	   /*  http://localhost:8185/SanguineMenus/loadCostCenters.html?posCode=P01 */
        	});
    
    if('<%=session.getAttribute(clsSessionConstants.SV_OPERATION_TYPE).toString()%>' == "DineIn")
	{
	

	document.getElementById("optypecheck").checked = false;
	}
else if('<%=session.getAttribute(clsSessionConstants.SV_OPERATION_TYPE).toString()%>
	' == "TakeAway") {

			document.getElementById("optypecheck").checked = true;

		}
	});

	var operationType = "DineIn";
	function funOP() {
		var chkBox = document.getElementById('optypecheck');
		if (chkBox.checked) {
			operationType = "TakeAway"
		} else {

			operationType = "DineIn"

		}

	}
</script>
</head>
<body style="background: #f7f6f7">
	<nav
		class="container navbar navbar-expand-sm navbar-dark fixed-top pt-2"
		style="background: #f7f6f7;">


		<form>
			<div class="input-group">
				<span class="input-group-append">
					<button class="btn" type="button">
						<img
							src="../${pageContext.request.contextPath}/resources/images/All-07.png"
							width="20px">
					</button>
				</span> <select id="year">

				</select>
			</div>
			<%-- 			<div class="input-group">
				<h2 onclick="history.back()">
					<img
						src="../${pageContext.request.contextPath}/resources/images/All-20.png"
						style="width: 8px; margin-right: 10px">
					<%=session.getAttribute(clsSessionConstants.SV_POS_NAME).toString()%></h2>
			</div> --%>

			<!-- 			<h2 style="margin: 20px 0px 10px;">What do you want to order
				today?</h2>
				 -->


			<div class="dishlist-wrapper"
				style="background-color: #D3D3D3; margin: 15px; height: 100px; width: 300px">
				<div class="row">

					<div class="col-8">
						<h5>Promotional Banner</h5>

					</div>
				</div>
			</div>

			<label class="toggleSwitch nolabe" onclick="funOP()"
				style="margin-left: 20%;"> <input type="checkbox"
				id="optypecheck" /> <a></a> <span> <span class="left-span">Dine
						In</span> <span class="right-span">Take Away</span>
			</span>
			</label>
	</nav>
	<div class="container" style="margin-top: 220px">
		<div class="row no-gutters">
			<c:forEach items="${costCenterModel.mapCostCenter}" var="entry">
				<div class="col-md-2 col-6">



					<a
						href="loadMenu.html?<%=clsRequestParamConstants.RP_COST_CENTER_CODE%>=${entry.key}"
						onclick="location.href=this.href+'&<%=clsRequestParamConstants.RP_OPERATION_TYPE%>='+operationType;return false;">


						<%-- 		<a
						href="loadMenu.html?<%=clsRequestParamConstants.RP_COST_CENTER_CODE%>=${entry.key}&<%=clsRequestParamConstants.RP_OPERATION_TYPE%>=" > --%>
						<div class="grid-wrapper">
							<div class="logo-section">
								<img
									src="../${pageContext.request.contextPath}/resources/images/<%=clsRequestParamConstants.RP_COST_CENTER_CODE%>=${entry.key}.png">
							</div>
							<h4>${entry.value}</h4>

						</div>
					</a>
				</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>
