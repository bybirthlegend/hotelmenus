<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.LinkedList"%>
<%@ page import="java.util.List"%>
<%@ page import="com.sanguine.qrmenu.constants.clsSessionConstants"%>
<%@ page import="com.sanguine.qrmenu.constants.clsRequestParamConstants"%>

<%@page import="java.security.MessageDigest"%>
<%@page import="java.security.NoSuchAlgorithmException"%>
<%@page import="java.io.*"%>
<%@page import="java.net.*"%>
<%@page import="java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Scan OTP</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="<spring:url value="https://kga.quinta.co.in:8450/KarnatakaGolfAssociation/resources/css/brandstyle.css"/>">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

<script>
/* The way to access session var on Jsp */
console.log('<%=session.getAttribute(clsSessionConstants.SV_CLIENT_CODE).toString()%>
	');
</script>


<style>

.qr-code {
	max-width: 200px;
	margin: 10px;
}

.center {
	display: block;
	margin-left: auto;
	margin-right: auto;
	width: 200px;
}

@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;400;500;600;800&display=swap')
	;

html {
	min-height: 100vh;
}
/* body{
    font-family: 'Poppins', sans-serif;
    min-height:100vh;
}
h1,h2,h3,h4,h5,h6{
    color:#383838;
    font-weight: 600;
    margin-bottom:0;
}
h2{
    font-size:24px;
}
p{
    color:#7d7d7d;
}
a:focus{
    text-decoration:none;
    color:#ffffff;
}
a:hover{
    text-decoration:none;
    color:#ffffff;
}
.navigation-bg{
    background:#2b82e9;
}
.navbar-dark .navbar-toggler {
    color: transparent;
    border-color: transparent;
}
.navbar-dark .navbar-toggler-icon {
     background-image: none;}
.title-wrapper{
    text-align:center;
    padding:25px 0px 15px 0px;
}
.category .category-links{
    display: block;
    background: #2caee2;
    padding: 38px 0px;
    text-align: center;
    margin:0px 0px 3px 0px;
}
.category-links:hover{
    text-decoration:none;
}
.category-links:focus{
    text-decoration:none;
}
.category .category-links h3{
    font-size:22px;
    color:#ffffff;
    font-weight:500;
}
.dishname-wrapper {
    padding:20px 0px 10px 0px;
}
.dishname-wrapper h3{
    font-size:22px;
    font-weight:400;
}
.dishname-wrapper p{
    font-size:13px;
    padding-right:20px;
}
.cart-btn{
  display: block;
    width: 100%;
    background: #2b82e9;
    color: #ffffff;
    text-align: center;
    padding: 10px 0px;
    border-radius: 10px;
    font-size: 18px;
    font-weight: 600;
 }
 .cart-btn:hover{
     text-decoration:none;
     color:#ffffff;
 }
 .no-of-item{
     font-size:24px;
 }
 .decreament-btn{
     background: #fe001a;
    color: #ffffff;
    padding: 5px 38px;
    font-size: 25px;
    margin-right:25px;
 }
 .increament-btn{
     background: #2b82e9;
    color: #ffffff;
    padding: 5px 38px;
    font-size: 25px;
    margin-left:25px;
 }
 .increament-btn .decreament-btn:focus{
     text-decoration:none;
     color:#ffffff;
 }
  .increament-btn .decreament-btn:hover{
     text-decoration:none;
     color:#ffffff;
 }
 .order-from-wrapper{
     padding:20px 0px;
 }
 .order-from-wrapper h2{
     font-size:20px;
 }
 .cross-icons{
  color:#2caee4;
  margin:0px 0px 0px 10px;
 }
 .apply-coupon-btn{
     background: #2b82e9;
      width: 100%;
    display: block;
    color: #ffffff;
    padding: 10px 20px;
}
.amount-wrapper{
  margin:15px 0px;  
}
 .amount-wrapper .table td{
     padding: 0.1rem;
     border-top:0;
 }
 .small-text{
     font-size: 12px;
     color: #2b82e9;
 }
 .logo-wrapper{
     padding:40px 0px;
 }
 .welcome-text{
     font-size:12px;
     margin-top:10px;
}
.main-btn{
    width: 280px;
    display: block;
    margin: 5px auto;
}
.footer-text{
    font-size:10px;
    text-align:center;
    padding:20px 0px 0px 0px;
}
.navigationdark-bg{
    background:#06253b;
}
.current-location-wrapper{
    padding:30px 0px 0px 0px;
}
.current-location-wrapper h3{
    color: #ffffff;
    font-weight: 400;
    font-size: 20px;
} 
.current-location-wrapper p{
    margin-top:10px;
    font-size: 13px;
    color: #c8c5c5;
}
.logo-wrapper{
    padding: 35px 0px;
    text-align: center;
    border-radius:3px;
    margin-bottom:10px;
}
.logo-wrapper-border{
    border: 1px solid #7d7a7a;
}
  .input-group-append {
    margin-left: -1px;
    background: #ffffff;
    border-top-left-radius: 0.25rem;
    border-bottom-left-radius: 0.25rem;
}
.form-control:focus {
    box-shadow: none;
}
#payment .modal-content {
    border:1px solid #ffffff;
    border-radius:0px;
}
#payment .modal-header{
    background:#000000;
    display:block;
    border-radius:0px;
    border:none;
}
#payment .modal-header h3{
    color: #ffffff;
    font-size: 22px;
}
#payment .modal-header p{
    color: #a99055;
    margin: 10px 0px;
}
#payment .modal-header .close{
    margin-top: -50px;
    color:#ffffff;
}
#payment .modal-body{
    padding:0;
}
.language-dropdown-wrapper{
    background: #1c1c1c;
    padding: 7px 15px;
}
.language-dropdown-wrapper select{
    background: none;
    border:none;
    color:#ffffff;
    font-size:14px;
}
.language-dropdown-wrapper select option{
    color:#000000;
}
.weight-600{
    font-weight:600;
}
.location-nav{
    background: #2a81e8;
    padding: 5px 0px 20px 0px;
}
.menu-tabs .nav-tabs .nav-item.show .nav-link, .nav-tabs .nav-link.active {
    border: none;
    color: #2b82e9;
}
.menu-tabs .nav-link{
    padding: 10px 8px 10px 0px;
    font-size: 13px;
    color: #7d7d7d;
}
.menu-tabs .tab-content h3{
    font-size:17px;
}
.menu-tabs .tab-content a{
    color:#7d7d7d;
    font-size:13px;
    float:right;
}
.menu-tabs .tab-content .dish-name{
     font-weight: 400;
    font-size: 15px;
    color: #3c3c3c;
}
.grid-wrapper{
    border-radius: 10px;
    box-shadow: 0 1px 3px rgb(0 0 0 / 12%), 0 1px 2px rgb(0 0 0 / 24%);
    margin:20px 0px;
}
.grid-container{
padding: 8px 0px 0px 20px;}
.menu-tabs .tab-content .dish-description{
    font-size: 9px;
    margin: 5px 1px;
}
.menu-tabs .tab-content .dish-rates{
    padding:10px 0px 0px 0px;
    color:#fe2335;
}
#enquiryForm .modal-dialog {
   position:fixed;
   top:auto;
   right:0px;
   left:0px;
   bottom:0;
}  
#enquiryForm .modal-title{
    font-size:20px;
}
#enquiryForm .modal-header {
    display: block;
}
#enquiryForm .modal-header {
    border-bottom:0;
    padding-bottom:0;
}
#enquiryForm .form-control {
    padding: 25px 0.75rem;
    background-color: #f6f6f6;
    border-radius: 15px;
}
#enquiryForm .modal-body{
    padding-top:0;
}
#enquiryForm .modal-header{
    font-size:12px;
}
#enquiryForm .modal-body p{
    font-size:12px;
    margin:10px 0px 30px 0px;
}
#enquiryForm .modal-dialog {
    margin: -1px;
}
#enquiryForm .input-group-text {
    background: #f6f6f6;
}
#enquiryForm .form-control::placeholder {
    color: #3f3e43;
    font-size:14px;
}
#enquiryForm .input-group.has-validation>.input-group-append:nth-last-child(n+3)>.btn, .input-group.has-validation>.input-group-append:nth-last-child(n+3)>.input-group-text, .input-group:not(.has-validation)>.input-group-append:not(:last-child)>.btn, .input-group:not(.has-validation)>.input-group-append:not(:last-child)>.input-group-text, .input-group>.input-group-append:last-child>.btn:not(:last-child):not(.dropdown-toggle), .input-group>.input-group-append:last-child>.input-group-text:not(:last-child), .input-group>.input-group-prepend>.btn, .input-group>.input-group-prepend>.input-group-text {
    border-top-left-radius: 15px;
    border-bottom-left-radius: 15px;
}
#enquiryForm .input-group-prepend {
    margin-right: -10px;
}
 */
</style>
</head>
<body>
	<%-- <%
	String key = "oZ7oo9";
	String salt = "UkojH5TS";
    String amount = request.getParameter("amount");
	String productinfo= request.getParameter("productinfo");
	String txnid = request.getParameter("txnid");
	String phone = request.getParameter("phone");
	String firstname = request.getParameter("firstname");
	String lastname = request.getParameter("lastname");
	String status = request.getParameter("status");
	String r_h =request.getParameter("hash");
    String hashString="";
    String udf1 =request.getParameter("udf1");
    String udf2 =request.getParameter("udf2");
    String udf3 =request.getParameter("udf3");
    String udf4 =request.getParameter("udf4");
    String udf5 =request.getParameter("udf5");
    String p_Id = request.getParameter("mihpayid");
    String additionalCharges = request.getParameter("additionalCharges");
  //  out.println("Your payment with Payment ID is :" + p_Id + "<br />");
    String hash;
    String email = request.getParameter("email");
    if(status.equals("success")){
    	//with additional charges
        if(additionalCharges!=null){
			String hashSequence = additionalCharges+"|"+salt+"|"+status+"||||||"+udf5+"|"+udf4+"|"+udf3+"|"+udf2+"|"+udf1+"|"+email+"|"+firstname+"|"+productinfo+"|"+amount+"|"+txnid+"|";
			hashString=hashSequence.concat(key);
            //out.println(hashString);
            hash=hashCal("SHA-512",hashString);
            //out.println(hash);
			if(r_h.equals(hash)){
				//Do success order processing here...
				//Additional step - Use verify payment api to double check payment.
				if(verifyPayment(key,salt,txnid)){
					//out.println("<h2>Payment Verified...</h2><br />");
				}
				else {
					out.println("<h1>Payment Not Verified...</h1><br />");
				}
			}
			else {out.println("Hash Mismatch");}
        }
        else { //without additional charges
            String hashSequence = salt+"|"+status+"||||||"+udf5+"|"+udf4+"|"+udf3+"|"+udf2+"|"+udf1+"|"+email+"|"+firstname+"|"+productinfo+"|"+amount+"|"+txnid+"|";
			hashString=hashSequence.concat(key);
            //out.println(hashString);
            hash=hashCal("SHA-512",hashString);
            //out.println(hash);
			if(r_h.equals(hash)){
				//Do success order processing here...
				//Additional step - Use verify payment api to double check payment.
				if(verifyPayment(key,salt,txnid)){
				//	out.println("<h2>Payment Verified...</h2><br />");
				}
				else {
					out.println("<h1>Payment Not Verified...</h1><br />");
				}
			}	                  
            else{ 
				out.println("Hash Mismatch");
			}
        }	
    }else {out.println("Transaction failed/cancelled...");
    }
	%>
<%!
	public String hashCal(String type,String str){
		byte[] hashseq=str.getBytes();
		StringBuffer hexString = new StringBuffer();
		try{
			MessageDigest algorithm = MessageDigest.getInstance(type);
			algorithm.reset();
			algorithm.update(hashseq);
			byte messageDigest[] = algorithm.digest();
			for (int i=0;i<messageDigest.length;i++) {
				String hex=Integer.toHexString(0xFF & messageDigest[i]);
				if(hex.length()==1) hexString.append("0");
				hexString.append(hex);
			}			
		} 
		catch(NoSuchAlgorithmException nsae)
		{ 
			nsae.printStackTrace();
		}
		return hexString.toString();
	}
	//This function is used to double check payment
	public Boolean verifyPayment(String mkey,String salt,String txnid)
	{
		String command = "verify_payment";
		String hashstr = mkey  + "|" + command + "|" + txnid + "|" + salt ;
		String hash = hashCal("SHA-512",hashstr);
		StringBuilder response=new StringBuilder();
		try {
		//for production
		//String wsUrl = "https://info.payu.in/merchant/postservice.php?form=1";
		//for test
		URL wsUrl = new URL("https://test.payu.in/merchant/postservice.php?form=2");
		Map<String,Object> params = new LinkedHashMap<String,Object>();
        params.put("key", mkey);
        params.put("hash", hash);
        params.put("var1", txnid);
        params.put("command", command);
        StringBuilder postData = new StringBuilder();
        for (Map.Entry<String,Object> param : params.entrySet()) {
            if (postData.length() != 0) postData.append('&');
            postData.append(URLEncoder.encode(param.getKey(), "UTF-8"));
            postData.append('=');
            postData.append(URLEncoder.encode(String.valueOf(param.getValue()), "UTF-8"));
        }
        byte[] postDataBytes = postData.toString().getBytes("UTF-8");
        HttpURLConnection conn = (HttpURLConnection)wsUrl.openConnection();
        conn.setRequestMethod("POST");
        conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
        conn.setRequestProperty("Content-Length", String.valueOf(postDataBytes.length));
        conn.setDoOutput(true);
        conn.getOutputStream().write(postDataBytes);
        Reader in = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
			for (int c; (c = in.read()) >= 0;) {
				response.append((char)c);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		String resp = response.toString();
		if(resp.indexOf("\"status\":\"success\"") > 1)
			return true;
		else
			return false;
		/*
		Here is json response example -
		{"status":1,
		"msg":"1 out of 1 Transactions Fetched Successfully",
		"transaction_details":</strong>
		{	
			"Txn72738624":
			{
				"mihpayid":"403993715519726325",
				"request_id":"",
				"bank_ref_num":"670272",
				"amt":"6.17",
				"transaction_amount":"6.00",
				"txnid":"Txn72738624",
				"additional_charges":"0.17",
				"productinfo":"P01 P02",
				"firstname":"Viatechs",
				"bankcode":"CC",
				"udf1":null,
				"udf3":null,
				"udf4":null,
				"udf5":"PayUBiz_PHP7_Kit",
				"field2":"179782",
				"field9":" Verification of Secure Hash Failed: E700 -- Approved -- Transaction Successful -- Unable to be determined--E000",
				"error_code":"E000",
				"addedon":"2019-08-09 14:07:25",
				"payment_source":"payu",
				"card_type":"MAST",
				"error_Message":"NO ERROR",
				"net_amount_debit":6.17,
				"disc":"0.00",
				"mode":"CC",
				"PG_TYPE":"AXISPG",
				"card_no":"512345XXXXXX2346",
				"name_on_card":"Test Owenr",
				"udf2":null,
				"status":"success",
				"unmappedstatus":"captured",
				"Merchant_UTR":null,
				"Settled_At":"0000-00-00 00:00:00"
			}
		}
		}
		Decode the Json response and retrieve "transaction_details" 
		Then retrieve {txnid} part. This is dynamic as per txnid sent in var1.
		Then check for mihpayid and status.
		*/
	}
%> --%>
	<!--<script type="text/javascript" > -->
	<script language="JavaScript" type="text/javascript">
	
	
	var BillNo;
		$(document).ready(function() {
			genCode();
			
			
		});
		function genCode() {
			// var kotNo=document.getElementById('transactionId').value;
			BillNo = '${command.billNumber}';
			let finalURL = 'https://chart.googleapis.com/chart?cht=qr&chl='
					+ htmlEncode(BillNo) + '&chs=160x160&chld=L|0'
			$('.qr-code').attr('src', finalURL);
			
		<%-- 	var popup = window.open('http://wywspl.com/sendMessage.php?AUTH_KEY=SANGUINE&message=Hi,%20'+ '<%=session.getAttribute(clsSessionConstants.SV_CUST_NAME).toString()%>'+ '%20%0a%0aWelcome%20to%20*Rooftop%20food%20court*,%20%0aYour%20order%20is%20confirmed%20and%20your%20order%20no.%20is%20*'+BillNo+'*%0a%0a%0a👉👉To%20collect%20the%20order%20you%20need%20to%20show%20the%20QR%20at%20the%20counter.%20&phone='+ '<%=session.getAttribute(clsSessionConstants.SV_CUST_MOBILE).toString()%>', '_blank'); 
			self.focus(); --%>
			var name = '<%=session.getAttribute(clsSessionConstants.SV_CUST_NAME).toString()%>';
			var mobile = '<%=session.getAttribute(clsSessionConstants.SV_CUST_MOBILE).toString()%>';
			var billno = BillNo;
			 document.getElementById("showskill").src ="http://wywspl.com/sendMessage.php?AUTH_KEY=SANGUINE&message=Hi,%20"+name+"%20%0a%0aWelcome%20to%20*Rooftop%20food%20court*,%20%0aYour%20order%20is%20confirmed%20and%20your%20order%20no.%20is%20*"+billno+"*%0a%0a%0a👉👉To%20collect%20the%20order%20you%20need%20to%20show%20the%20QR%20at%20the%20counter.%20&phone="+mobile;
			
				
		}
		function htmlEncode(value) {
			return $('<div/>').text(value).html();
		}
	</script>
	<s:form name="frmBillSettlement" method="POST" action=""
		style="width: 100%; height: 100%;">
		<%--      <div class="container-fluid">
			<div class="payment">
				<div class="col-1">
              <a href="frmOutlets.html"><img src="../${pageContext.request.contextPath}/resources/images/home.svg" style="width:40px;"></a>
           </div>
			<i onclick="funBackToDashboard()" style="font-size:30px;margin-top:15px;margin-left:5px;float:left;color:white;" class='fas fa-arrow-circle-left'></i> 
						</a>
				</div>
					<h5 style="text-align:center;font-size:40px;font-weight:700;margin-left:25px;margin-top:35px;"  id="idYourOrderHeader">Your Order</h5>
					<p style="text-align:center;margin-left:27px;font-size:22px;font-weight:300;"  id="idHeaderWithCompanyName">From ${command.companyName}</p>
				<div style="overflow: auto;padding-left: 25px;s">
					<table class="order" id="tblSettleItemTable" style="margin:30px 0px;">
						</table>
				</div></div> --%>
		</div>
		<section id="qr">
		<div class="container">
			<div class="row">
				<div class="col-md-12 scanqr-wrapper">
					<div class="qr-header">
						<center>
							
							<img src="https://kga.quinta.co.in:8450/KarnatakaGolfAssociation/resources/images/All-13.png" width="150px"> 
								 

							 
							<p class="col-mt-2" style="font-size: 20px;">Order Placed</p>
							<h5 style="font-size: 25px; font-family: 'Poppins', sans-serifl;">Transaction
								ID : ${command.billNumber}</h5>
						</center>
					</div>
					   
					<div class="qr-body">
						<div class="center"> 
							<img id="qrimg" style="width:150px;height:150px;margin-left:25px;" src="https://chart.googleapis.com/chart?cht=qr&chl=Hello+World&chs=160x160&chld=L|0" class="qr-code img-thumbnail img-responsive" />
						</div>
						<center>
							<!-- <p class="text-dark" style="font-size:20px;">Order Type : Eat at Cafe</p> -->
							<!--  <p style="font-size:20px;">Scan this QR code at</p>
                     	 <h5 class="main-color mb-3" style="font-size:35px;">Mammas South Indian (Tower 17 G Fir)</h5> </p>
                     	 <p style="font-size:25px;">OR</p>
                    	 <p style="font-size:25px;">User order Pine</p> -->
							<h5
								style="color: #595959; font-size: 25px; font-family: 'Poppins', sans-serifl; font-weight: 600; margin-bottom: 0;">
								BillNo : <span
									style="font-size: 25px; font-family: 'Poppins', sans-serifl; font-weight: 600; margin-bottom: 0;"
									class="main-color">${command.billNumber}</span>
							</h5>
							<input type="hidden" name="transactionId"
								value="${command.billNumber}" path="strtransactionId" /> <input
								type="hidden" name="Billno" id="transactionId"
								value="${command.billNumber}" />
						</center>
					</div>
				</div>
			</div>
		</div>
		</section>
	</s:form>
	
	<div class="container scanqr-wrapper">
		<div class="row"> <div class="col-12"></div></div>
		<div class="row">
			<div class="col-md-12">
				
			</div>	
				<div class="col-md-12">
					<p style="text-align:center;font-weight:500; margin-bottom:15px;margin-top:25px;">"Please scan this QR Code at counter to collect your food"</p>
					<p style="text-align:center;font-weight:500; margin-bottom:25px;">QR Code saved to you orders.!</p>
				</div>
					
		</div>
		
		<div class="row" style="text-align:center">
			<div class="col-7">
					<a href="https://kga.quinta.co.in:8450/KarnatakaGolfAssociation/orders.html" class="btn btn-primary" style="text-align:center; padding: 10px 45px;border-radius: 8px;font-size: 14px; border: none; background: #000000;color: #ffffff;">My Orders</a> <%-- class="btn-my-order" --%>
			</div>
			<div class="col-5">
					<a href="https://kga.quinta.co.in:8450/KarnatakaGolfAssociation/ModeOfOperation.html?clientCode=412.005&tableNo=" class="btn btn-primary" style="text-align:center; padding: 10px 45px;border-radius: 8px;font-size: 14px; border: none; background: #000000;color: #ffffff;">Home</a> <%-- class="btn-my-order" --%>
			</div>
			
		</div>	
	</div>

<%-- 	<iframe src="'http://wywspl.com/sendMessage.php?AUTH_KEY=SANGUINE&message=Hi,%20'+ '<%=session.getAttribute(clsSessionConstants.SV_CUST_NAME).toString()%>'+ '%20%0a%0aWelcome%20to%20*Rooftop%20food%20court*,%20%0aYour%20order%20is%20confirmed%20and%20your%20order%20no.%20is%20*'+BillNo+'*%0a%0a%0a👉👉To%20collect%20the%20order%20you%20need%20to%20show%20the%20QR%20at%20the%20counter.%20&phone='+ '<%=session.getAttribute(clsSessionConstants.SV_CUST_MOBILE).toString()%>'">
</iframe>
 --%>
 
 	<iframe id="showskill" src="" width="0" height="0">
</iframe>
	
</body>
</html>
