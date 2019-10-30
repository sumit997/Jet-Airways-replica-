
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class add extends HttpServlet {

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         PrintWriter out = response.getWriter();
        
        String plane_No = request.getParameter("plane_No");
        String flight_origin = request.getParameter("flight_origin");
        String origin_city = request.getParameter("origin_city");
        String Flight_Destination = request.getParameter("Flight_Destination");
        String Destation_City = request.getParameter("Destation_City");
        String Flight_Duration = request.getParameter("Flight_Duration");
        String Economy_Seat = request.getParameter("Economy_Seat");
        String Business_Seat = request.getParameter("Business_Seat");
        String Flight_Timinng = request.getParameter("Flight_Timinng");
        String Flight_type = request.getParameter("Flight_type");
        
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr","hr");
            PreparedStatement ps = con.prepareStatement("insert into INDIAN_FLIGHTS values(?,?,?,?,?,?,?,?,?,?)");
            ps.setString(1, plane_No);
            ps.setString(2, flight_origin);
            ps.setString(3, origin_city);
            ps.setString(4, Flight_Destination);
            ps.setString(5, Destation_City);
            ps.setString(6, Flight_Duration);
            ps.setString(7, Flight_type);
            ps.setString(8, Economy_Seat);
            ps.setString(9, Business_Seat);
            ps.setString(10, Flight_Timinng);
            ps.executeUpdate();
           
            ps.close();
            con.close();
            
        } catch (Exception e) {
            out.print(e);
            out.print(e);
        }
        out.print("Data Inserted");
       
    }
}


