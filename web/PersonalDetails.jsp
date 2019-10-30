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
	
        <div id="d">
            <p class="h7" style="float: right; margin-right: 30px; color: silver; margin-top: 5px;">Step 2 / 3</p>
            <p class="h5" style="margin: 110px 0px 0px 140px; ">Add Passenger Details</p>
            
            
            <div style="width: 60%; margin: 3% 10% 0% 10%;">
                <form action="AddPassenger" method="POST">
                    <div class="row">
                      <div class="col">
                         <label for="inputEmail4">Enter First name</label>
                         <input type="text" class="form-control" minlength="3" name="firstName" placeholder="First name" required>
                      </div>
                      <div class="col">
                        <label for="inputEmail4">Enter Last name</label>
                        <input type="text" class="form-control" minlength="3" name="lastName" placeholder="Last name" required>
                      </div>
                    </div>
                    
                    <div class="row"style="margin-top: 4%;">
                      <div class="col">
                         <label for="inputEmail4">Email</label>
                         <input type="Email" class="form-control" name="Email" placeholder="Email"> required
                      </div>
                      <div class="col">
                           <label for="inputEmail4">Phone Number</label>
                           <input type="number"   name="phoneNumber" class="form-control" placeholder="Phone Number" required>
                      </div>
                    </div>
                    
                    <div class="row"style="margin-top: 4%;">
                      <div class="col">
                        <label for="inputAddress2">Address</label>
                        <input type="text" class="form-control" name="Address" id="inputAddress2" placeholder="1234, Main St" required>
                      </div>
                    <div class="col" style="width: 80px;">
                           <label for="inputEmail4">Zip Code</label>
                           <input type="number"  name="passportNumber" class="form-control" placeholder="Zip Code" required>
                    </div>
                    </div>
                    <button type="submit" class="btn btn-primary mb-2" style="height: 50px; margin: 4% 10% 0% 79%; width: 180px;">Next</button>
                </form>
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
  
  </div>
  
	
</body>
</html>