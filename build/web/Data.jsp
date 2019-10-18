<%-- 
    Document   : Data
    Created on : Oct 6, 2019, 11:25:40 PM
    Author     : HP
--%>

<%@page import="java.sql.Statement"%>
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
        <title>Data Page</title>
    </head>
    <body>
        <h1>Data</h1>
        <table border="1">
            <tr style="background-color: #95999c; color: black; font-weight: bold">
                <td>Plane_No</td>
                <td>Flight_Origin</td>
                <td>Flight_Destination</td>
                <td>City_served</td>
                <td>Flight_Duration</td>
                <td>Flight_Type</td>
                <td>Economy_Seat</td>
                <td>Business_Seat</td>
                <td>Flight_Timinng</td>
                
            </tr>

        <% 
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr","hr");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from INDIAN_FLIGHTS");
            while(rs.next()){%>
                <tr>
                    <td><%= rs.getString(1) %></td>
                    <td><%= rs.getString(2) %></td>
                    <td><%= rs.getString(3) %></td>
                    <td><%= rs.getString(4) %></td>
                    <td><%= rs.getString(5) %></td>
                    <td><%= rs.getString(6) %></td>
                    <td><%= rs.getString(7) %></td>
                    <td><%= rs.getString(8) %></td>
                    <td><%= rs.getString(9) %></td>
                </tr>     
               
            
                       
           
            
            
            <%}
            
            
        }catch(Exception e){
            System.out.println(e);
        }
        %>
        </table>
          
    </body>
</html>
