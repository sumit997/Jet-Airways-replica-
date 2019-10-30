
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddPassenger extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
       
        PrintWriter out = response.getWriter();
       String firstName = request.getParameter("firstName");
       String lastName = request.getParameter("lastName");
       String Email = request.getParameter("Email");
       String phoneNumber = request.getParameter("phoneNumber");
       String Address = request.getParameter("Address");
       String passportNumber = request.getParameter("passportNumber");
        
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr","hr");
            PreparedStatement ps = con.prepareStatement("insert into Passengers_Details values(?,?,?,?,?,?)");
            ps.setString(1, firstName);
            ps.setString(2, lastName);
            ps.setString(3, Email);
            ps.setString(4, phoneNumber);
            ps.setString(5, Address);
            ps.setString(6, passportNumber);
            ps.executeUpdate();
            
            
            response.sendRedirect("payuform.jsp");
            
            
        } catch (Exception e) {
            out.print(e);
        }
    }

   
}
