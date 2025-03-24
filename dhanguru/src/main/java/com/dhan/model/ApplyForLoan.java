package com.dhan.model;

//import org.hibernate.annotations.DynamicUpdate;

import jakarta.persistence.*;

@Entity
@Table(name="APPLY_FOR_LOAN_INFO")
//@DynamicUpdate(value=false)
public class ApplyForLoan {

    @Id
    @GeneratedValue
    @Column(name = "ID")
    private Integer id = -1;

    @Column(name = "EMAIL_ID", unique = true)
    private String emailId;

    @Column(name = "LOAN_ID", unique = true)
    private String loanId;

    @Column(name = "SECURITY_NO", unique = true)
    private String securityNo;

    @Column(name="APPROVE_DATE")
    private String approveDate;


    @Column(name="CONTACT_DETAILS_PROOF")
    private String contactDetailsProof;

    @Column(name = "LOANING_AMOUNT")
    private Integer loaningAmount;

    @Column(name = "AMOUNT_APPROVED")
    private Integer amountApproved;

    @Column(name = "AMOUNT_NOT_APPROVED")
    private Integer amountNotApproved;



    @Column(name="LOAN_STATUS")
    private String loanStatus;

    @Lob
    @Column(name="ID_PROOF")
    private byte[] idProof;

    @Lob
    @Column(name="AGE_PROOF")
    private byte[] ageProof;

    @Lob
    @Column(name="ADDRESS_PROOF")
    private byte[] addressProof;

    @Lob
    @Column(name="EMPLOYMENT_PROOF")
    private byte[] employmentProof;

    @Lob
    @Column(name="INCOME_PROOF")
    private byte[] incomeProof;

    @Lob
    @Column(name="BANK_STATEMENT")
    private byte[] bankStatement;

    @Lob
    @Column(name="SIGNATURE_PROOF")
    private byte[] signatureProof;

    @Lob
    @Column(name="PHOTOGRAPH")
    private byte[] photograph;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEmailId() {
        return emailId;
    }

    public void setEmailId(String emailId) {
        this.emailId = emailId;
    }

    public String getContactDetailsProof() {
        return contactDetailsProof;
    }

    public void setContactDetailsProof(String contactDetailsProof) {
        this.contactDetailsProof = contactDetailsProof;
    }

    public Integer getLoaningAmount() {
        return loaningAmount;
    }

    public void setLoaningAmount(Integer loaningAmount) {
        this.loaningAmount = loaningAmount;
    }

    public byte[] getIdProof() {
        return idProof;
    }

    public void setIdProof(byte[] idProof) {
        this.idProof = idProof;
    }

    public byte[] getAgeProof() {
        return ageProof;
    }

    public void setAgeProof(byte[] ageProof) {
        this.ageProof = ageProof;
    }

    public byte[] getAddressProof() {
        return addressProof;
    }

    public void setAddressProof(byte[] addressProof) {
        this.addressProof = addressProof;
    }

    public byte[] getEmploymentProof() {
        return employmentProof;
    }

    public void setEmploymentProof(byte[] employmentProof) {
        this.employmentProof = employmentProof;
    }

    public byte[] getIncomeProof() {
        return incomeProof;
    }

    public void setIncomeProof(byte[] incomeProof) {
        this.incomeProof = incomeProof;
    }

    public byte[] getBankStatement() {
        return bankStatement;
    }

    public void setBankStatement(byte[] bankStatement) {
        this.bankStatement = bankStatement;
    }

    public byte[] getSignatureProof() {
        return signatureProof;
    }

    public void setSignatureProof(byte[] signatureProof) {
        this.signatureProof = signatureProof;
    }

    public byte[] getPhotograph() {
        return photograph;
    }

    public void setPhotograph(byte[] photograph) {
        this.photograph = photograph;
    }

    public String getLoanId() {
        return loanId;
    }

    public void setLoanId(String loanId) {
        this.loanId = loanId;
    }


    public String getSecurityNo() {
        return securityNo;
    }

    public void setSecurityNo(String securityNo) {
        this.securityNo = securityNo;
    }

    public String getLoanStatus() {
        return loanStatus;
    }

    public void setLoanStatus(String loanStatus) {
        this.loanStatus = loanStatus;
    }


    public String getApproveDate() {
        return approveDate;
    }

    public void setApproveDate(String approveDate) {
        this.approveDate = approveDate;
    }

    public Integer getAmountApproved() {
        return amountApproved;
    }

    public void setAmountApproved(Integer amountApproved) {
        this.amountApproved = amountApproved;
    }

    public Integer getAmountNotApproved() {
        return amountNotApproved;
    }

    public void setAmountNotApproved(Integer amountNotApproved) {
        this.amountNotApproved = amountNotApproved;
    }
}