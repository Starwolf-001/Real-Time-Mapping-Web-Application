/*
 * Created by Michael Cartwright
 */
package DatabaseQueryAndAccessPackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FindMapSegment extends HttpServlet{
    // From import java.sql.Connection
    Connection connect;
    // From import java.sql.ResultSet
    ResultSet result;
    // From import java.sql.Statement
    Statement statement;
    
    double uav_position, uav_altitude, uav_velocity;
    int rasp_no;
    String query, user_search, image_name, uav_header, grid_no;
    
    DatabaseConnection database_connection;
    
    protected void processRequest(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        try {
            user_search = request.getParameter("grid_id");
            
            // Check user input data into grid_id
            if(user_search.equals("")) {
                RequestDispatcher reqdispatch = request.getRequestDispatcher("index.html");
                reqdispatch.forward(request, response);
            }
            
            database_connection = new DatabaseConnection();
            connect = database_connection.setConnection();
            // create JAVA statement
            statement = connect.createStatement();
            // Query
            query = "SELECT * FROM data WHERE grid_no = '"+user_search+"'";
            // Create new statement
            result = statement.executeQuery(query);
            while (result.next()) {
                // Image name
                image_name = result.getString("image_name");
                Cookie image_nameCookie = new Cookie("image_name", "" + image_name + "");
                // Raspberry pi number
                rasp_no = result.getInt("rasp_no");
                Cookie rasp_noCookie = new Cookie("rasp_no", "" + rasp_no + "");
                // UAV heading
                uav_header = result.getString("uav_header");
                Cookie uav_headerCookie = new Cookie("uav_header", "" + uav_header + "");
                // UAV position
                uav_position = result.getDouble("uav_position");
                Cookie uav_positionCookie = new Cookie("uav_position", "" + uav_position + "");
                // UAV altitude
                uav_altitude = result.getDouble("uav_altitude");
                Cookie uav_altitudeCookie = new Cookie("uav_altitude", "" + uav_altitude + "");
                // UAV velocity
                uav_velocity = result.getDouble("uav_velocity");
                Cookie uav_velocityCookie = new Cookie("uav_velocity", "" + uav_velocity + "");
                // Grid Number
                grid_no = result.getString("grid_no");
                Cookie grid_noCookie = new Cookie("grid_no", "" + grid_no + "");
                // Store Cookie
                image_nameCookie.setMaxAge(60*60*24*365);
                rasp_noCookie.setMaxAge(60*60*24*365);
                uav_headerCookie.setMaxAge(60*60*24*365);
                uav_positionCookie.setMaxAge(60*60*24*365);
                uav_altitudeCookie.setMaxAge(60*60*24*365);
                uav_velocityCookie.setMaxAge(60*60*24*365);
                grid_noCookie.setMaxAge(60*60*24*365);
                // Add Cookie
                response.addCookie(image_nameCookie);
                response.addCookie(rasp_noCookie);
                response.addCookie(uav_headerCookie);
                response.addCookie(uav_positionCookie);
                response.addCookie(uav_altitudeCookie);
                response.addCookie(uav_velocityCookie);
                response.addCookie(grid_noCookie);
            }
            // Dispatch
            RequestDispatcher reqdispatch = request.getRequestDispatcher("index.html");
            reqdispatch.forward(request, response);
        } catch(Exception e) {
            RequestDispatcher reqdispatch = request.getRequestDispatcher("DatabaseSearchError.html");
            reqdispatch.forward(request, response);
        }
        finally {
            out.close();
        }
    }
    
    //@Override
    //protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    //    this.request = request;
    //    this.response = response;
    //    this.requestManager();
    //}
    
    //@Override
    //protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    //    this.request = request;
    //    this.response = response;
    //    this.requestManager();
    //}
    
    //protected abstract void requestManager() throws IOException;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
