
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
            PreparedStatement ps = con.prepareStatement("select USER_NAME,USER_PASSWORD from user_detail where USER_NAME=? and USER_PASSWORD=?");
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
    
   public boolean AdminCheck(String name, String password){
       
       try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr","hr");
            PreparedStatement ps = con.prepareStatement("select USER_NAME,PASSWORD from Admin where USER_NAME=? and PASSWORD=?");
            ps.setString(1, name);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
              return true;
            }
       }
            catch (Exception e) {
                    System.out.println(e);
        }
       return false;
       }
   }
    
    
   


