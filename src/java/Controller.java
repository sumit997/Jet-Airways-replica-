
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;


public class Controller {
    public boolean check(String name,String password){
       
      try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr","hr");
            PreparedStatement ps = con.prepareStatement("select USER_EMAIL,USER_PASSWORD from user_detail where USER_NAME=? and USER_PASSWORD=?");
            ps.setString(1, name);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
              return true;
          }
           
        } catch (Exception e) {
            e.printStackTrace();
        }
      return false;
    }
    
   
    public void logic(){
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr","hr");
            PreparedStatement ps = con.prepareStatement("select * from INDIAN_FLIGHTS");
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                 System.out.println(rs.getString(1));
                 System.out.println(rs.getString(2));
                 System.out.println(rs.getString(3));
                 System.out.println(rs.getString(4));
                  System.out.println(rs.getString(5));
                   System.out.println(rs.getString(6));
                    System.out.println(rs.getString(7));
                     System.out.println(rs.getString(8));
                   System.out.println(rs.getString(9));
          }
           
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
   
}

