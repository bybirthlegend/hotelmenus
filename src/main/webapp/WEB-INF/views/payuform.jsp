<%@ page import="java.util.*" %>
<%@ page import="java.security.*" %>
<%@ page import =  "org.json.simple.JSONArray" %>
<%@ page import =  "org.json.simple.JSONObject" %>

<%@ taglib prefix="json" uri="http://www.atg.com/taglibs/json" %>
<%--
	Note : It is recommended to fetch all the parameters from your Database rather than posting static values or entering them on the UI.

	POST REQUEST to be posted to below mentioned PayU URLs:

	For PayU Test Server:
	POST URL: https://test.payu.in/_payment

	For PayU Production (LIVE) Server:
	POST URL: https://secure.payu.in/_payment
	
	Request Hash
	----------------
	For hash calculation, you need to generate a string using certain parameters 
	and apply the sha512 algorithm on this string. Please note that you have to 
	use pipe (|) character as delimeter. 
	The parameter order is mentioned below:
	
	sha512(key|txnid|amount|productinfo|firstname|email|udf1|udf2|udf3|udf4|udf5||||||SALT)
	
	Description of each parameter available on html page as well as in PDF.
	
	Case 1: If all the udf parameters (udf1-udf5) are posted by the merchant. Then,
	hash=sha512(key|txnid|amount|productinfo|firstname|email|udf1|udf2|udf3|udf4|udf5||||||SALT)
	
	Case 2: If only some of the udf parameters are posted and others are not. For example, if udf2 and udf4 are posted and udf1, udf3, udf5 are not. Then,
	hash=sha512(key|txnid|amount|productinfo|firstname|email||udf2||udf4|||||||SALT)

	Case 3: If NONE of the udf parameters (udf1-udf5) are posted. Then,
	hash=sha512(key|txnid|amount|productinfo|firstname|email|||||||||||SALT)
	
	In present kit and available PayU plugins UDF5 is used. So the order is -	
	hash=sha512(key|txnid|amount|productinfo|firstname|email|||||udf5||||||SALT)
	
--%>
<% 	

	



	// Json object is created
	JSONObject splitobj = new JSONObject();
	// Adding data using the created objec
	splitobj.put("type", "absolute");


	// LinkedHashMap is created for address data
	Map m1 = new LinkedHashMap(4);
	Map a1 = new LinkedHashMap(2);
	Map a2 = new LinkedHashMap(2);
			
	m1.put("streetAdd", "4, Ibbani Street");
	m1.put("city1", "Bangalore");
	m1.put("state1", "Karnataka");
	m1.put("pinCode", 560064);


	JSONArray jabb = new JSONArray();
	JSONArray jabb2 = new JSONArray();
	m1 = new LinkedHashMap(2);


	a1 = new LinkedHashMap(2);
	a1.put("aggregatorSubTxnId", "9a70ea0155268101001ba");
	
	a1.put("aggregatorSubAmt", "60");

	a2 = new LinkedHashMap(2);
	a2.put("aggregatorSubTxnId", "9a70ea0155268101001bb");
	a2.put("aggregatorSubAmt", "40");

	jabb.add(a1);
	jabb2.add(a2);

	m1.put("P41sCY", jabb);
	m1.put("P41sCK", jabb2);
	// adding address to the created JSON object
	splitobj.put("splitinfo", m1);
	// JSONArray is created to add the phone numbers

	// the JSON data is written into the file


	  System.out.print("Hello World !");

	  System.out.print(splitobj);

	  ////////////////////////////////////////////////
	  
	 String merchant_key="U5SqBz";
	String SALT="sxttSWDY9DWnvMgnvK8JAApZtisAo6xa";
	String action1 ="";
	String base_url="https://test.payu.in";
	int error=0;
	
	  
	String hashString="";
	
	Enumeration paramNames = request.getParameterNames();
	Map<String,String> params= new HashMap<String,String>();
    	while(paramNames.hasMoreElements()) 
	{
      		String paramName = (String)paramNames.nextElement();
      
      		String paramValue = request.getParameter(paramName);

		params.put(paramName,paramValue);
	}
	String txnid ="";
	if(empty(params.get("txnid"))){
		Random rand = new Random();
		String rndm = Integer.toString(rand.nextInt())+(System.currentTimeMillis() / 1000L);
		txnid=hashCal("SHA-256",rndm).substring(0,20);
	}
	else
		txnid=params.get("txnid");

	String txn="abcd";
	String hash="";
	/* String hashSequence = "key|txnid|amount|productinfo|firstname|email|udf1|udf2|udf3|udf4|udf5||||||SALT|splitobj"; */
	String hashSequence = "key|txnid|amount|productinfo|firstname|email|udf1|udf2|udf3|udf4|udf5|||||splitobj ";
	if(empty(params.get("hash")) && params.size()>0)
	{
		if( empty(params.get("key"))
			|| empty(params.get("txnid"))
			|| empty(params.get("amount"))
			|| empty(params.get("firstname"))
			|| empty(params.get("email"))
			|| empty(params.get("phone"))
			|| empty(params.get("productinfo"))
			|| empty(params.get("surl"))
			|| empty(params.get("furl"))	)
			
			error=1;
		else{
			String[] hashVarSeq=hashSequence.split("\\|");
			
			for(String part : hashVarSeq)
			{
				hashString= (empty(params.get(part)))?hashString.concat(""):hashString.concat(params.get(part));
				hashString=hashString.concat("|");
			}
			hashString=hashString.concat(SALT);
			

			 hash=hashCal("SHA-512",hashString);
		/* 	action1=base_url.concat("/_payment"); */
		}
	}
	else if(!empty(params.get("hash")))
	{
		hash=params.get("hash");
		action1=base_url.concat("/_payment");
	}
		

