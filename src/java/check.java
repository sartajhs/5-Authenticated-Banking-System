
import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class check extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            //String connectionURL = "jdbc:mysql://localhost:3306/test"; // test is my database name
            Connection connection = null;
//            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
//            connection = DriverManager.getConnection("Jdbc:odbc:fogcomputing");
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/fogcomputing", "root", "root");
            String uname = request.getParameter("uname");
            PreparedStatement ps = connection.prepareStatement("select loginname from users where loginname=?"); // users is the table containg used usernemes
            ps.setString(1, uname);
            ResultSet rs = ps.executeQuery();

            if (!rs.next()) {
                out.println("<font color=green><b>" + uname + "</b> is avaliable");
            } else {
                out.println("<font color=red><b>" + uname + "</b> is already in use</font>");
            }
            out.println();

        } catch (Exception ex) {

            out.println("Error ->" + ex.getMessage());

        } finally {
            out.close();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}
