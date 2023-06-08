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
		pre.western { font-family: "Roboto", sans-serif; font-size: 14px }
		pre.cjk { font-family: "Roboto", sans-serif; font-size: 14px }
		pre.ctl { font-family: "Roboto", sans-serif; font-size: 14px }
		h2 {text-align:center;font-size: 14px;}
		h3 {text-align:center;font-size: 17.5px;}
		p {font-size: 14px;}
	    .center {text-align:center;color:gray;}
</style>

</head>

<body lang="en-US" link="#000080" vlink="#800000" dir="ltr">     

<div class="card" style="width:100%">
    <img class="card-img-top" src="/images/prems.jpg" alt="Prems Logo" style="width:100%;text-align:center;">
    <div class="card-body">
      <h2 class="card-title">[DUPLICATE]</h2>
       <h2 class="card-title">TAX INVOICE</h2>
       <h3 class="card-title">${strClientName}</h3>
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
         
 <pre class="western">
  Item Name            Qty           Rate           Amt
<hr>
<c:forEach items="${countryList}" var="item">
  ${item.STRITEMNAME}
  ${item.DBLQUANTITY}${item.DBLRATE}${item.DBLAMOUNT}</c:forEach>
 <hr>
<b>Sub Total</b>                       ${dblSubTotal}
<b> Discount</b>
 ${dblDiscPer}${strDiscOnType}                     ${dblDiscAmt}
 Reason  : ${strReasonName}
 Remarks : ${strDiscRemarks}
 <c:forEach items="${taxList}" var="item">
  ${item.strTaxDesc}                  ${item.dblTaxAmt}    </c:forEach>    
<hr>
 Total(Rounded)                  ${dblGrandTotal} 
<hr>
     THANK YOU !!
                    SANGUINE

</pre>



 </div>
 </div>





</body>
</html>