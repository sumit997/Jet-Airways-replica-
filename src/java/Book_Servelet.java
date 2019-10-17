/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import oracle.net.aso.e;

/**
 *
 * @author HP
 */
public class Book_Servelet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            PrintWriter out = response.getWriter();
            Filght_Data filght_Data = new Filght_Data();
            
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/BookTicket.jsp");
              
                        
            String from = request.getParameter("depart");
            String toStation = request.getParameter("to");
            String from_date = request.getParameter("from_date");
            String ret_date = request.getParameter("ret_date");
            String passenger = request.getParameter("passenger");
            
            
            //second form on BookTicket.jsp
            
            
           try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr","hr");
            PreparedStatement ps = con.prepareStatement("select * from INDIAN_FLIGHTS where Flight_Origin=? and Flight_Destination=?");
            ps.setString(1, from);
            ps.setString(2, toStation);
            ResultSet rs = ps.executeQuery();
            
          
            while(rs.next())  
            {
                String Plane_no = rs.getString(1);
                String Flight_origin = rs.getString(2);
                String Flight_destination = rs.getString(3);
                String City_served = rs.getString(4);
                String Flight_Duration = rs.getString(5);
                String Flight_Type = rs.getString(6);
                String Economy_Seat = rs.getString(7);
                String Business_Seat = rs.getString(8);
                String Flight_Timinng = rs.getString(9);
                
                System.out.println(Plane_no);
                System.out.println(Flight_origin);
                System.out.println(Flight_destination);
                System.out.println(City_served);
                System.out.println(Flight_Duration);
                System.out.println(Flight_Type);
                System.out.println(Economy_Seat);
                System.out.println(Business_Seat);
                System.out.println(Flight_Timinng);
                
//                out.print("<html>");
//                out.print("<head>");
//                
//                out.print("</head>");
//                out.print("<body>");
//                out.print("<h1>"+ Plane_no+"</h1>");
//                out.print("</body>");
//                out.print("</html>");
//                
                
               HttpSession s = request.getSession();
               s.setAttribute("planeNO", Plane_no);
               s.setAttribute("origin", Flight_origin);
               s.setAttribute("destination", Flight_destination);
               s.setAttribute("cityServed", City_served);
               s.setAttribute("duration", Flight_Duration);
               s.setAttribute("flightType", Flight_Type);
               s.setAttribute("economySeat", Economy_Seat);
               s.setAttribute("bussinessSeat", Business_Seat);
               s.setAttribute("timing", Flight_Timinng);
            }
              
                
                request.setAttribute("data", from);
                request.setAttribute("to_des", toStation);
                request.setAttribute("from_date", from_date);
                request.setAttribute("ret_date", ret_date);
                request.setAttribute("passenger", passenger);
                request.setAttribute("origin", "origin");
                rd.forward(request, response);
                
            
        } catch (Exception e) {
               System.out.println(e);
        }

    }
}