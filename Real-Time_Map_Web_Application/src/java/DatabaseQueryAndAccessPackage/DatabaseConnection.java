/*
 * Created by Michael Cartwright
 * Pre: The user has activated an action which requires to access the database.
 *      and the Java Class responsible for that action to be processed has
 *      called DatabaseConnection in order to connect to the database.
 * Post: DatabaseConnection has been called and a connection to the database
 *       has occured. A query can be made with the database.
 */
package DatabaseQueryAndAccessPackage;

// Imported from lib/mysql-connector-java-5.1.36-bin.jar
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DatabaseConnection {
    
    // create statement to be sent as a query
    public Statement statement;
    // execute statement and query
    public ResultSet result;
    // value for database connection
    public Connection connect;
    
    public DatabaseConnection(){
        
    }
    
    @SuppressWarnings("CallToThreadDumpStack")
    public Connection setConnection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            connect = DriverManager.getConnection("jdbc:mysql://localhost/uav_data","root","Admin");
        }catch(Exception e){
            e.printStackTrace();
        }
        return connect;
    }
    public ResultSet getResult(String query, Connection connect) {
        this.connect = connect;
        try{
            statement = connect.createStatement();
            result = statement.executeQuery(query);
        }catch(Exception e){
            
        }
        return result;
    }
}

