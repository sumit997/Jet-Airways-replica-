<%-- 
    Document   : Data
    Created on : Oct 6, 2019, 11:25:40 PM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="style.css" type="text/css" rel="stylesheet"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
            #ticket_summary{
                    height: 10%;
                    width: 100%;
                    border: 1px solid transparent;
                    background-color: rgba(237, 237, 237, 0.85);
                    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
                    margin-top: 10PX;
            }
            #depart_date{
                    margin-left: 5%;
                    font-family: sans-serif;
                    font-size: 16px;
                    margin-top: 3%;
                    color: rgba(31, 31, 31, 0.85);
            }
            #depart_info{
                    margin-left: 24%;
                    font-family: sans-serif;
                    font-size: 16px;
                    margin-top: -19px;
                    color: rgba(31, 31, 31, 0.85);
            }
            #depart_passenger{
                    margin-left: 48%;
                    font-family: sans-serif;
                    font-size: 16px;
                    margin-top: -19px;
                    color: rgba(31, 31, 31, 0.85);
            }
            #depart_price{
                    margin-left: 68%;
                    font-family: sans-serif;
                    font-size: 16px;
                    margin-top: -19px;
                    color: rgba(31, 31, 31, 0.85);

            }
            #modify_search{
                    margin-left: 67%;
                    font-family: sans-serif;
                    font-size: 10px;
                    margin-top: -19px;
                    color: rgba(31, 31, 31, 0.85);
                    background-color: #c3c3c3;
                    border: 1px solid gray;
                    padding: 2px;
            }
            #modify_search a{
                    text-decoration: none;
                    color: #1e64ea;
            }
            #continue_bbtn{
                    width: 150px;
                    padding: 15px;
                    background-color: blue;
                    border-radius: 5px;
                    margin-right: 30px;
                    float: right;
                    font-size: 16px;
                    color: white;
                    margin-top: -45px;
                    border: none;
            }
            #mid_section{
                    height: 30px;
                    width: 100%;
                    background-color: #ededed;
                    margin-top: 20px;
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
                    margin-left: 62%;
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
                    margin-left: 430px;
                    font-weight: 600;
            }
            #ticket_section{
                    height: 100%;
                    height: auto;
            }
            #section{
                    font-family: sans-serif;
                    color: black;
                    padding: 10px;
                    width: 98%;
                    line-height:  14px;
                    font-weight: 600;
                    border: 1px solid grey ;
            }
            #time{
                    font-size: 13px;
                    margin-left: 35px;
                    margin-top: 10px;
                    list-style: none;
            }
            #non{
                    font-size: 11px;
                    margin-left: 35px;
                    font-weight: 300;
            }
            #section a{
                    text-decoration: none;
                    font-size: 10px;
                    margin-left: 35px;
            }
            #plane_no{
                    margin-left: 9%;
                    margin-top: -20px;
                    position: absolute;
                    font-size: 13px;
            }
            #duration{
                    margin-left: 24%;
                    margin-top: -20px;
                    position: absolute;
                    font-size: 13px;
                    letter-spacing: 1.5px;
            }
            #price{
                    margin-left: 46%;
                    margin-top: -28px;
                    position: absolute;
                    font-size: 15px;
                    letter-spacing: 1.5px;
                    font-weight: 700;
            }

            #radio_pre{
                    margin-left: 48%;
                    margin-top: -50px;
                    position: absolute;
                    letter-spacing: 1.5px;
                    color: lightblue;
                    padding: 5px;
            }
            #radio_pre2{
                    margin-left: 63%;
                    margin-top: -48px;
                    position: absolute;
                    letter-spacing: 1.5px;
                    color: lightblue;
                    padding: 5px;
            }
            #price2{
                    margin-left: 61%;
                    margin-top: -28px;
                    position: absolute;
                    font-size: 15px;
                    letter-spacing: 1.5px;
                    font-weight: 700;

            }
        </style>
        
    </head>
    <body>
        <%
            String from = request.getParameter("depart");
            String toStation = request.getParameter("to");
            String from_date = request.getParameter("from_date");
            String ret_date = request.getParameter("ret_date");
            String passenger = request.getParameter("passenger");
            
            try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr","hr");
            PreparedStatement ps = con.prepareStatement("select * from INDIAN_FLIGHTS where Flight_Origin=? and Flight_Destination=?");
            ps.setString(1, from);
            ps.setString(2, toStation);
            ResultSet rs = ps.executeQuery();
            
         %>
         <%
             int count = 0;
             
            while(rs.next())  
            {
                
                
                count= count+1;   
                HttpSession  sessions = request.getSession();
                sessions.setAttribute("data", from);
                sessions.setAttribute("to_des", toStation);
                sessions.setAttribute("passenger", passenger);
                sessions.setAttribute("from_date", from_date);
                sessions.setAttribute("ret_date", ret_date);
                %>
                <div id="menulogo" onclick="openFunction()">&#9776;</div>
        <h1 id="companyName"><a href="index.html">JetAirways</a></h1>
        <h3 id="signup"><a href="RegisterUser.jsp" >SignUp</a></h3>
        <h3 id="login"><a href="Login.jsp">Login</a></h3>

            
          
              <div id="menu" class="box">
                <a href="index.html">Home</a>
                <a href="#">Book Tickets</a>
                <a href="#">Offers</a>
                <a href="#">About Us</a>
                <a href="#" class="close" id ="close" onclick="closeFunction()"><h2>&times;</h2></a>
                
              </div>
              <div style="height: 900px;width: 99.7%;border: 1px solid black;position: relative;margin-top: 88px;">
                    <div style="height: 800px;width: 70%;margin-left: 195px;">
				<div id="ticket_summary">
					<h4 id="depart_date">${from_date}</h4>
					<h4 id="depart_info">${data}&rarr;${to_des} </h4>
					<h4 id="depart_passenger">${passenger} Adult(s)</h4>
					<h4 id="depart_price">&#8377; <% out.print(rs.getString(7)); %> </h4>
					<label id="modify_search"><a href="#" onclick="check()">Modify Search</a></label><br>
                                        <form action="PersonalDeatails.jsp" method="POST">
                                        <button type="submit" id="continue_bbtn">continue &#9992;</button>
                                        </form>
				</div>
				
				<div id="mid_section">
					<span id="one">One way trip</span>
					<span id="flight-no">Flight No.</span>
					<span id="Duration">Duration</span>
					<span id="eco">Economy</span>
					<span id="bus">Bussiness</span>
					
				</div>
                                
				<div id="ticket_section">
					<div id="section">
                                            
                                                <span id="time"><% out.print(rs.getString(9)); %></span><br>
						<span id="non"><% out.print(rs.getString(6)); %>}</span><br>
						<a href="#">Flight details</a>
						
                                                <span id="plane_no">&#9992; <% out.print(rs.getString(1)); %></span>
						<span id="duration"><% out.print(rs.getString(5)); %></span>
						<form>
							<input type="radio" id="radio_pre" name="radio_pre">
							<label id="price">&#8377; <% out.print(rs.getString(7)); %></label>
							
							<input type="radio" id="radio_pre2" name="radio_pre">
							<label id="price2">&#8377; <% out.print(rs.getString(8)); %></label>
						</form>
					</div>
				</div>

			</div>
		</div>
		
		 
		
		
		
		<div id="footer">
			
			<div id="footercontainer">
				<h4><a href="#">Terms & Conditions</a></h4>
				<h4><a href="#">Policies</a></h4>
				<h4><a href="#">Media Center</a></h4>
				<h4><a href="#">Special Assistance</a></h4>
				
			</div>
			
			<div id="footercontainer_two">
				<h3>Follow us on</h3>
				<h4><a href="#">Facebook</a></h4>
				<h4><a href="#">Twitter</a></h4>
				<h4><a href="#">Instagram</a></h4>
				
			</div>
		<span id="copyright">© Jet Airways (India) Ltd. All rights reserved.</span>
		
		</div>
        
        <script type="text/javascript">
            function openFunction(){
                document.getElementById("menu").style.width="300px";
            }
        
            function closeFunction(){
                document.getElementById("menu").style.width="0px";
            }
        </script>
                   <%
            }
              
                
              
               
            
        } catch (Exception e) {
               System.out.print(e);
        }

        %>
    </body>
</html>