%>
<%!
public boolean empty(String s)
	{
		if(s== null || s.trim().equals(""))
			return true;
		else
			return false;
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
			
		}catch(NoSuchAlgorithmException nsae){ }
		
		return hexString.toString();


	}
%>
<html>

<script>
/* Below script makes final submission of form to Payment Gateway. This script is for present Demo/Test request 
	form only. In case of live integration, other methods may be used for request form submission. Salt is confidential
	so should not be passed over internet. */
var hash='<%= hash %>';
function submitPayuForm() {
	
	

	if (hash == '')
		return;

      var payuForm = document.forms.payuForm;
      payuForm.submit();
    }



</script>


<body onload="submitPayuForm();">


<script>


window.onload = function () {

document.getElementById("watchButton").click(); 
document.getElementById("watchButton").click(); 


};


</script>







<!--// Form with required parameters to be posted to Payment Gateway. For details of each required 
			parameters refer Integration PDF. //-->
<form action="<%= action1 %>" method="post" name="payuForm">
	  <!-- Required - Unique merchant key provided by PayU along with salt. Salt is used for Hash signature 
				calculation within application and must not be posted or transfered over internet. //-->
	  <input type="hidden" name="key" value="<%= merchant_key %>" />
	  <!-- Required - Hash signature generated based on mandatory 
				parameter values. Refer kit's code for more details. //-->
      <input type="hidden" name="hash" value="<%= hash %>"/>
	  <!-- Required - Unique transaction id or order id to identify and match 
				payment with local invoicing. Datatype is Varchar with a limit of 25 char. //-->
      <input type="hidden" name="txnid" value="<%= txnid %>" />
      
<%--        <input type="hidden" name="amount" value="<%=session.getAttribute("grandTotal")%>" /> --%>
    <input type="hidden" name="amount" value="5.0" />
        <input type="hidden" name="firstname" value="Pooja" />
         <input type="hidden" name="email" value="pooja@gmail.com" />
          <input type="hidden" name="phone" value="9356965845" />
           <input type="hidden" name="productinfo" value="OrderFood" />
           <!--   <input name="surl" type="hidden" value="http://sanguineservers.com:8081/prjQRMenu/success.html" size="64" /> -->
           <input name="surl" type="hidden" value="http://sanguineservers.com:8081/prjQRMenu/success.html" size="64" /> 
           <input name="furl" type="hidden" value="http://sanguineservers.com:8081/prjQRMenu/success.html" size="64" />
           <input type="hidden" name="lastname" id="lastname" value="<%=session.getAttribute("voucherNo")%>" />
           
          
            <% if(empty(hash)){ %>
            <input  hidden type="submit"  value="Submit" />.
          <% } %>
          <button  hidden id="watchButton" type="submit">HD </button>
    </form>


</body>
</html>