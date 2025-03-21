package model.vo;

public class Student {
	private String name;
	private int age;
	private String gender;
	
	// 생성자(기본생성자, 모든 필드를 매개변수로 가지는 생성자)
	// getter,setter
	// toString
	public Student() {
		super();
	}

	public Student(String name, int age, String gender) {
		super();
		this.name = name;
		this.age = age;
		this.gender = gender;
	}

	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public int getAge() {
		return age;
	}


	public void setAge(int age) {
		this.age = age;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	@Override
	public String toString() {
		return "Student [name=" + name + ", age=" + age + ", gender=" + gender + "]";
	}
	
	
}
