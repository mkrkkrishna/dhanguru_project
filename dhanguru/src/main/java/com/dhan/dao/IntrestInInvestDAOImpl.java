package com.dhan.dao;

/*

import com.dhan.model.IntrestInInvest;
import com.dhan.service.IntrestInInvestService;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;


public class IntrestInInvestDAOImpl implements IntrestInInvestDAO {
	
	@Autowired
    private SessionFactory sessionFactory;
	
	@Autowired
	private IntrestInInvestService intrestInInvestService;
	
	
	@Override
	public void saveIntrestInInvest(IntrestInInvest intrestInInvest) {
		sessionFactory.getCurrentSession().save(intrestInInvest);
	}
	
	

	@Override
	public IntrestInInvest getIntrestInInvestById(Integer id)
	{
		try
		{
			return (IntrestInInvest) sessionFactory.getCurrentSession().get(IntrestInInvest.class, id);
		}
		catch(Exception e)
		{
            IntrestInInvest intrestInInvest=new IntrestInInvest();
            intrestInInvest.setInvestorEmail("nothing");
			return intrestInInvest;
		}
	}


	@Override
	public IntrestInInvest getIntrestInInvestByEmail(String email) {
		try{
			Criteria criteria = sessionFactory.getCurrentSession().createCriteria(IntrestInInvest.class);
			criteria.add(Restrictions.eq("investerEmail",email));
            IntrestInInvest intrestInInvest= (IntrestInInvest) criteria.uniqueResult();
			Integer id=intrestInInvest.getId();
            return intrestInInvestService.getIntrestInInvestById(id);
		}
		catch(Exception e)
		{
			return null;
		}
	}

    @SuppressWarnings("unchecked")
    @Override
    public List<IntrestInInvest> listIntrestInInvestByLoanId(String loanId) {
        */
/*return (List<IntrestInInvest>)sessionFactory.getCurrentSession().createQuery("FROM IntrestInInvest").list();*//*

        try{
            Criteria criteria = sessionFactory.getCurrentSession().createCriteria(IntrestInInvest.class);
            criteria.add(Restrictions.eq("loanId",loanId));
            List<IntrestInInvest> intrestInInvestList= criteria.list();
            return intrestInInvestList;
        }
        catch(Exception e)
        {
            return null;
        }
    }
}
*/
