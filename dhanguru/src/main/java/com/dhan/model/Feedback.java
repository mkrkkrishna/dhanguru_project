package com.dhan.model;

import jakarta.persistence.*;


@Entity
@Table(name="FEEDBACK")
public class Feedback {
	@Id
	@GeneratedValue
	@Column(name="ID")
	private Integer id;
	
	@Column(name="NAME")
	private String name;
	
	@Column(name="PHONE_NUMBER")
	private String phoneNumber;
	
	@Column(name="EMAIL")
	private String emailId;

    @Column(name="SUBJECT")
    private String subjectFeedback;
	
	@Column(name="FEEDBACK_TEXT",length = 2000)
	private String feedbackText;

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

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

    public String getSubjectFeedback() {
        return subjectFeedback;
    }

    public void setSubjectFeedback(String subjectFeedback) {
        this.subjectFeedback = subjectFeedback;
    }

    public String getFeedbackText() {
		return feedbackText;
	}

	public void setFeedbackText(String feedbackText) {
		this.feedbackText = feedbackText;
	}
}