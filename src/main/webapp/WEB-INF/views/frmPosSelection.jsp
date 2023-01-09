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
</head>
<body style="background: #f7f6f7">
	<nav
		class="container navbar navbar-expand-sm navbar-dark fixed-top pt-2"
		style="background: #f7f6f7;">
		<img
				src="../${pageContext.request.contextPath}/resources/images/Premlogo.png"
				class="d-block mx-auto" width="160px"> <a class="fa fa-history" href="https://kga.quinta.co.in:8450/KarnatakaGolfAssociation/orders.html" aria-hidden="true" style="margin-top:-25px;font-size:20px;color:#007acc;"></a>
<%-- 		<div class="col-md-12" style="margin-top: 20px">
			<img
				src="../${pageContext.request.contextPath}/resources/images/logotrans.png"
				class="d-block mx-auto" width="160px">
		</div> --%>
	</nav>
	<div class="container add-to-cart-wrapper" style="margin-top: 100px">
		<div class="row no-gutters mt-4">
			<div class="col-md-12 mt-4">
				<c:forEach items="${posMasterModel.mapPosMaster}" var="entry">
					<a
						href="loadCostCenters.html?<%=clsRequestParamConstants.RP_POS_CODE%>=${entry.key}"
						style="text-decoration: none">
						<div class="dishlist-wrapper">
							<div class="row">
								<div class="col-4">
									<img
										src="../${pageContext.request.contextPath}/resources/images/All-21.png"
										width="80px">
								</div>
								<div class="col-8">
									<h4>${entry.value}</h4>
									<p style="font-size: 9px; margin-top: 5px; margin-bottom: 0">Embassy Golf Links Buisness Park, challaghatta, Banglore</p>
									<h6 style="font-size: 9px; color: #000000; font-weight: 600;">Hours:
										Open 24 Hours</h6>
									<div>
										<P
											style="margin-bottom: 0px; font-size: 8px; color: #908d8d; margin-top: 5px; float: left">Away
											from 2 Km.....</P>
										<div>
											<img
												src="../${pageContext.request.contextPath}/resources/images/All-25.png"
												style="float: right; width: 30px">
										</div>
									</div>
								</div>
							</div>
						</div>
					</a>
				</c:forEach>
			</div>
		</div>
	</div>
	
	
	

						
</body>
</html>
