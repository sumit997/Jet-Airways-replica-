<%-- 
    Document   : Login
    Created on : Sep 16, 2019, 8:34:59 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <link href="style.css" type="text/css" rel="stylesheet"/>  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>

    <body>
         
	
        <div id="menulogo" onclick="openFunction()">&#9776;</div>
        <h1 id="companyName"><a href="index.html">JetAirways</a></h1>
        <h3 id="signup"><a href="RegisterUser.jsp" >SignUp</a></h3>
        <h3 id="login"><a href="Login.jsp">Login</a></h3>
            
          
              <div id="menu" class="box">
                <a href="#">Home</a>
                <a href="#">Book Tickets</a>
                <a href="#">Offers</a>
                <a href="#">About Us</a>
                <a href="#" class="close" id ="close" onclick="closeFunction()"><h2>&times;</h2></a>
                
              </div>
		
		<div id="modal">
                    <div id="container">
                        <form action="login" method="POST">
                            <h1>Login</h1>
                            <input type="text" minlength="3" maxlength="20" placeholder="Enter Username" name="name" id="email_feild"  required>
                            <input type="password" minlength="4" maxlength="20" placeholder="Enter Password" name="pass" id="password_feild" required><br>
                            <label id="forget"><a href="#">Forget Password</a></label><br>
                            <input  type="submit" value="Login" id="login_bttn"><br><br>
                    
                        </form>
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
    	
    </body>
</html>
