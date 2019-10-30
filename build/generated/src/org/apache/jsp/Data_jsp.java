package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public final class Data_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"Style.css\">\n");
      out.write("    <link rel=\"stylesheet\"  href=\"css/bootstrap.min.css\">\n");
      out.write("    <script type=\"text/javascript\" src=\"js/bootstrap.min.js\"></script>\n");
      out.write("    <link rel=\"stylesheet\" href=\"ism/css/my-slider.css\"/>\n");
      out.write("    <script src=\"ism/js/ism-2.2.min.js\"></script>\n");
      out.write("    <title>Jet Airways| Book Tickets</title>\n");
      out.write(" </head>\n");
      out.write("<body>\n");
      out.write("\t\n");
      out.write("\t<nav class=\"navbar fixed-top navbar-light bg-light\">\n");
      out.write("  <h3 class=\"navbar-text\">\t\n");
      out.write("\t\t\tJet Airways\n");
      out.write("\t  </h3>\n");
      out.write("\t<ul class=\"nav justify-content-end\" id=\"nav\">\n");
      out.write("\t\t  <li class=\"nav-item\">\n");
      out.write("\t\t\t<a class=\"nav-link active\" href=\"index.html\">Home</a>\n");
      out.write("\t\t  </li>\n");
      out.write("\t\t  <li class=\"nav-item\">\n");
      out.write("\t\t\t<a class=\"nav-link\" href=\"offers.html\">Offers</a>\n");
      out.write("\t\t  </li>\n");
      out.write("\t\t  <li class=\"nav-item\">\n");
      out.write("\t\t\t<a class=\"nav-link\" href=\"anoutUs.html\">About Us</a>\n");
      out.write("\t\t  </li>\n");
      out.write("\t\t<li class=\"nav-item\" id=\"login\">\n");
      out.write("                    <a class=\"nav-link\" href=\"Login.jsp\">Login</a>\n");
      out.write("\t\t  </li>\n");
      out.write("\t\t \n");
      out.write("\t</ul>\n");
      out.write("</nav>\n");
      out.write("    <p class=\"h4\" style=\"margin: 6% 0% 0% 15%; color: rgb(77, 77, 77);\">Book Tickets</p>\n");
      out.write("    <div class=\"container\"  style=\" background-color: rgba(237, 237, 237, 0.85); height: 70px; width: 70%;\n");
      out.write("    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);\">\n");
      out.write("            <ul class=\"nav nav-pills nav-fill\">\n");
      out.write("                    <li class=\"nav-item\" style=\"margin-top: 25px;\">\n");
      out.write("                      <p class=\"h6\" >30 OCT 2019</p>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\" style=\"margin-top: 25px;\">\n");
      out.write("                      <p class=\"h6\">BOM &rarr; LKO</p>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\" style=\"margin-top: 25px;\">\n");
      out.write("                      <p class=\"h6\">1 Passenger</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\" style=\"margin-top: 25px;\">\n");
      out.write("                      <a class=\"h6\">&#8377 6,000</p>\n");
      out.write("                    </li>\n");
      out.write("            </ul>\n");
      out.write("    </div>\n");
      out.write("         \n");
      out.write("\n");
      out.write("    ");
 
            String origin = request.getParameter("origin");
            String des = request.getParameter("des");
            String from_date = request.getParameter("dep_date");
            String re_date = request.getParameter("re_date");
            String passengers = request.getParameter("passenger");
            
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr","hr");
            PreparedStatement ps = con.prepareStatement("select * from INDIAN_FLIGHTS WHERE ORIGIN_CITY=? AND DESTATION_CITY=? ");
            ps.setString(1, origin);
            ps.setString(2, des);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
      out.write("\n");
      out.write("            ");
 String planeNo = rs.getString(1); 
      out.write("\n");
      out.write("            ");
 String flightOrigin = rs.getString(2); 
      out.write("\n");
      out.write("            ");
 String originCity = rs.getString(3); 
      out.write("\n");
      out.write("            ");
 String flightDestation = rs.getString(4); 
      out.write("\n");
      out.write("            ");
 String destationCity = rs.getString(5); 
      out.write("\n");
      out.write("            ");
 String flightDuratuion = rs.getString(6); 
      out.write("\n");
      out.write("            ");
 String flightType = rs.getString(7); 
      out.write("\n");
      out.write("            ");
 String economySeat = rs.getString(8); 
      out.write("\n");
      out.write("            ");
 String businessSeat = rs.getString(9); 
      out.write("\n");
      out.write("            ");
 String flightTiming = rs.getString(10); 
      out.write("\n");
      out.write("           \n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-sm-10\" style=\"border: 1px solid red; width: 70%; margin-left: 13%;\">\n");
      out.write("                    <div class=\"table-responsive\">\n");
      out.write("  <table class=\"table\">\n");
      out.write("    ...\n");
      out.write("  </table>\n");
      out.write("</div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("                        \n");
      out.write("            ");
}
            ps.close();
            con.close();
        }catch(Exception e){
            System.out.println(e);
        }
        
      out.write("\n");
      out.write("\n");
      out.write("  <div id=\"footer\" style=\"margin-top: 50%;\">\n");
      out.write("\t\t\t\n");
      out.write("        <div id=\"footercontainer\">\n");
      out.write("          <h8><a href=\"#\">Terms &amp; Conditions</a></h8><br>\n");
      out.write("          <h8><a href=\"#\">Policies</a></h8><br>\n");
      out.write("          <h8><a href=\"#\">Media Center</a></h8><br>\n");
      out.write("          <h8><a href=\"#\">Special Assistance</a></h8><br>\n");
      out.write("          \n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div id=\"footercontainer_two\">\n");
      out.write("          <h5>Follow us on</h5>\n");
      out.write("          <h8><a href=\"https://www.facebook.com/campaign/landing.php?campaign_id=1653993517&extra_1=s|c|318504236063|e|facebook%27|&placement=&creative=318504236063&keyword=facebook%27&partner_id=googlesem&extra_2=campaignid%3D1653993517%26adgroupid%3D63066387003%26matchtype%3De%26network%3Dg%26source%3Dnotmobile%26search_or_content%3Ds%26device%3Dc%26devicemodel%3D%26adposition%3D1t1%26target%3D%26targetid%3Dkwd-362360550869%26loc_physical_ms%3D1007785%26loc_interest_ms%3D%26feeditemid%3D%26param1%3D%26param2%3D&gclid=EAIaIQobChMI6Jv63cej5QIVhTUrCh2atgPwEAAYASAAEgKVePD_BwE\">Facebook</a></h8><br>\n");
      out.write("          <h8><a href=\"https://www.instagram.com\">Twitter</a></h8><br>\n");
      out.write("          <h8><a href=\"https://www.instagram.com\">Instagram</a></h8><br>\n");
      out.write("        </div>\n");
      out.write("      <span id=\"copyright\">© Jet Airways (India) Ltd. All rights reserved.</span>\n");
      out.write("      \n");
      out.write("    </div>\n");
      out.write("      \n");
      out.write("    \n");
      out.write("</body>\n");
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
