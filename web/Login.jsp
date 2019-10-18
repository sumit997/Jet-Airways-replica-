<%-- 
    Document   : Login
    Created on : Sep 16, 2019, 8:34:59 PM
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
	
	<nav class="navbar fixed-top navbar-light bg-light">
  <h3 class="navbar-text">	
			Jet Airways
	  </h3>
	<ul class="nav justify-content-end" id="nav">
		  <li class="nav-item">
			<a class="nav-link active" href="index.html">Home</a>
		  </li>
		  <li class="nav-item">
			<a class="nav-link" href="offers.html">Offers</a>
		  </li>
		  <li class="nav-item">
			<a class="nav-link" href="anoutUs.html">About Us</a>
		  </li>
		<li class="nav-item" id="login">
                    <a class="nav-link" href="Login.jsp">Login</a>
		  </li>
		 
	</ul>
</nav>
	
<div id="d" style="width: 30%; margin-left: 30%; margin-top: 10%;">
    <p class="h3">Login</p>
        <form > 
            <div class="form-group">
                <label for="exampleInputEmail1">Email address</label>
                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" required>
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" required>
            </div>
                <button type="submit" style="float: right; width: 120px;" class="btn btn-primary">Login</button><br><br><br>
                <a href="RegisterUser.jsp"><p class="h9" style="margin-left: 80px;">Don't Have Account? Register Here</p></a>
        </form>
 </div> 
 
     
 


  <div id="footer" style="margin-top: 15%;">
			
        <div id="footercontainer">
          <h8><a href="#">Terms &amp; Conditions</a></h8><br>
          <h8><a href="#">Policies</a></h8><br>S
          <h8><a href="#">Media Center</a></h8><br>
          <h8><a href="#">Special Assistance</a></h8><br>
          
        </div>
        
        <div id="footercontainer_two">
          <h5>Follow us on</h5>
          <h8><a href="https://www.facebook.com/campaign/landing.php?campaign_id=1653993517&extra_1=s|c|318504236063|e|facebook%27|&placement=&creative=318504236063&keyword=facebook%27&partner_id=googlesem&extra_2=campaignid%3D1653993517%26adgroupid%3D63066387003%26matchtype%3De%26network%3Dg%26source%3Dnotmobile%26search_or_content%3Ds%26device%3Dc%26devicemodel%3D%26adposition%3D1t1%26target%3D%26targetid%3Dkwd-362360550869%26loc_physical_ms%3D1007785%26loc_interest_ms%3D%26feeditemid%3D%26param1%3D%26param2%3D&gclid=EAIaIQobChMI6Jv63cej5QIVhTUrCh2atgPwEAAYASAAEgKVePD_BwE">Facebook</a></h8><br>
          <h8><a href="https://www.instagram.com">Twitter</a></h8><br>
          <h8><a href="https://www.instagram.com">Instagram</a></h8><br>
        </div>
      <span id="copyright">© Jet Airways (India) Ltd. All rights reserved.</span>
      
    </div>
      
    
</body>
</html>