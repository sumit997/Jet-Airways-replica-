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
	
	<div id="box2">
      <div id="box">  
          <p class="h4">Book Tickets</p>
          <div class="custom-control custom-radio custom-control-inline">
            <input type="radio" id="customRadioInline1" onclick="checkFlightType(0)" name="customRadioInline1" class="custom-control-input">
            <label class="custom-control-label" for="customRadioInline1">One Way</label>
          </div>
          <div class="custom-control custom-radio custom-control-inline">
            <input type="radio" id="customRadioInline2" onclick="checkFlightType(1)" checked name="customRadioInline1" class="custom-control-input">
            <label class="custom-control-label" for="customRadioInline2">Two Way</label>
          </div>
          
          <form action="Data.jsp" method="POST">
        <div class="form-row">
          <div class="col-md-6 mb-4">
            <label for="validationDefault01">Flight Origin</label>
            <input type="text" name="origin" class="form-control" placeholder="Mumbai(BOM)"  required>
            
          </div> 
          <div class="col-md-6 mb-4">
            <label for="validationDefault02">Flight Destiation</label>
            <input type="text" class="form-control" name="des"  placeholder="Lucknow(LKO)" required>
            
          </div>
         
        </div>
        <div class="form-row" id="form-second">
          <div class="col-md-5 mb-3">
            <label for="validationDefault03">Departure Date</label>
            <input type="date"  name="dep_date" class="form-control" id="validationDefault03"  required>
          </div>
          <div class="col-md-4 mb-3">
            <label for="validationDefault04" id="title">Return Date</label>
            <input type="Date" name="re_date" class="form-control" id="validationDefault04" >
          </div>
          <div class="col-md-3 mb-3">
            <label for="validationDefault05" id="title_pass">No Passenger</label>
            <input type="number" name="passenger" max="6" min="1" class="form-control"  value="1" id="validationDefault05" required>
          </div>
        </div>
        <button class="btn btn-success" id="bttn" type="submit">Search Flight &rarr;</button>
      </form>
        </div>
  </div>

  <div id="box3" style="display: inline-block;">
    <p class="h4" style="color: black; margin-left: 7%;">Popular Places</p>
    <a href="Popular_destation.html"><span>View all</span></a>

    <a href="Jhodhpur_Book.html"><img src="images/Hmpg-Thumbnail.jpg" style="margin-left: 8%;" class="rounded float-left" alt="jhodpur">
    <p class="h6" style="margin-left: 8%;">Jhodpur</p>
    </a>

    <a href="Jaipur_book.html"><img src="images/Jaipur_thumb.jpg" style="margin-left: 29%; margin-top: -17.4%;" class="rounded float-left" alt="jhodpur">
      <p class="h6" style="margin-top: -2%; margin-left: 29%;">Jaipur</p>
    </a>

    <a href="#"><img src="images/Varanasi.jpg" style="margin-left: 50%; margin-top: -17.4%;" class="rounded float-left" alt="jhodpur">
      <p class="h6" style="margin-top: -2%; margin-left: 50%;">Varansi</p>
    </a>
  
    <a href="#"><img src="images/Chennai.jpg" style="margin-left: 71%; margin-top: -17.4%;" class="rounded float-left" alt="jhodpur">
      <p class="h6" style="margin-top: -2%; margin-left: 71%;">Chennai</p>
    </a>
  </div>
  
  <div id="box4">
    <p class="h4" style="color: black; margin-left: 7%;">Why Book with Jet Airways</p>

    <div class="card mb-5" style="width: 260px; margin-left: 8%; border: none; height: 100px;background-image: linear-gradient( to right,rgba(255, 62, 240, 0.75), rgb(248, 106, 106));">
      <div class="row no-gutters">
        <div class="col-md-3">
          <img src="images/No-Cancellation.png"  style="margin-top: 10px;" class="card-img" alt="6E">
        </div>
        <a href="Fees&Charges.html">
        <div class="col-md-6" style="margin-left: 70px; margin-top: -27%;  color: white; text-align:left; padding: 5px; line-height: 15px;">
            <p class="card-text">No convenience fees on cancelation(lowest booking and cancelation fee).</p>
          </div>
        </a>
      </div>
    </div>

    <div class="card mb-5" style="width: 260px;margin-top: -11%; margin-left: 29%; border: none; height: 100px;background-image: linear-gradient( to right,rgba(152, 13, 255, 0.75), rgb(229, 166, 237));">
      <div class="row no-gutters">
        <div class="col-md-3">
          <img src="images/student.png"  style="margin-top: 10px;" class="card-img" alt="6E">
        </div>
        <a href="Student_Discount.html">
        <div class="col-md-6" style="margin-left: 80px; margin-top: -25%;  color: white; text-align:left; padding: 2px; line-height: 15px;">
            <p class="card-text">Student Discount 6% off on base fare & 10kgs Extra baggage allowence .</p>
          </div>
        </a>
      </div>
    </div>

    <div class="card mb-5" style="width: 260px;margin-top: -11%; margin-left: 50%; border: none; height: 100px; background-image: linear-gradient( to right,rgba(177, 255, 31, 0.75), rgb(0, 252, 48));">
      <div class="row no-gutters">
        <div class="col-md-3">
          <img src="images/lite_fare.png"  style="margin-top: 10px; margin-left: 10px;" class="card-img" alt="6E">
        </div>
        <a href="Fare_Options.html">
        <div class="col-md-6" style="margin-left: 100px; margin-top: -24%;  color: white; text-align:left; padding: 2px; line-height: 19px;">
            <p class="card-text">Light Fare pay less whlie travelling with just a hand bag. </p>
          </div>
        </a>
      </div>
    </div>

    <div class="card mb-5" style="width: 260px;margin-top: -11%; margin-left: 71%; border: none; height: 100px; background-image: linear-gradient( rgba(69, 62, 255, 0.83), rgb(55, 192, 253));">
      <div class="row no-gutters">
        <div class="col-md-3">
          <img src="images/flexi-fare.png"  style="margin-top: 10px; margin-left: 8px;" class="card-img" alt="6E">
        </div>
        <a href="#">
        <div class="col-md-6" style="margin-left: 75px; margin-top: -25%;  color: white; text-align:left; padding: 2px; line-height: 20px;">
            <p class="card-text">Flexi Fare Make unlimted Modifications to your booking.</p>
          </div>
        </a>
      </div>
    </div>

  </div>

  <div id="footer">
			
    <div id="footercontainer">
      <h8><a href="#">Terms &amp; Conditions</a></h8><br>
      <h8><a href="#">Policies</a></h8><br>
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
  <script type="text/javascript">
    function checkFlightType(x){
      if(x == 0){
        document.getElementById("validationDefault04").style.display="none";
        document.getElementById("title").style.display="none";
        document.getElementById("validationDefault05").style.width="200px";
        document.getElementById("validationDefault05").style.marginLeft="-180px";
        document.getElementById("title_pass").style.marginLeft="-180px";

      }else{
        document.getElementById("validationDefault04").style.display="block";
        document.getElementById("title").style.display="block";
        document.getElementById("validationDefault05").style.width="120px";
        document.getElementById("validationDefault05").style.marginLeft="10px";
        document.getElementById("title_pass").style.marginLeft="10px";

      }
    }
  </script>
	
</body>
</html>