package com.dhan.model;

import org.hibernate.annotations.DynamicUpdate;
import jakarta.persistence.*;

@Entity
@Table(name="INTREST_IN_INVEST")
//@DynamicUpdate(value=false)
public class IntrestInInvest
{
	
	@Id
	@GeneratedValue
	@Column(name="ID")
	private Integer id=-1;


	@Column(name = "INVESTOR_EMAIL")
	private String investorEmail;
	
	@Column(name="LOAN_ID")
	private String loanId;

    @Column(name="INVESTING_AMOUNT")
    private Integer investingAmount;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getInvestorEmail() {
        return investorEmail;
    }

    public void setInvestorEmail(String investorEmail) {
        this.investorEmail = investorEmail;
    }

    public String getLoanId() {
        return loanId;
    }

    public void setLoanId(String loanId) {
        this.loanId = loanId;
    }

    public Integer getInvestingAmount() {
        return investingAmount;
    }

    public void setInvestingAmount(Integer investingAmount) {
        this.investingAmount = investingAmount;
    }
}