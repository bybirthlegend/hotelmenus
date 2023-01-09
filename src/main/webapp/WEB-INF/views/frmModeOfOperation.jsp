<%@ page language="java" contentType="text/html; charset=ISO-8859-1"	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.LinkedList"%>
<%@ page import="java.util.List"%>
<%@ page import="com.sanguine.qrmenu.constants.clsSessionConstants"%>
<%@ page import="com.sanguine.qrmenu.constants.clsRequestParamConstants"%>
<%@ page import =  "org.json.simple.JSONArray" %>
<%@ page import =  "org.json.simple.JSONObject" %>
<%@ page import="java.util.*" %>
<%@ page import="java.security.*" %>














<!DOCTYPE html>
<html lang="en">
<head>
<title>App-Etite</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" media="screen" href="<spring:url value="/resources/css/bootstrap.min.css"/>" />
<link rel="stylesheet" type="text/css" media="screen" href="<spring:url value="/resources/css/style.css"/>" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script type="text/javascript" src="<spring:url value="/resources/js/jquery.slim.min.js"/>"></script>
<script type="text/javascript" src="<spring:url value="/resources/js/popper.min.js"/>"></script>
<script type="text/javascript" src="<spring:url value="/resources/js/bootstrap.bundle.min.js"/>"></script>

<script>
/* The way to access session var on Jsp */
console.log('<%=session.getAttribute(clsSessionConstants.SV_CLIENT_CODE).toString()%>
	');
	
		
	function void setOP(String info){
	
	
	
	}
	

	 
</script>







</script>

<style>

.alert {
  padding: 20px;
  background-color: #007acc;
  color: white;
}

.closebtn {
  margin-left: 15px;
  color: white;
  font-weight: bold;
  float: right;
  font-size: 22px;
  line-height: 20px;
  cursor: pointer;
  transition: 0.3s;
}

.closebtn:hover {
  color: black;
}



.btn-grad {
	background-image: linear-gradient(to right, #007acc 0%, #80ccff 51%, #1aa3ff 100%);
	margin: 10px;
	padding: 15px 45px;
	text-align: center;
	text-transform: uppercase;
	transition: 0.5s;
	background-size: 200% auto;
	color: white;
	box-shadow: 0 0 20px #eee;
	border: 0px;
	border-radius: 10px;
	display: block;
}

.btn-grad:hover {
	background-position: right center;
	/* change the direction of the change here */
	color: #fff;
	text-decoration: none;
}
</style>
</head>

<body style="background: #f7f6f7">
	<div>
		<img
			src="../${pageContext.request.contextPath}/resources/images/Premlogo.png"
			width="100%" height="150px">
			
	</div>
	<section class="logo-wrapper"> 		<div>
			<img
				src="../${pageContext.request.contextPath}/resources/images/sanguinemenuslogo.png"
				class="d-block mx-auto" width="140px">
		</div> 
	</section>
		<div class="alert">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
  <strong>Info!</strong> tap on the three dots in the right corner. and select "Add to Home screen".
</div>
	<section class="text-center mb-3">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<p class="mb-4">Welcome to</p>
					<h2><%=session.getAttribute(clsSessionConstants.SV_CLIENT_NAME).toString()%></h2>
					<p class="welcome-text">
						Select your order type below to view <br>the menu and place
						your order online
					</p>
				</div>
			</div>
		</div>
	</section>
	<section>
		<div class="container">
			<c:forEach items="${modeOfOperationModel.mapOperationTypes}"
				var="entry">
				<div>
					<a
						onclick="" href="${entry.key}.html?<%=clsRequestParamConstants.RP_OPERATION_TYPE%>=${entry.key}"
						class="btn-grad"> ${entry.value} </a>
				</div>
			</c:forEach>
		</div>
	</section>
	<section class="footer-text">
		<div class="container">
			<p>Powered by sanguinesoftwares.com</p>
			<a href="https://sanguinesoftwares.com/terms-conditions/">Terms & Conditions</a>
			<br>
			<a href="https://sanguinesoftwares.com/refund_returns/">Returns Policy</a>
		</div>
	</section>

</body>
</html>
