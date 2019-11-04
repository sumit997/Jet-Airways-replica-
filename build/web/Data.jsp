<%-- 
    Document   : Data
    Created on : Oct 6, 2019, 11:25:40 PM
    Author     : HP
--%>

<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
    <style>
        #ticket_section{
                    height: auto;
                    margin-left: 17%;
            }
            #section{
                    font-family: sans-serif;
                    color: black;
                    padding: 10px;
                    width: 98%;
                    line-height:  14px;
                    font-weight: 600;
                    border-bottom: 1px solid grey ;
            }
            #time{
                    font-size: 13px;
                    margin-left: 2%;
                    margin-top: 10px;
                    list-style: none;
                    font-weight: 600;
            }
            #non{
                    font-size: 11px;
                    margin-left: 2%;
                    font-weight: 300;
            }
            #section a{
                    text-decoration: none;
                    font-size: 10px;
                    margin-left: 2%;
            }
            #plane_no{
                    margin-left: 15%;
                    margin-top: -20px;
                    position: absolute;
                    font-size: 13px;
            }
            #duration{
                    margin-left: 36.5%;
                    margin-top: -20px;
                    position: absolute;
                    font-size: 13px;
                    letter-spacing: 1.5px;
            }
            #price{
                    margin-left: 56%;
                    margin-top: -28px;
                    position: absolute;
                    font-size: 15px;
                    letter-spacing: 1.5px;
                    font-weight: 700;
            }

            #radio_pre{
                    margin-left: 65%;
                    margin-top: -25px;
                    position: absolute;
                    letter-spacing: 1.5px;
                    color: #117a8b;
                    padding: 5px;
            }
            #radio_pre2{
                    margin-left: 89%;
                    margin-top: -40px;
                    position: absolute;
                    letter-spacing: 1.5px;
                    color: #117a8b;
                    padding: 5px;
                    
            }
            
            #price2{
                    margin-left: 89%;
                    margin-top: -45px;
                    position: absolute;
                    font-size: 15px;
                    letter-spacing: 1.5px;
                    font-weight: 700;

            }
            #mid_section{
                    height: 30px;
                    width: 100%;
                    background-color: #ededed;
                    margin-top: 20px;
                    margin-left: 16%;
                    border: 1px solid #ededed;
                    color: #4e4b4b;
            }
            #one{
                    font-family: sans-serif;
                    font-size: 12px;
                    position: absolute;
                    margin-top: 5px;
                    margin-left: 45px;
                    font-weight: 600;
            }
            #eco{
                    float: right;
                    font-family: sans-serif;
                    font-weight: 600;
                    font-size: 12px;
                    margin-right: 250px;
                    margin-top: 5px;
            }
            #bus{
                    float: right;
                    font-family: sans-serif;
                    font-weight: 600;
                    font-size: 12px;
                    margin-top: 5px;
                    position: absolute;
                    margin-left: 82%;
            }
            #flight-no{
                    font-family: sans-serif;
                    font-size: 12px;
                    position: absolute;
                    margin-top: 5px;
                    margin-left: 230px;
                    font-weight: 600;
            }
            #Duration{
                    font-family: sans-serif;
                    font-size: 12px;
                    position: absolute;
                    margin-top: 5px;
                    margin-left: 45%;
                    font-weight: 600;
            }
    </style>
 </head>
