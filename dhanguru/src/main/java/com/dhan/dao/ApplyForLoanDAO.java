package com.dhan.dao;

import com.dhan.model.ApplyForLoan;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ApplyForLoanDAO extends JpaRepository<ApplyForLoan,Integer> {
	/*public void saveApplyForLoan(ApplyForLoan applyForLoan);
	public ApplyForLoan getApplyForLoanById(Integer id);
	public ApplyForLoan getApplyForLoanByEmail(String email);
    public List<ApplyForLoan> listApplyForLoan();
    public ApplyForLoan getApplyForLoanBySecurityKey(String securityKey,Integer id);
    public String getSecurityKeyByLoanId(String loanId);
    public List<ApplyForLoan> listPendingApplyForLoanByEmail(String email);
    public List<ApplyForLoan> listPendingApplyForLoan();
    public List<ApplyForLoan> listApproveApplyForLoanByEmail(String email);
    public ApplyForLoan getApplyForLoanByLoanId(String loanId);
    public void updateApplyForLoan(ApplyForLoan applyForLoan);*/
}
