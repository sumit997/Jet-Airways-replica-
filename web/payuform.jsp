<%@page import="java.sql.ResultSet"%>
<%@ page import="java.util.*" %>
<%@ page import="java.security.*" %>

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
<% 	
	String merchant_key="CXqCYkeT";
	String salt="YawS790f7Z";
	String action1 ="";
	String base_url="https://sandboxsecure.payu.in";
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
	String hashSequence = "key|txnid|amount|productinfo|firstname|email|udf1|udf2|udf3|udf4|udf5|udf6|udf7|udf8|udf9|udf10";
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
			|| empty(params.get("furl"))
			|| empty(params.get("service_provider"))
	)
			
			error=1;
		else{
			String[] hashVarSeq=hashSequence.split("\\|");
			
			for(String part : hashVarSeq)
			{
				hashString= (empty(params.get(part)))?hashString.concat(""):hashString.concat(params.get(part));
				hashString=hashString.concat("|");
			}
			hashString=hashString.concat(salt);
			

			 hash=hashCal("SHA-512",hashString);
			action1=base_url.concat("/_payment");
		}
	}
	else if(!empty(params.get("hash")))
	{
		hash=params.get("hash");
		action1=base_url.concat("/_payment");
	}
		

%>
<html>

<script>
var hash='<%= hash %>';
function submitPayuForm() {
	
	if (hash == '')
		return;

      var payuForm = document.forms.payuForm;
      payuForm.submit();
    }
</script>

<style>
    table{
        padding: 10px;
        margin: 60px 400px 0px 400px;
        line-height: 30px;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    }
    tr{
        font-family: sans-serif;
        font-size: 20px;
        display: inline;
    }
    td input{
        padding: 5px;
        border-radius: 6px;
        border: 1.2px solid gray;
        height: 35px;
    }
    #pay{
        padding: 10px;
        background-color: yellow;
        color: black;
        width: 300px;
        border-radius: 5px;
        position: absolute;
        margin-top: 700px;
        margin-left: 40%;
        border: none;
        font-size: 20px;
        cursor: pointer;
    }
</style>

<body onload="submitPayuForm();">
 <%
            response.setHeader("Cache-Control", "no-cache,no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache"); // http 1.0
            response.setHeader("Expires", "0"); // for proxies
            
            if(session.getAttribute("name")==null){
                response.sendRedirect("Login.jsp");
            }
        %>

         <% 
             
               
                    String sucessUrl = "http://localhost:32635/Jet-Airways-replica-/Final_Summarry.jsp";
                    String failurUrl= "http://localhost:32635/Jet-Airways-replica-/Payment_Page.jsp";
                  %>
<form action="myServlet"  name="payuform" method=POST >
<input type="hidden" name="key"value="UFu3ed" />
<input type="hidden" name="hash_string" value="" />
<input type="hidden" name="hash" />
<input type="hidden" name="txnid"/>
    <table>
       
        <tr>
        <td>Amount: </td>
        <td><input name="amount" type="hidden" value="<%=economySeat %>"  /></td>
        <td>First Name: </td>
        <td><input name="firstname" id="firstname"  /></td>
        </tr>
        <tr>
        <td>Email: </td>
        <td><input name="email" id="email"   /></td>
        <td>Phone: </td>
        <td><input name="phone"  /></td>
        </tr>
        
        <tr>
        <td>Success URI: </td>
        <td colspan="3"><input name="surl" type="hidden" value="<% out.print(sucessUrl); %>" size="64"  /></td>
        </tr>
        <tr>
        <td>Failure URI: </td>
        <td colspan="3"><input name="furl" type="hidden" value="<% out.print(failurUrl); %>" size="64" /></td>
        </tr>
        
        <tr>
        </tr>
    </table>
</form>


</body>
</html>