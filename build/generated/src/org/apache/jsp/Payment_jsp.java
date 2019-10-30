package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Payment_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("<!Doctype html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link href=\"style.css\" type=\"text/css\" rel=\"stylesheet\"/>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <style>\n");
      out.write("            #box{\n");
      out.write("                height: 800px;\n");
      out.write("                border: 1px solid white;\n");
      out.write("                width: 100%;\n");
      out.write("                margin-top: 80px;\n");
      out.write("            }\n");
      out.write("            #step{\n");
      out.write("                font-family: sans-serif;\n");
      out.write("                color: gray;\n");
      out.write("                margin-top: 18px;\n");
      out.write("                margin-right: 50px;\n");
      out.write("                float: right;\n");
      out.write("                font-size: 18px;\n");
      out.write("            }\n");
      out.write("            #heading{\n");
      out.write("                font-family: sans-serif;\n");
      out.write("                color: #1d1c1c;\n");
      out.write("                margin-top: 40px;\n");
      out.write("                margin-left: 77px;\n");
      out.write("                font-size: 24px;\n");
      out.write("                position: absolute;\n");
      out.write("                border-bottom: 1px solid black;\n");
      out.write("            } \n");
      out.write("            #box form{\n");
      out.write("                height: 350px;\n");
      out.write("                width: 30%;\n");
      out.write("                padding: 10px;\n");
      out.write("                margin-top: 90px;\n");
      out.write("                margin-left: 10px;\n");
      out.write("            }\n");
      out.write("            #name{\n");
      out.write("                font-family: sans-serif;\n");
      out.write("                color: #1d1c1c;\n");
      out.write("                font-size: 18px;\n");
      out.write("            }\n");
      out.write("            #username{\n");
      out.write("                padding: 8px;\n");
      out.write("                width: 220px;\n");
      out.write("                border-radius: 5px;\n");
      out.write("                border: 1.2px solid gray;\n");
      out.write("                font-family: sans-serif;\n");
      out.write("                font-size: 15px;\n");
      out.write("            }\n");
      out.write("            #email{\n");
      out.write("                font-family: sans-serif;\n");
      out.write("                color: #1d1c1c;\n");
      out.write("                font-size: 18px;\n");
      out.write("                margin-top: 20px;\n");
      out.write("            }\n");
      out.write("            #email_input{\n");
      out.write("                padding: 8px;\n");
      out.write("                width: 220px;\n");
      out.write("                border-radius: 5px;\n");
      out.write("                border: 1.2px solid gray;\n");
      out.write("                font-family: sans-serif;\n");
      out.write("                font-size: 15px;\n");
      out.write("            }\n");
      out.write("            #phone{\n");
      out.write("                font-family: sans-serif;\n");
      out.write("                color: #1d1c1c;\n");
      out.write("                font-size: 18px;\n");
      out.write("                margin-top: 20px;\n");
      out.write("            }\n");
      out.write("            #number{\n");
      out.write("                padding: 8px;\n");
      out.write("                width: 220px;\n");
      out.write("                border-radius: 5px;\n");
      out.write("                border: 1.2px solid gray;\n");
      out.write("                font-family: sans-serif;\n");
      out.write("                font-size: 15px;\n");
      out.write("            }\n");
      out.write("            #pn{\n");
      out.write("                font-family: sans-serif;\n");
      out.write("                color: #1d1c1c;\n");
      out.write("                font-size: 18px;\n");
      out.write("                margin-top: 20px;\n");
      out.write("            }\n");
      out.write("            #passNo{\n");
      out.write("                padding: 8px;\n");
      out.write("                width: 220px;\n");
      out.write("                border-radius: 5px;\n");
      out.write("                border: 1.2px solid gray;\n");
      out.write("                font-family: sans-serif;\n");
      out.write("                font-size: 15px;\n");
      out.write("            }\n");
      out.write("            #add_bttn{\n");
      out.write("                padding: 10px;\n");
      out.write("                background-color: yellow;\n");
      out.write("                color: black;\n");
      out.write("                border-radius: 5px;\n");
      out.write("                font-size: 18px;\n");
      out.write("                width: 150px;\n");
      out.write("                border: none;\n");
      out.write("                margin-left: 90px;\n");
      out.write("                margin-top: 50px;\n");
      out.write("            }\n");
      out.write("            .pm-button{\n");
      out.write("                margin-top: 580px;\n");
      out.write("                margin-left: 500px;\n");
      out.write("                position: absolute;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            #summary{\n");
      out.write("                height: 500px;\n");
      out.write("                float: right;\n");
      out.write("                margin-top: 140px;\n");
      out.write("                width: 30%;\n");
      out.write("                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);\n");
      out.write("                background: #F0FCFB;\n");
      out.write("                margin-right: 30%;\n");
      out.write("            }\n");
      out.write("            #name{\n");
      out.write("                margin-left: 180px;\n");
      out.write("                font-family: sans-serif;\n");
      out.write("                margin: 20px 80px 0px 120px;\n");
      out.write("            }\n");
      out.write("            #tit{\n");
      out.write("                font-family: sans-serif;\n");
      out.write("                margin-left: 30px;\n");
      out.write("                line-height: 50px;\n");
      out.write("            }\n");
      out.write("            #util{\n");
      out.write("                margin-left: 10px;\n");
      out.write("                font-family: sans-serif;\n");
      out.write("                font-weight: 700;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        ");

            response.setHeader("Cache-Control", "no-cache,no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache"); // http 1.0
            response.setHeader("Expires", "0"); // for proxies
            
            if(session.getAttribute("name")==null){
                response.sendRedirect("Login.jsp");
            }
        
      out.write("\n");
      out.write("\n");
      out.write("        <div id=\"menulogo\" onclick=\"openFunction()\">&#9776;</div>\n");
      out.write("        <h1 id=\"companyName\">Jet Airways</h1>\n");
      out.write("        <form action=\"logout\">\n");
      out.write("            <input style=\"position: absolute; padding: 10px; width: 90px;border-radius: 10px; cursor: pointer; margin-left: 92%; margin-top: -60px; \n");
      out.write("                   background: none; border: 2px solid #ffff00; font-family: sans-serif; font-size: 18px;\" type=\"submit\" value=\"Logout\">\n");
      out.write("        </form>\n");
      out.write("        <h3 style=\"float: right; margin-top: -45px; margin-right: 160px; font-family: sans-serif; \">Welcome ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h3>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div id=\"menu\" class=\"box\">\n");
      out.write("            <a href=\"index.html\">Home</a>\n");
      out.write("            <a href=\"#\">Book Tickets</a>\n");
      out.write("            <a href=\"#\">Offers</a>\n");
      out.write("            <a href=\"#\">About Us</a>\n");
      out.write("            <a href=\"#\" class=\"close\" id =\"close\" onclick=\"closeFunction()\"><h2>&times;</h2></a>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div id=\"box\">\n");
      out.write("           \n");
      out.write("            <h1 id=\"step\">Step 3 / 3</h1>\n");
      out.write("            <h1 id=\"heading\">Payment Details</h1>\n");
      out.write("            \n");
      out.write("            <div class='pm-button'>\n");
      out.write("                <a href='payuform.jsp'>\n");
      out.write("                    <img src='https://www.payumoney.com/media/images/payby_payumoney/new_buttons/23.png' />\n");
      out.write("                </a>\n");
      out.write("            </div> \n");
      out.write("            \n");
      out.write("            <div id=\"summary\">\n");
      out.write("                <h2 id=\"name\">Ticket Summary</h2><br>\n");
      out.write("                <span id=\"tit\">Plane No:</span><br>\n");
      out.write("                <span id=\"tit\">Flight Origin: </span><span id=\"util\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</span><br>\n");
      out.write("                <span id=\"tit\">Flight Destination:</span><span id=\"util\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${to_des}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</span><br>\n");
      out.write("                <span id=\"tit\">No.of Passenger: </span><span id=\"util\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${passenger}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</span><br>\n");
      out.write("                <span id=\"tit\">Plane Timing: </span><br>\n");
      out.write("                <span id=\"tit\">Price:</span<br>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("           \n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div id=\"footer\">\n");
      out.write("\n");
      out.write("            <div id=\"footercontainer\">\n");
      out.write("                <h4><a href=\"#\">Terms & Conditions</a></h4>\n");
      out.write("                <h4><a href=\"#\">Policies</a></h4>\n");
      out.write("                <h4><a href=\"#\">Media Center</a></h4>\n");
      out.write("                <h4><a href=\"#\">Special Assistance</a></h4>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div id=\"footercontainer_two\">\n");
      out.write("                <h3>Follow us on</h3>\n");
      out.write("                <h4><a href=\"#\">Facebook</a></h4>\n");
      out.write("                <h4><a href=\"#\">Twitter</a></h4>\n");
      out.write("                <h4><a href=\"#\">Instagram</a></h4>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <span id=\"copyright\">© Jet Airways (India) Ltd. All rights reserved.</span>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            function openFunction() {\n");
      out.write("                document.getElementById(\"menu\").style.width = \"300px\";\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function closeFunction() {\n");
      out.write("                document.getElementById(\"menu\").style.width = \"0px\";\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
