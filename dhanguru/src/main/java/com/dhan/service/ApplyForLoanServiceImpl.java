package com.dhan.service;

import com.dhan.dao.ApplyForLoanDAO;
import com.dhan.model.ApplyForLoan;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.ArrayList;
import java.util.List;

@Service
public class ApplyForLoanServiceImpl implements ApplyForLoanService {
	
	@Autowired
    private ApplyForLoanDAO applyForLoanDAO;
	
	@Transactional
	@Override
	public void saveOrUpdateApplyForLoan(ApplyForLoan applyForLoan)
	{
		applyForLoanDAO.save(applyForLoan);
	}
	
	@Transactional
	@Override
	public ApplyForLoan getApplyForLoanById(Integer id)
	{
		return applyForLoanDAO.findById(id).orElse(new ApplyForLoan());
	}
	
	@Transactional
	@Override
	public ApplyForLoan getApplyForLoanByEmail(String email)
	{
//		return applyForLoanDAO.getApplyForLoanByEmail(email);
        return new ApplyForLoan();
	}

    @Transactional
    @Override
    public List<ApplyForLoan> listApplyForLoan() {
        return applyForLoanDAO.findAll();
    }

    @Transactional
    @Override
    public List<ApplyForLoan> listPendingApplyForLoanByEmail(String email) {
//        return applyForLoanDAO.listPendingApplyForLoanByEmail(email);
        return new ArrayList<>();
    }

    @Transactional
    @Override
    public List<ApplyForLoan> listApproveApplyForLoanByEmail(String email) {
//        return applyForLoanDAO.listApproveApplyForLoanByEmail(email);
        return new ArrayList<>();

    }

    @Transactional
    @Override
    public List<ApplyForLoan> listPendingApplyForLoan() {
//        return applyForLoanDAO.listPendingApplyForLoan();
        return new ArrayList<>();
    }

    @Transactional
    @Override
    public ApplyForLoan getApplyForLoanBySecurityKey(String securityKey,Integer id)
    {
//        return applyForLoanDAO.getApplyForLoanBySecurityKey(securityKey, id);
        return new ApplyForLoan();
    }

    @Transactional
    @Override
    public String getSecurityKeyByLoanId(String loanId) {
//        return applyForLoanDAO.getSecurityKeyByLoanId(loanId);
        return null;
    }

    @Transactional
    @Override
    public ApplyForLoan getApplyForLoanByLoanId(String loanId)
    {
//        return applyForLoanDAO.getApplyForLoanByLoanId(loanId);
        return new ApplyForLoan();
    }
}
