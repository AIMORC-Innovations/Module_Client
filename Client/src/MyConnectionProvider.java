import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.test.MyDBconstant;

public class MyConnectionProvider implements MyDBconstant {
 static Connection con=null;
 public static Connection getCon() {
	 try {
		Class.forName("org.postgresql.Driver");
		con=DriverManager.getConnection(URL,USERNAME,PASSWORD);
	} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return con;
 }
}
