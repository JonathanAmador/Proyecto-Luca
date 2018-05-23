package model;

public class User {

	private int id_user;
	private String name;
	private String surname;
	private String email;
	private String pass;
	private String address;
	private int phone;
	
	public User() {
		super();
	}

	public User(int id_user, String name, String surname, String email, String pass, String address, int phone) {
		super();
		this.id_user = id_user;
		this.name = name;
		this.surname = surname;
		this.email = email;
		this.pass = pass;
		this.address = address;
		this.phone = phone;
	}



	public int getId_user() {
		return id_user;
	}

	public void setId_user(int id_user) {
		this.id_user = id_user;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	@Override
	public String toString() {
		return "User [id_user=" + id_user + ", name=" + name + ", surname=" + surname + ", phone=" + phone
				+ ", address=" + address + ", email=" + email + ", pass=" + pass + "]";
	}

}
