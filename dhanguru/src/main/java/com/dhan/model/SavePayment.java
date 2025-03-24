package com.dhan.model;

import org.hibernate.annotations.DynamicUpdate;
import jakarta.persistence.*;

@Entity
@Table(name="SAVE_PAYMENT")
//@DynamicUpdate(value=false)
public class SavePayment {

    @Id
    @GeneratedValue
    @Column(name="ID")
    private Integer id=-1;


    @Column(name = "DAY")
    private String day;

    @Column(name = "YR_MONTH")
    private String yearMonth;

    @Column(name = "LOAN_ID")
    private String loanId;

    @Column(name = "INVESTER_ID")
    private String investerId;

    @Column(name = "INTREST_PAID")
    private Float intrestPaid;

    @Column(name = "CAPITAL_PAID")
    private Integer capitalPaid;

    @Column(name="BALANCE_AMOUNT")
    private Float balanceAmount;







    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day;
    }

    public String getYearMonth() {
        return yearMonth;
    }

    public void setYearMonth(String yearMonth) {
        this.yearMonth = yearMonth;
    }

    public String getLoanId() {
        return loanId;
    }

    public void setLoanId(String loanId) {
        this.loanId = loanId;
    }

    public String getInvesterId() {
        return investerId;
    }

    public void setInvesterId(String investerId) {
        this.investerId = investerId;
    }

    public Float getIntrestPaid() {
        return intrestPaid;
    }

    public void setIntrestPaid(Float intrestPaid) {
        this.intrestPaid = intrestPaid;
    }

    public Integer getCapitalPaid() {
        return capitalPaid;
    }

    public void setCapitalPaid(Integer capitalPaid) {
        this.capitalPaid = capitalPaid;
    }

    public Float getBalanceAmount() {
        return balanceAmount;
    }

    public void setBalanceAmount(Float balanceAmount) {
        this.balanceAmount = balanceAmount;
    }
}
