package msg;

public class Sendmember {
	private String empID, empName, message;
	
	public Sendmember(String empID, String empName, String message) {
		super();
		this.empID = empID;
		this.empName = empName;
		this.message = message;
	}

	public String getEmpID() {
		return empID;
	}

	public void setEmpID(String empID) {
		this.empID = empID;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	

}
