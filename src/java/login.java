import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class login extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        Controller controller = new Controller();
       
        String name = request.getParameter("name");
        String password = request.getParameter("pass");
       
        if (controller.check(name, password)) {
            
            HttpSession session = request.getSession();
            session.setAttribute("name", name);
            response.sendRedirect("index.jsp");
        } else {
            
            response.sendRedirect("Login.jsp");
            
        }
    }
}