<body>
    <%
         
       

        %>
	
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
    <p class="h4" style="margin: 6% 0% 0% 15%; color: rgb(77, 77, 77);">Book Tickets</p>
    <div class="container"  style=" background-color: rgba(237, 237, 237, 0.85); height: 70px; width: 70%;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
            <ul class="nav nav-pills nav-fill">
                    <li class="nav-item" style="margin-top: 25px;">
                      <p class="h6" >${from_date}</p>
                    </li>
                    <li class="nav-item" style="margin-top: 25px;">
                      <p class="h6">${origin} &rarr; ${des}</p>
                    </li>
                    <li class="nav-item" style="margin-top: 25px;">
                      <p class="h6">${passengers} Passenger</a>
                    </li>
                    
            </ul>
    </div>
    
    <div class="row">
        <div  class="col-sm-8" id="mid_section">
		<span id="one">Flight Info </span>
		<span id="flight-no">Flight No.</span>
		<span id="Duration">Duration</span>
		<span id="eco">Economy</span>
		<span id="bus">Bussiness</span>
        </div>
    </div>
    <% 
        
            String origin = request.getParameter("origin");
            String des = request.getParameter("des");
            String from_date = request.getParameter("dep_date");
            String re_date = request.getParameter("re_date");
            String passengers = request.getParameter("passenger");
            
            
            
            
            
            HttpSession s = request.getSession();
            s.setAttribute("origin", origin);
            s.setAttribute("des", des);
            s.setAttribute("from_date", from_date);
            s.setAttribute("re_date", re_date);
            s.setAttribute("passengers", passengers);
            
            String plane = request.getParameter("timing");
            
            
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr","hr");
            PreparedStatement ps = con.prepareStatement("select * from INDIAN_FLIGHTS WHERE ORIGIN_CITY=? AND DESTATION_CITY=? ");
            ps.setString(1, origin);
            ps.setString(2, des);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){%>
            
            <% String planeNo = rs.getString(1); %>
            <% String flightOrigin = rs.getString(2); %>
            <% String originCity = rs.getString(3); %>
            <% String flightDestation = rs.getString(4); %>
            <% String destationCity = rs.getString(5); %>
            <% String flightDuratuion = rs.getString(6); %>
            <% String flightType = rs.getString(7); %>
            <% String economySeat = rs.getString(8); %>
            <% String businessSeat = rs.getString(9); %>
            <% String flightTiming = rs.getString(10); %>
           
            
            <div class="row" id="ticket_section">
                <div  class="col-sm-9" id="section">
                    <form action="summary.jsp" method="POST">
                        <span id="time"><% out.print(flightTiming); %></span><br>
                        <input type="hidden" value="<%=flightTiming %>" name="timing">
                        
                        <span id="non"><% out.print(flightType); %></span><br>
                        <input type="hidden" value="<%=flightType %>" name="flightType">
                        
                        <a href="#">Flight details</a>
                        <span id="plane_no">&#9992; <% out.print(planeNo); %></span>
                        <input type="hidden" value="<%=planeNo %>" name="planeNo">
                        
                        <span id="duration"><% out.print(flightDuratuion); %></span>
                        <input type="hidden" value="<%=flightDuratuion %>" name="planeDurtation">
                        
                        <label id="price">&#8377; <% out.print(economySeat); %></label><br>
                        <input type="hidden" value="<%=economySeat %>" name="economySeat">
                        <input type="submit"  value="Select" id="radio_pre"  >
                    </form>
                        <form action="summary2.jsp" method="POST">
                        <label id="price2">&#8377; <% out.print(businessSeat); %></label><br>
                        <input type="submit" value="Select" id="radio_pre2" >
                        <input type="hidden" value="<%=businessSeat %>" name="businessSeat">
                        
<!--                        extra filgts details to redirect to bussiness summary2.jsp-->
                        <input type="hidden" value="<%=flightTiming %>" name="timing">
                        <input type="hidden" value="<%=flightType %>" name="flightType">
                        <input type="hidden" value="<%=planeNo %>" name="planeNo">
                        <input type="hidden" value="<%=flightDuratuion %>" name="planeDurtation">
                    </form>
		</div>
            </div>
            
                    
                
            
                        <%  } 
            
             ps.close();
            con.close();
        }catch(Exception e){
            System.out.println(e);
        }
        
        %>

       
  <div id="footer" style="margin-top: 50%;">
			
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
      
        <script type="text/jquery">
            $('.alert').alert()
        </script>
        
</body>
</html>
