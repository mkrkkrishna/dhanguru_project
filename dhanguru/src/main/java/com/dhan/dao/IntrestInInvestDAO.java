package com.dhan.dao;


import com.dhan.model.IntrestInInvest;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IntrestInInvestDAO extends JpaRepository<IntrestInInvest, Integer> {
	/*public void saveIntrestInInvest(IntrestInInvest intrestInInvest);
	public IntrestInInvest getIntrestInInvestById(Integer id);
	public IntrestInInvest getIntrestInInvestByEmail(String email);
    public List<IntrestInInvest> listIntrestInInvestByLoanId(String loanId);*/
}
