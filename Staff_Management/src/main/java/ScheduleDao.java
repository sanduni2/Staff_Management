import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class ScheduleDao {
	
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
	public String insert(ScheMamber schemember)
	{
		loadDriver(dbdriver);
		Connection con=getConnection();
		
		String sql="insert into staff.schemember values(?,?,?,?)";
		String result= "data entered successfully";
		
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, schemember.getScheduleId());
			ps.setString(2, schemember.getDate());
			ps.setString(3, schemember.getTask());
			ps.setString(4, schemember.getEmpId());
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result="data not entered";
		}
		
		return result;
		
	}
	

}
