
package com.dhan.dao;


import com.dhan.model.FixedInvester;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FixedInvesterDAO extends JpaRepository<FixedInvester,Integer> {
	/*public void saveFixedInvester(FixedInvester fixedInvester);
	public FixedInvester getFixedInvesterById(Integer id);
    public List<FixedInvester> listFixedInvester();
    public List<FixedInvester> listFixedInvesterByLoanId(String loanId);
    public FixedInvester getFixedInvesterByInvesterId_LoanId(String investerId,String loanId);
    public List<FixedInvester> getFixedInvesterByInvesterEmail(String investerEmail);*/
	
	
}