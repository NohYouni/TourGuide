package proto;

public class TestVO {
	public String name;
	public String email;
	public TestVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public TestVO(String name, String email) {
		super();
		this.name = name;
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
}
