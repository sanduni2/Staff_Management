package emp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class EmpDao {

	private String dburl="jdbc:mysql://localhost:3306/Mysql";
	private String dbuname="root";
	private String dbpassword="sqldatabase";
	private String dbdriver="com.mysql.jdbc.Driver";
	
	public void loadDriver(String dbDriver) 
	{
		try {
			Class.forName(dbDriver);
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Connection getConnection() {
	    Connection con = null;
	    try {
	        con = DriverManager.getConnection(dburl, dbuname, dbpassword);
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return con;
	}
	public String insert(Empmember empmember)
	{
		loadDriver(dbdriver);
		Connection con=getConnection();
		
		String sql="insert into staff.empdetails values(?,?,?,?,?,?)";
		String result= "data entered successfully";
		
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, empmember.getId());
			ps.setString(2, empmember.getName());
			ps.setString(3, empmember.getLastname());
			ps.setString(4, empmember.getEmail());
			ps.setString(5, empmember.getOfficecode());
			ps.setString(6, empmember.getJobtitle());
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result="data not entered";
		}
		
		return result;
		
	}
}
