
package com.dhan.model;

import org.hibernate.annotations.DynamicUpdate;
import jakarta.persistence.*;

@Entity
@Table(name="FIXED_INVESTER")
//@DynamicUpdate(value=false)
public class FixedInvester
{
	
	@Id
	@GeneratedValue
	@Column(name="ID")
	private Integer id=-1;


    @Column(name = "LOAN_ID")
    private String loanId;

    @Column(name = "FIX_DATE")
    private String fixDate;

    @Column(name = "INVESTER_ID")
    private String investerId;

    @Column(name = "INVESTER_NAME")
    private String investerName;

	@Column(name = "INVESTER_EMAIL")
	private String investerEmail;
	
	@Column(name="INVESTER_CONTACT")
	private String investerContact;

    @Column(name="INTREST_RATE")
    private Integer intrestRate;

    @Column(name="INVESTING_AMOUNT")
    private Integer investingAmount;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLoanId() {
        return loanId;
    }

    public void setLoanId(String loanId) {
        this.loanId = loanId;
    }

    public String getInvesterName() {
        return investerName;
    }

    public void setInvesterName(String investerName) {
        this.investerName = investerName;
    }

    public String getInvesterEmail() {
        return investerEmail;
    }

    public void setInvesterEmail(String investerEmail) {
        this.investerEmail = investerEmail;
    }

    public String getInvesterContact() {
        return investerContact;
    }

    public void setInvesterContact(String investerContact) {
        this.investerContact = investerContact;
    }

    public Integer getInvestingAmount() {
        return investingAmount;
    }

    public void setInvestingAmount(Integer investingAmount) {
        this.investingAmount = investingAmount;
    }


    public String getInvesterId() {
        return investerId;
    }

    public void setInvesterId(String investerId) {
        this.investerId = investerId;
    }

    public Integer getIntrestRate() {
        return intrestRate;
    }

    public void setIntrestRate(Integer intrestRate) {
        this.intrestRate = intrestRate;
    }

    public String getFixDate() {
        return fixDate;
    }

    public void setFixDate(String fixDate) {
        this.fixDate = fixDate;
    }
}