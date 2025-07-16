package in.pentagon.studentapp.dto;

public class Student {
	private int id;
	private String name;
	private long phone;
	private String mail;
	private String location;
	private String branch;
	private String password;
	private String date;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	@Override
	public String toString() {
	    return "----- Student Details -----\n" +
	           "ID        : " + id + "\n" +
	           "Name      : " + name + "\n" +
	           "Phone     : " + phone + "\n" +
	           "Email     : " + mail + "\n" +
	           "Location  : " + location + "\n" +
	           "Branch    : " + branch + "\n" +
	           "Password  : " + password + "\n" +
	           "Date      : " + date + "\n" +
	           "----------------------------";
	}
	

}
