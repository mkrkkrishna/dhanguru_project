package com.dhan.service;


import com.dhan.dao.FixedInvesterDAO;
import com.dhan.model.FixedInvester;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Service;

@Service
public class FixedInvesterServiceImpl implements FixedInvesterService
{
	
	@Autowired
    private FixedInvesterDAO fixedInvesterDAO;
	
	@Transactional
	@Override
	public void saveFixedInvester(FixedInvester fixedInvester)
	{
        fixedInvesterDAO.save(fixedInvester);
    }

    @Transactional
	@Override
	public FixedInvester getFixedInvesterById(Integer id)
	{
		return fixedInvesterDAO.findById(id).orElse(new FixedInvester());
	}

    @Transactional
    @Override
    public List<FixedInvester> listFixedInvester() {
        return fixedInvesterDAO.findAll();
    }

    @Transactional
    @Override
    public List<FixedInvester> listFixedInvesterByLoanId(String loanId) {
//        return fixedInvesterDAO.listFixedInvesterByLoanId(loanId);
        return new ArrayList<>();
    }

    @Transactional
    @Override
    public FixedInvester getFixedInvesterByInvesterId_LoanId(String investerId,String loanId)
    {
//        return fixedInvesterDAO.getFixedInvesterByInvesterId_LoanId(investerId,loanId);
        return new FixedInvester();
    }

    @Transactional
    @Override
    public List<FixedInvester> getFixedInvesterByInvesterEmail(String email) {
//        return fixedInvesterDAO.getFixedInvesterByInvesterEmail(email);
        return new ArrayList<>();
    }
}
