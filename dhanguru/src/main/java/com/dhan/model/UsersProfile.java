package com.dhan.model;

import jakarta.persistence.*;
import org.hibernate.annotations.DynamicUpdate;


@Entity
@Table(name="USERS_PROFILE")
@DynamicUpdate(value=false)
public class UsersProfile {

	@Id
	@GeneratedValue
	@Column(name="ID")
	private Integer id=-1;
		
	@Column(name = "FULL_NAME")
	private String fullName;
	
	@Column(name = "NICK_NAME")
	private String nickName;
	
	@Column(name = "FATHER_NAME")
	private String fatherName;
	
	@Column(name = "MOTHER_NAME")
	private String motherName;

	@Column(name="SEX")
	private String sex;
	
	@Column(name="DOB")
	private String dob;
	
	@Column(name="NATIONALITY")
	private String nationality;
	
	@Column(name="MOBILE")
	private String mobile;
	
	@Column(name="HOME_CONTACT")
	private String homeContact;
	
	@Column(name="OFFICE_CONTACT")
	private String officeContact;
	
	@Column(name="STREET_ADDRESS")
	private String streetAddress;
	
	@Column(name="ADDRESS")
	private String address;
	
	@Column(name="CITY")
	private String city;
	
	@Column(name="PINCODE")
	private String pincode;
	
	@Column(name="STATE")
	private String state;
	
	@Column(name="COUNTRY")
	private String country;
	
	@Column(name="EMAILID",unique=true)
	private String emailId;
	
	@Column(name="ALTERNATE_EMAILID")
	private String alternateEmailId;
	
	@Column(name="PASSWORD")
	private String password;
	
	@Column(name="AUTHORITY")
	private String authority;
	
	@Column(name="ENABLED")
	private boolean enabled;

	
	
	
	
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getFatherName() {
		return fatherName;
	}

	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}

	public String getMotherName() {
		return motherName;
	}

	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getHomeContact() {
		return homeContact;
	}

	public void setHomeContact(String homeContact) {
		this.homeContact = homeContact;
	}

	public String getOfficeContact() {
		return officeContact;
	}

	public void setOfficeContact(String officeContact) {
		this.officeContact = officeContact;
	}

	public String getStreetAddress() {
		return streetAddress;
	}

	public void setStreetAddress(String streetAddress) {
		this.streetAddress = streetAddress;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getAlternateEmailId() {
		return alternateEmailId;
	}

	public void setAlternateEmailId(String alternateEmailId) {
		this.alternateEmailId = alternateEmailId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}	
}