package com.dhan.service;


import com.dhan.model.IntrestInInvest;

import java.util.List;

public interface IntrestInInvestService {
	public void saveIntrestInInvest(IntrestInInvest intrestInInvest);
	public IntrestInInvest getIntrestInInvestById(Integer id);
	public IntrestInInvest getIntrestInInvestByEmail(String email);
    public List<IntrestInInvest> listIntrestInInvestByLoanId(String loanId);

}
