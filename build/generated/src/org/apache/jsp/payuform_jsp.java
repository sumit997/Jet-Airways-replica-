package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.security.*;

public final class payuform_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


public boolean empty(String s)
	{
		if(s== null || s.trim().equals(""))
			return true;
		else
			return false;
	}


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

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write('\n');
      out.write('\n');
 	
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
		


      out.write("\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("var hash='");
      out.print( hash );
      out.write("';\n");
      out.write("function submitPayuForm() {\n");
      out.write("\t\n");
      out.write("\tif (hash == '')\n");
      out.write("\t\treturn;\n");
      out.write("\n");
      out.write("      var payuForm = document.forms.payuForm;\n");
      out.write("      payuForm.submit();\n");
      out.write("    }\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("<style>\n");
      out.write("    table{\n");
      out.write("        padding: 10px;\n");
      out.write("        margin: 60px 400px 0px 400px;\n");
      out.write("        line-height: 30px;\n");
      out.write("        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);\n");
      out.write("    }\n");
      out.write("    tr{\n");
      out.write("        font-family: sans-serif;\n");
      out.write("        font-size: 20px;\n");
      out.write("        display: inline;\n");
      out.write("    }\n");
      out.write("    td input{\n");
      out.write("        padding: 5px;\n");
      out.write("        border-radius: 6px;\n");
      out.write("        border: 1.2px solid gray;\n");
      out.write("        height: 35px;\n");
      out.write("    }\n");
      out.write("    #pay{\n");
      out.write("        padding: 10px;\n");
      out.write("        background-color: yellow;\n");
      out.write("        color: black;\n");
      out.write("        width: 300px;\n");
      out.write("        border-radius: 5px;\n");
      out.write("        position: absolute;\n");
      out.write("        margin-top: 700px;\n");
      out.write("        margin-left: 40%;\n");
      out.write("        border: none;\n");
      out.write("        font-size: 20px;\n");
      out.write("        cursor: pointer;\n");
      out.write("    }\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("<body onload=\"submitPayuForm();\">\n");
      out.write(" ");

            response.setHeader("Cache-Control", "no-cache,no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache"); // http 1.0
            response.setHeader("Expires", "0"); // for proxies
            
            if(session.getAttribute("name")==null){
                response.sendRedirect("Login.jsp");
            }
        
      out.write("\n");
      out.write("\n");
      out.write("<form action=\"");
      out.print( action1 );
      out.write("\" method=\"post\" name=\"payuForm\">\n");
      out.write("<input type=\"hidden\" name=\"key\" value=\"");
      out.print( merchant_key );
      out.write("\" />\n");
      out.write("      <input type=\"hidden\" name=\"hash\" value=\"");
      out.print( hash );
      out.write("\"/>\n");
      out.write("      <input type=\"hidden\" name=\"txnid\" value=\"");
      out.print( txnid );
      out.write("\" />\n");
      out.write("      <input type=\"hidden\" name=\"udf2\" value=\"");
      out.print( txnid );
      out.write("\" />\n");
      out.write("\t  <input type=\"hidden\" name=\"service_provider\" value=\"payu_paisa\" />\n");
      out.write("      <table>\n");
      out.write("        <tr>\n");
      out.write("          <td><b>Mandatory Parameters</b></td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("          <td>Amount: </td>\n");
      out.write("          <td><input name=\"amount\" value=\"");
      out.print( (empty(params.get("amount"))) ? "" : params.get("amount") );
      out.write("\" /></td>\n");
      out.write("          <td>First Name: </td>\n");
      out.write("          <td><input name=\"firstname\" id=\"firstname\" value=\"");
      out.print( (empty(params.get("firstname"))) ? "" : params.get("firstname") );
      out.write("\" /></td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("          <td>Email: </td>\n");
      out.write("          <td><input name=\"email\" id=\"email\" value=\"");
      out.print( (empty(params.get("email"))) ? "" : params.get("email") );
      out.write("\" /></td>\n");
      out.write("          <td>Phone: </td>\n");
      out.write("          <td><input name=\"phone\" value=\"");
      out.print( (empty(params.get("phone"))) ? "" : params.get("phone") );
      out.write("\" /></td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("          <td>Product Info: </td>\n");
      out.write("          <td colspan=\"3\"><input name=\"productinfo\" value=\"");
      out.print( (empty(params.get("productinfo"))) ? "" : params.get("productinfo") );
      out.write("\" size=\"64\" /></td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("          <td>Success URI: </td>\n");
      out.write("          <td colspan=\"3\"><input name=\"surl\" value=\"");
      out.print( (empty(params.get("surl"))) ? "" : params.get("surl") );
      out.write("\" size=\"64\" /></td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("          <td>Failure URI: </td>\n");
      out.write("          <td colspan=\"3\"><input name=\"furl\" value=\"");
      out.print( (empty(params.get("furl"))) ? "" : params.get("furl") );
      out.write("\" size=\"64\" /></td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("          ");
 if(empty(hash)){ 
      out.write("\n");
      out.write("          <input  id=\"pay\" type=\"submit\" value=\"Submit\" />\n");
      out.write("          ");
 } 
      out.write("\n");
      out.write("        </tr>\n");
      out.write("      </table>\n");
      out.write("    </form>\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
