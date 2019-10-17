<%-- 
    Document   : index
    Created on : Sep 28, 2019, 2:35:03 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!Doctype html>
<html>
    <head>
        <link href="style.css" type="text/css" rel="stylesheet"/>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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

        <div id="menulogo" onclick="openFunction()">&#9776;</div>
        <h1 id="companyName">Jet Airways</h1>
        <form action="logout">
            <input style="position: absolute; padding: 10px; width: 90px;border-radius: 10px; cursor: pointer; margin-left: 92%; margin-top: -60px; 
                   background: none; border: 2px solid #ffff00; font-family: sans-serif; font-size: 18px;" type="submit" value="Logout">
        </form>
        <h3 style="float: right; margin-top: -45px; margin-right: 160px; font-family: sans-serif; ">Welcome ${name}</h3>


        <div id="menu" class="box">
            <a href="index.html">Home</a>
            <a href="#">Book Tickets</a>
            <a href="#">Offers</a>
            <a href="#">About Us</a>
            <a href="#" class="close" id ="close" onclick="closeFunction()"><h2>&times;</h2></a>

        </div>

        <div id="body">
            <img src="images/view-out-of-airplane-airplane-wing-in-flight-preecha-wannalert-.jpg" id="home-image">
            <div id="outer_box"><br><br>
                <form action="Book_Servelet" method="POST">
                    <Span>From</Span><input name="depart" type="text" id="from" placeholder="country, city, airport" required="Please fill depature orgin*"> 
                    <h3>TO</h3><input name="to" type="text" id="to" placeholder="country, city, airport" required>
                    <h2 id="depart">Depart</h2><input name="from_date" type="date"  id="date" placeholder="22-01-2019" required>
                    <h2 id="re">Return</h2><input name="ret_date" type="date"  id="ret" placeholder="05-02-2019">
                    <h2 id="no">Passengers</h2><input  name="passenger" type="number" max="6" min="1" placeholder="01"  id="range">
                <a href="#"><input type="submit" value="Search Flight"  id="search"></a>
                </form>
            </div>
        </div>

        <div id="popular-places">
            <h1>Most Popular Destination</h1>

            <a href="#">
                <div class="place-one">
                    <img src="images/italy%20rome.jpg" alt="Rome" id="rome"><br><br>
                    <span class="country">ITALY</span><br><br><span class="city">Rome</span><br><br>
                    <span id="price">from INR 46510*</span>
                </div></a>

            <a href="#">
                <div class="place-two"> <img src="images/swisterland%20zurich.jpg" alt="Zurich" id="zurich"><br><br>
                    <span class="country">SWITZERLAND</span><br><br><span class="city">Zurich</span><br><br>
                    <span id="price">from INR 41165*</span>
                </div>
            </a>
            <a href="#">
                <div class="place-three"><img src="images/south%20africa%20cpaetown.jpg" alt="cpaetowun" id="cpaetown"><br><br>
                    <span class="country">SOUTH AFRICA</span><br><br><span class="city">Cape Town</span><br><br>
                    <span id="price">from INR 49166*</span>
                </div></a>

            <a href="#">
                <div class="place-four"><img src="images/america%20wahinton.jpg" alt="wahington" id="washington"><br><br>
                    <span class="country">UNITED STATES</span><br><br><span class="city">Washington</span><br><br>
                    <span id="price">from INR 60175*</span></div>
            </a>
            <span id="more_bttn"><a href="#">See more offers</a></span>
        </div>

        <div id="box3"><h3>Custom Fares</h3>
            <div id="container1"><img src="images/flexi-fare.png" id="fare">
                <span id="first">Flexi Fare</span><span id="final">Make unlimited<br>modifactions to your<br>booking.</span>
            </div>

            <div id="container2"><img src="images/lite-fare.png" id="fare">
                <span id="first">Lite Fare</span><span id="final">Pay less when you're<br>travelling with just a<br>hand bag.</span>
            </div>

            <div id="container3"><img src="images/6e-sme.png" id="fare">
                <span id="first">6E SME</span><span id="final">Enjoy unlimited changes,<br>lower cancelation free and<br>a free snack combo.</span>
            </div>

            <div id="container4"><img src="images/student.png" id="fare">
                <span id="first">Student Discount</span>
                <span id="final">6% off on base fare & 10<br>kgs extra baggage<br>allowance.</span>
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
            function openFunction() {
                document.getElementById("menu").style.width = "300px";
            }

            function closeFunction() {
                document.getElementById("menu").style.width = "0px";
            }
        </script>

    </body>
</html>
