package com.dhan.service;


import com.dhan.dao.IntrestInInvestDAO;
import com.dhan.model.IntrestInInvest;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Service;

@Service
public class IntrestInInvestServiceImpl implements IntrestInInvestService
{
	
	@Autowired
    private IntrestInInvestDAO intrestInInvestDAO;
	
	@Transactional
	@Override
	public void saveIntrestInInvest(IntrestInInvest intrestInInvest)
	{
        intrestInInvestDAO.save(intrestInInvest);
	}
	
	@Transactional
	@Override
	public IntrestInInvest getIntrestInInvestById(Integer id)
	{
		return intrestInInvestDAO.findById(id).orElse(new IntrestInInvest());
	}
	
	@Transactional
	@Override
	public IntrestInInvest getIntrestInInvestByEmail(String email)
	{
		//return intrestInInvestDAO.getIntrestInInvestByEmail(email);
		return new IntrestInInvest();
	}

    @Transactional
    @Override
    public List<IntrestInInvest> listIntrestInInvestByLoanId(String loanId) {
//        return intrestInInvestDAO.listIntrestInInvestByLoanId(loanId);
		return new ArrayList<>();
    }



}
