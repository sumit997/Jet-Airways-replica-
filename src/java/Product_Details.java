
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Product_Details extends HttpServlet {

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
          PrintWriter out = response.getWriter();
        
        String username = request.getParameter("Username");
        String email = request.getParameter("email");
        String phone = request.getParameter("number");
        String passport = request.getParameter("passNo");
        
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr","hr");
            PreparedStatement ps = con.prepareStatement("insert into PRODUCT_DETAILS values(?,?,?,?)");
            ps.setString(1, username);
            ps.setString(2, email);
            ps.setString(3, phone);
            ps.setString(4, passport);
            ps.executeUpdate();
           
            
            ps.close();
            con.close();
            
            HttpSession session = request.getSession();
            session.setAttribute("username", username);
            session.setAttribute("email", email);
            session.setAttribute("phone", phone);
            session.setAttribute("passport", passport);
        } catch (Exception e) {
            out.print(e);
            out.print(e);
        }
       response.sendRedirect("Payment.jsp");
    }


}
