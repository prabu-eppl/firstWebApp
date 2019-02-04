package firstWebApp;
import java.sql.*;
public class insert {
	
	public static void main(String[] args)
	  {
	    try
	    {
	      // create a mysql database connection
	      String myDriver = "org.gjt.mm.mysql.Driver";
	      String myUrl = "jdbc:mysql://localhost/test";
	      Class.forName(myDriver);
	      Connection conn = DriverManager.getConnection(myUrl, "testuser", "testuser");
	      
	      Statement st = conn.createStatement();

	      // note that i'm leaving "date_created" out of this insert statement
	      st.executeUpdate("INSERT INTO users (first_name, last_name, is_admin, num_points) "
	          +"VALUES ('Fredsadasdas', 'Flinstone', true, 10000)");

	      conn.close();
	    }
	    catch (Exception e)
	    {
	      System.err.println("Got an exception!");
	      System.err.println(e.getMessage());
	    }

	  }

}
