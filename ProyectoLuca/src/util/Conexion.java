package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Conexion {

	
	private static Connection con = connectDB();
	
	public static Connection connectDB() {
		try {
			String driverClassName = "com.mysql.jdbc.Driver";
			String driverUrl = "jdbc:mysql://10.90.36.17:3306/bd_film";
			String user = "super";
			String password = "1111";

			Class.forName(driverClassName);
			con = DriverManager.getConnection(driverUrl, user, password);
			return con;
		}catch (Throwable ex) {
			System.err.println("Initial SessionFactory creation failed." + ex);
			throw new ExceptionInInitializerError(ex);
		}
	}
	
	public static void Connection() throws SQLException {
		if (con==null) connectDB();        
    }
	
	public static Statement openStatement() throws SQLException {
		if (con==null) connectDB();
        return con.createStatement();
    }
	
	
}
