package com.dhan.service;


import com.dhan.model.FixedInvester;

import java.util.List;

public interface FixedInvesterService {
	public void saveFixedInvester(FixedInvester fixedInvester);
	public FixedInvester getFixedInvesterById(Integer id);
    public List<FixedInvester> listFixedInvester();
    public List<FixedInvester> listFixedInvesterByLoanId(String loanId);
    public FixedInvester getFixedInvesterByInvesterId_LoanId(String investerId,String loanId);
    public List<FixedInvester> getFixedInvesterByInvesterEmail(String email);
}

