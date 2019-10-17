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
        <style>
            #box{
                height: 500px;
                border: 1px solid white;
                width: 100%;
                margin-top: 80px;
            }
            #step{
                font-family: sans-serif;
                color: gray;
                margin-top: 18px;
                margin-right: 50px;
                float: right;
                font-size: 18px;
            }
            #heading{
                font-family: sans-serif;
                color: #1d1c1c;
                margin-top: 40px;
                margin-left: 77px;
                font-size: 24px;
                position: absolute;
                border-bottom: 1px solid black;
            } 
            #box form{
                height: 350px;
                width: 30%;
                padding: 10px;
                margin-top: 90px;
                margin-left: 10px;
            }
            #name{
                font-family: sans-serif;
                color: #1d1c1c;
                font-size: 18px;
            }
            #username{
                padding: 8px;
                width: 220px;
                border-radius: 5px;
                border: 1.2px solid gray;
                font-family: sans-serif;
                font-size: 15px;
            }
            #email{
                font-family: sans-serif;
                color: #1d1c1c;
                font-size: 18px;
                margin-top: 20px;
            }
            #email_input{
                padding: 8px;
                width: 220px;
                border-radius: 5px;
                border: 1.2px solid gray;
                font-family: sans-serif;
                font-size: 15px;
            }
            #phone{
                font-family: sans-serif;
                color: #1d1c1c;
                font-size: 18px;
                margin-top: 20px;
            }
            #number{
                padding: 8px;
                width: 220px;
                border-radius: 5px;
                border: 1.2px solid gray;
                font-family: sans-serif;
                font-size: 15px;
            }
            #pn{
                font-family: sans-serif;
                color: #1d1c1c;
                font-size: 18px;
                margin-top: 20px;
            }
            #passNo{
                padding: 8px;
                width: 220px;
                border-radius: 5px;
                border: 1.2px solid gray;
                font-family: sans-serif;
                font-size: 15px;
            }
            #add_bttn{
                padding: 10px;
                background-color: yellow;
                color: black;
                border-radius: 5px;
                font-size: 18px;
                width: 150px;
                border: none;
                margin-left: 90px;
                margin-top: 50px;
            }
            
        </style>
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

        <div id="box">
           
            <h1 id="step">Step 2 / 3</h1>
            <h1 id="heading">Passenger Information</h1>
            
            <form action="Product_Details" method="POST">
                <label id="name">Name</label>
                <input type="text" name="Username" id="username" required><br><br>
                <label id="email">Email</label>
                <input type="email" name="email" id="email_input" required><br><br>
                <label id="phone">Phone</label>
                <input type="tel" name="number" id="number" maxlength="10" minlength="10" placeholder="+91" required><br><br>
                 <label id="pn">Passport Number</label>
                 <input type="text" name="passNo" id="passNo"  required><br><br>
                 <button type="submit" id="add_bttn" >ADD Details</button>
            </form>
            
            
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
