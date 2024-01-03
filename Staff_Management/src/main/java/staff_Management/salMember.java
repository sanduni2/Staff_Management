package staff_Management;
public class salMember 
{
	private String empID, empName, baseSal, allowances, deduction, total;
	

	public salMember() {
		super();
	}

	public salMember(String empID, String empName, String baseSal, String allowances, String deduction, String total) {
		super();
		this.empID =empID;
		this.empName = empName;
		this.baseSal = baseSal;
		this.allowances = allowances;
		this.deduction = deduction;
		this.total = total;
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

	public String getBaseSal() {
		return baseSal;
	}

	public void setBaseSal(String baseSal) {
		this.baseSal = baseSal;
	}

	public String getAllowances() {
		return allowances;
	}

	public void setAllowances(String allowances) {
		this.allowances = allowances;
	}

	public String getDeduction() {
		return deduction;
	}

	public void setDeduction(String deduction) {
		this.deduction = deduction;
	}

	public String getTotal() {
		return total;
	}

	public void setTotal(String total) {
		this.total = total;
	}
	

}
