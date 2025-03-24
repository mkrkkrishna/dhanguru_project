package com.dhan.model;

import jakarta.persistence.*;

@Entity
@Table(name="CONTACT_US")
public class ContactUs {
	@Id
	@GeneratedValue
	@Column(name="ID")
	private Integer id;
	
	@Column(name="NAME")
	private String name;
	
	@Column(name="MOBILE_NUMBER")
	private String mobileNumber;
	
	@Column(name="EMAIL")
	private String emailId;

    @Column(name = "ENQUiRY_SUBJECT")
    private String subjectEnquiry;
	
	@Column(name="QUERY",length = 2000)
	private String query;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

    public String getSubjectEnquiry() {
        return subjectEnquiry;
    }

    public void setSubjectEnquiry(String subjectEnquiry) {
        this.subjectEnquiry = subjectEnquiry;
    }

    public String getQuery() {
		return query;
	}

	public void setQuery(String query) {
		this.query = query;
	}


}
