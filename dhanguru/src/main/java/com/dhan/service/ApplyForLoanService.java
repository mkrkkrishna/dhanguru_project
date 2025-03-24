package com.dhan.service;

import com.dhan.model.ApplyForLoan;

import java.util.List;

public interface ApplyForLoanService {
	public void saveOrUpdateApplyForLoan(ApplyForLoan applyForLoan);
	public ApplyForLoan getApplyForLoanById(Integer id);
	public ApplyForLoan getApplyForLoanByEmail(String email);
    public List<ApplyForLoan> listApplyForLoan();
    public List<ApplyForLoan> listPendingApplyForLoanByEmail(String email);
    public List<ApplyForLoan> listApproveApplyForLoanByEmail(String email);
    public List<ApplyForLoan> listPendingApplyForLoan();
    public ApplyForLoan getApplyForLoanBySecurityKey(String securityKey,Integer id);
    public String getSecurityKeyByLoanId(String loanId);
    public ApplyForLoan getApplyForLoanByLoanId(String loanId);
}