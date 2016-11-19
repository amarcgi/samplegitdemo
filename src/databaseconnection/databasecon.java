package databaseconnection;
import java.sql.*;

public class databasecon 
{
	static Connection co;
	public static Connection getconnection()
	{
 		Line added by AMar in new featur branch
 			
		try
		{
			Class.forName("com.mysql.jdbc.Driver");	
			co = DriverManager.getConnection("jdbc:mysql://localhost:3306/socialnetwork","root","root");
		}
		catch(Exception e)
		{
			System.out.println("Database Error");
		}
		return co;
	}
	
}
