package util;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;

public class DBConnection {
public static Connection dbconnect() throws SQLException{
	DriverManager.deregisterDriver(new com.mysql.jdbc.Driver());
	String url="jdbc:mysql://localhost:3306/thirsty";
	String user="root";
	String password="";
	Connection conn=(Connection) DriverManager.getConnection(url,user,password);
	return conn;
}
}
