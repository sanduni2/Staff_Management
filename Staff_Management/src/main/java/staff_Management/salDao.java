package staff_Management;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class salDao {
	
	private String dburl="jdbc:mysql://localhost:3306/Mysql"; //database connection
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
	public String insert(salMember salmember) {
	    loadDriver(dbdriver);
	    Connection con = getConnection();
	    
	    String sql = "INSERT INTO staff.salary (empID, empName, baseSal, allowances, deduction, total) VALUES (?, ?, ?, ?, ?, ?)";
	    String result = "data entered successfully";
	    
	    try {
	        PreparedStatement ps = con.prepareStatement(sql);
	        ps.setString(1, salmember.getEmpID());
	        ps.setString(2, salmember.getEmpName());
	        ps.setString(3, salmember.getBaseSal());
	        ps.setString(4, salmember.getAllowances());
	        ps.setString(5, salmember.getDeduction());
	        ps.setString(6, salmember.getTotal());
	        
	        int rowsAffected = ps.executeUpdate();
	        if (rowsAffected == 0) {
	            result = "No rows were inserted.";
	        }
	    } catch (SQLException e) {
	        e.printStackTrace(); // Print the exception for debugging
	        result = "Data not entered. Error: " + e.getMessage();
	    }
	    
	    return result;
	

		
	}
	

}
