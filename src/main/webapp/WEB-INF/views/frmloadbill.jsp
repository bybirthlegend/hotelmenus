<!DOCTYPE html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
<title></title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<meta name="generator" content="LibreOffice 7.4.3.2 (Linux)"/>
<meta name="created" content="00:00:00"/>
<meta name="changed" content="00:00:00"/>
	
<style type="text/css">
		@page { size: 8.27in 11.69in; margin: 0.79in }
		p { line-height: 115%; margin-bottom: 0.1in; background: transparent }
		pre { background: transparent }
		.card {font-family: "Roboto", sans-serif;}
		pre.western { font-family: "Roboto", sans-serif; font-size: 14px }
		pre.cjk { font-family: "Roboto", sans-serif; font-size: 14px }
		pre.ctl { font-family: "Roboto", sans-serif; font-size: 14px }
		h2 {text-align:center;font-size: 14px;}
		h1 {text-align:center;font-size: 20px;}
		p {font-size: 14px;}
	    .center {text-align:center;color:gray;}
</style>

</head>

<body lang="en-US" link="#000080" vlink="#800000" dir="ltr">     

<div class="card" style="width:100%">
    <img class="card-img-top" src="../${pageContext.request.contextPath}/resources/images/prems.jpg"  class="img-fluid" alt="Prems Logo" style="height:145px;width:250px;margin-left:auto;margin-right:auto;">
<hr style="margin:0;">
    <div class="card-body">
     <!--  <h2 class="card-title">[DUPLICATE]</h2> -->
       <h2 class="card-title">TAX INVOICE</h2>
       <h1 class="card-title">${strClientName}</h1>
       <p class="card-text center">${strAddressLine1}  ${strAddressLine2}</p>
        <p class="card-text center">${strAddressLine3}</p>
        <p class="card-text center">${strCityName}</p>
        
         <p class="card-text"> Tel No.    : ${longMobileNo} </p> 
         <p class="card-text"> Email Id   : ${strEmailId} </p> 
         <p class="card-text"> Table Name: ${strTableName} </p>
         <p class="card-text"> Steward   : ${strWFullName} </p>
         <hr>
         <p class="card-text"> Pos         : ${strPOSName} </p> 
         <p class="card-text"> Bill No.    : ${strBillNo} </p> 
         <p class="card-text"> Pax No.     : ${intPaxNo} </p>
         <p class="card-text"> Date & Amp; Time : ${dteBillDate} </p>
         <hr>
     
 <div class="col-md-12">
    <div class="row">
       <div class="col-6"><b>Item Name</b></div>
       <div class="col-2"><b>Qty</b></div>
       <div class="col-2"><b>Rate</b></div>
       <div class="col-2"><b>Amt</b></div>
    </div>
 </div>
 <hr>
 <div class="col-md-12">
   <c:forEach items="${countryList}" var="item">
    <div class="row">
       <div class="col-6">${item.STRITEMNAME}</div>
       <div class="col-2">${item.DBLQUANTITY}</div>
       <div class="col-2">${item.DBLRATE}</div>
       <div class="col-2">${item.DBLAMOUNT}</div>
    </div>
   </c:forEach>
 </div>
  <hr>
 <div class="col-md-12">
   <div class="row">
       <div class="col-9"><b>Sub Total</b></div>
       <div class="col-3">${dblSubTotal} </div>
    </div>
  </div>                                                     
  
   <div class="col-md-12">
   <div class="row">
       <div class="col-9"><b>Discount</b></div>
       <div class="col-3">${dblDiscAmt}</div>
    </div>
  </div>  
 
 <div class="col-md-12">
    <div class="row">
       <div class="col-10"><b>${dblDiscPer}${strDiscOnType}</b></div>
    </div>
 </div>  
<hr> 
 <pre class="western">                     
 Reason  : ${strReasonName}
 Remarks : ${strDiscRemarks}
 </pre>
 
  <div class="col-md-12">
  <c:forEach items="${taxList}" var="item">
   <div class="row">
       <div class="col-9"> ${item.strTaxDesc}</div>
       <div class="col-3"> ${item.dblTaxAmt}</div>
    </div>
  </c:forEach> 
  </div> 
  <br>
<hr style="margin:0;">

<div class="col-md-12" style="background-color:#f4f4f4;">
   <div class="row">
       <div class="col-9" style="color:#026302;"><b>Total(Rounded)</b></div>
       <div class="col-3" style="color:#026302;"> ${dblGrandTotal}</div>
    </div>
 </div> 
<hr style="margin:0;">                                                     
<img class="card-img-top" src="../${pageContext.request.contextPath}/resources/images/qr-code.jpeg"  class="img-fluid" alt="Prems Logo"
        style="height:120px;width:135px;margin-left:30%;">

<pre class="western">   
                               THANK YOU !!
                                SANGUINE
</pre>
</div>
</div>  
</body>
</html>