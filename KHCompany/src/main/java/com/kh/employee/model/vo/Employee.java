package com.kh.employee.model.vo;

public class Employee {

	private int empId;	// 사원번호->저장된 데이터가 숫자로 되어있음
	private String empName;
	private String empNo;
	private String email;
	
	private String dept;	// 부서정보(부서코드 또는 부서명)
	private String job;		// 직급정보(직급코드 또는 직급명)
	
	private int salary;
	private double bonus;
	
	private int manager;	// 사수정보(사수사번 또는 사수명)
	private String hirDate;
	private String entDate;
	private char entYn;		// 'Y' 또는 'N'
	
	public Employee() {
		super();
	}

	public Employee(int empId, String empName, String empNo, String email, String dept, String job, int salary,
			double bonus, int manager, String hirDate, String entDate, char entYn) {
		super();
		this.empId = empId;
		this.empName = empName;
		this.empNo = empNo;
		this.email = email;
		this.dept = dept;
		this.job = job;
		this.salary = salary;
		this.bonus = bonus;
		this.manager = manager;
		this.hirDate = hirDate;
		this.entDate = entDate;
		this.entYn = entYn;
	}

	public int getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public String getEmpNo() {
		return empNo;
	}

	public void setEmpNo(String empNo) {
		this.empNo = empNo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	public double getBonus() {
		return bonus;
	}

	public void setBonus(double bonus) {
		this.bonus = bonus;
	}

	public int getManager() {
		return manager;
	}

	public void setManager(int manager) {
		this.manager = manager;
	}

	public String getHirDate() {
		return hirDate;
	}

	public void setHirDate(String hirDate) {
		this.hirDate = hirDate;
	}

	public String getEntDate() {
		return entDate;
	}

	public void setEntDate(String entDate) {
		this.entDate = entDate;
	}

	public char getEntYn() {
		return entYn;
	}

	public void setEntYn(char entYn) {
		this.entYn = entYn;
	}

	@Override
	public String toString() {
		return "Employee [empId=" + empId + ", empName=" + empName + ", empNo=" + empNo + ", email=" + email + ", dept="
				+ dept + ", job=" + job + ", salary=" + salary + ", bonus=" + bonus + ", manager=" + manager
				+ ", hirDate=" + hirDate + ", entDate=" + entDate + ", entYn=" + entYn + "]";
	}
	
}
