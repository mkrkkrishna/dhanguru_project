
package com.dhan.dao;


/*
import com.dhan.model.FixedInvester;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;


public class FixedInvesterDAOImpl implements FixedInvesterDAO {
	
	@Autowired
    private SessionFactory sessionFactory;
	
	@Override
	public void saveFixedInvester(FixedInvester fixedInvester) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(fixedInvester);
	}
	
	

	@Override
	public FixedInvester getFixedInvesterById(Integer id)
	{
		try
		{
			return (FixedInvester) sessionFactory.getCurrentSession().get(FixedInvester.class, id);
		}
		catch(Exception e)
		{
            FixedInvester fixedInvester=new FixedInvester();
            fixedInvester.setInvesterEmail("nothing");
			return fixedInvester;
		}
	}


    @SuppressWarnings("unchecked")
    @Override
    public List<FixedInvester> listFixedInvester() {
        return (List<FixedInvester>)sessionFactory.getCurrentSession().createQuery("FROM FixedInvester").list();
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<FixedInvester> listFixedInvesterByLoanId(String loanId)throws NullPointerException {
        try{
            Criteria criteria = sessionFactory.getCurrentSession().createCriteria(FixedInvester.class);
            criteria.add(Restrictions.eq("loanId", loanId));

            List<FixedInvester> fixedInvesterList = (List<FixedInvester>) criteria.list();
            if(fixedInvesterList!=null)
            {
                return fixedInvesterList;
            }
            else
            {
                return null;
            }

        }
        catch(Exception e)
        {
            return null;

        }
    }


    @Override
    public FixedInvester getFixedInvesterByInvesterId_LoanId(String investerId,String loanId)
    {
        try{
            Criteria criteria = sessionFactory.getCurrentSession().createCriteria(FixedInvester.class);
            criteria.add(Restrictions.eq("investerId",investerId));
            criteria.add(Restrictions.eq("loanId",loanId));
            FixedInvester fixedInvester = (FixedInvester) criteria.uniqueResult();
            System.out.println("intrest rate is   :    " + fixedInvester.getIntrestRate());

            if(fixedInvester.getIntrestRate()!=null)
            {
                return fixedInvester;
            }
            else
            {
                FixedInvester fixedInvester1=new FixedInvester();
                fixedInvester1.setInvesterId("nothing");
                return fixedInvester1;
            }

        }
        catch(Exception e)
        {
            FixedInvester fixedInvester1=new FixedInvester();
            fixedInvester1.setInvesterId("nothing");
            return fixedInvester1;
        }
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<FixedInvester> getFixedInvesterByInvesterEmail(String investerEmail) {
        try{
            System.out.println("investerEmail recieved is                 "+investerEmail);
            System.out.println("01");
            Criteria criteria = sessionFactory.getCurrentSession().createCriteria(FixedInvester.class);
            System.out.println("02");
            criteria.add(Restrictions.eq("investerEmail", investerEmail));

            System.out.println("03");
            List<FixedInvester> fixedInvesterList = (List<FixedInvester>) criteria.list();
            System.out.println("04");
            for(FixedInvester fixedInvester:fixedInvesterList)
            {
                System.out.println("invester id from database is          "+fixedInvester.getInvesterEmail());
            }

            if(fixedInvesterList!=null)
            {
                System.out.println("05");
                return fixedInvesterList;
            }
            else
            {
                System.out.println("06");
                return null;
            }

        }
        catch(Exception e)
        {
            System.out.println(e.getMessage());
            System.out.println("07");
            return null;
        }
    }
}*/
