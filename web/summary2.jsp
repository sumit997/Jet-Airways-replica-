<%-- 
    Document   : index
    Created on : Sep 28, 2019, 2:35:03 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="Style.css">
    <link rel="stylesheet"  href="css/bootstrap.min.css">
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="ism/css/my-slider.css"/>
    <script src="ism/js/ism-2.2.min.js"></script>
    <title>Jet Airways| Book Tickets</title>
</head>
<body>
     <%
            response.setHeader("Cache-Control", "no-cache,no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache"); // http 1.0
            response.setHeader("Expires", "0"); // for proxies
            
            if(session.getAttribute("name")==null){
                response.sendRedirect("Login.jsp");
            }
            
        %>
	
	<nav class="navbar fixed-top navbar-light bg-light">
  <h3 class="navbar-text">Jet Airways</h3>
	<ul class="nav justify-content-end" id="nav">
                  <li class="nav-item">
                        <a class="nav-link" >Hello ${name}!</a>
                  </li>
		  <li class="nav-item">
			<a class="nav-link" href="index.html">Home</a>
		  </li>
		  <li class="nav-item">
			<a class="nav-link" href="offers.html">Offers</a>
		  </li>
		  <li class="nav-item">
			<a class="nav-link" href="anoutUs.html">About Us</a>
                  </li>
                  <li class="nav-item" id="login">
                    <a class="nav-link"  href="logout">Logout</a>
		  </li>
	</ul>
</nav>
	
                  <% 

                    String economy = request.getParameter("economySeat");
                    String timing = request.getParameter("timing");
                    String flightType = request.getParameter("flightType");
                    String planeNo = request.getParameter("planeNo");
                    String planeDurtation = request.getParameter("planeDurtation");
                    String businessSeat = request.getParameter("businessSeat");
                  %>
        <div id="d">
            <p class="h5" style="margin-left: 32%; padding: 40px;">Ticket Summary</p>
            <div class="table-responsive-sm" style="margin-left: 35%; margin-right: 400px;">
                   <table class="table table-bordered">
                       <tbody >
                      <tr>
                        <th scope="row">Destination</th>
                        <td>${origin} &rarr;  ${des}</td>
                      </tr>
                      <tr>
                        <th scope="row">Flight Type</th>
                        <td><% out.print(flightType); %></td>
                      </tr>
                      <tr>
                        <th scope="row">Price</th>
                        <td>&#8377; <%out.print(businessSeat); %></td>
                      </tr>
                       <tr>
                        <th scope="row"> Departure Date</th>
                        <td>${from_date}</td>
                      </tr>
                      <tr>
                        <th scope="row">Flight Timing</th>
                        <td> <% out.print(timing);  %></td>
                      </tr>
                      <tr>
                        <th scope="row">Plane No</th>
                        <td><% out.print(planeNo);  %></td>
                      </tr>
                      <tr>
                        <th scope="row">Flight Duration</th>
                        <td><% out.print(planeDurtation);  %></td>
                      </tr>
                      <tr>
                          <th scope="row">Check In baggage:</th>
                        <td>15kg Per Person</td>
                      </tr>
                      <tr>
                          <th scope="row">Hand baggage:</th>
                        <td>7kg Per Person</td>
                      </tr>
                    </tbody>
                  </table>
                      <a href="PersonalDetails.jsp">
                 <button type="button" class="btn btn-secondary btn-lg btn-block" >Continue</button>
                      </a>
                </div>
        </div> 
                  
		
                      <div id="footercontainer" style="margin-top: 30%">
      <h8><a href="#">Terms &amp; Conditions</a></h8><br>
      <h8><a href="#">Policies</a></h8><br>
      <h8><a href="#">Media Center</a></h8><br>
      <h8><a href="#">Special Assistance</a></h8><br>
      
    </div>
    
    <div id="footercontainer_two" style="margin-top: 30%">
      <h5>Follow us on</h5>
      <h8><a href="https://www.facebook.com/campaign/landing.php?campaign_id=1653993517&extra_1=s|c|318504236063|e|facebook%27|&placement=&creative=318504236063&keyword=facebook%27&partner_id=googlesem&extra_2=campaignid%3D1653993517%26adgroupid%3D63066387003%26matchtype%3De%26network%3Dg%26source%3Dnotmobile%26search_or_content%3Ds%26device%3Dc%26devicemodel%3D%26adposition%3D1t1%26target%3D%26targetid%3Dkwd-362360550869%26loc_physical_ms%3D1007785%26loc_interest_ms%3D%26feeditemid%3D%26param1%3D%26param2%3D&gclid=EAIaIQobChMI6Jv63cej5QIVhTUrCh2atgPwEAAYASAAEgKVePD_BwE">Facebook</a></h8><br>
      <h8><a href="https://www.instagram.com">Twitter</a></h8><br>
      <h8><a href="https://www.instagram.com">Instagram</a></h8><br>
      
    </div>
  <span id="copyright" style="margin-top: 30%">© Jet Airways (India) Ltd. All rights reserved.</span>
  	
</body>
</html>