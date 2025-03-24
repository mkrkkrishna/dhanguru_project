package com.dhan.dao;

/*

import com.dhan.model.ApplyForLoan;
import com.dhan.service.ApplyForLoanService;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;


public class ApplyForLoanDAOImpl implements ApplyForLoanDAO {
	
	@Autowired
    private SessionFactory sessionFactory;
	
	@Autowired
	private ApplyForLoanService applyForLoanService;
	
	
	@Override
	public void saveApplyForLoan(ApplyForLoan applyForLoan) {
		// TODO Auto-generated method stub
        sessionFactory.getCurrentSession().save(applyForLoan);
    }
	
	
    @Override
	public ApplyForLoan getApplyForLoanById(Integer id)
	{
		try
		{
			return (ApplyForLoan) sessionFactory.getCurrentSession().get(ApplyForLoan.class, id);
		}
		catch(Exception e)
		{
			ApplyForLoan applyForLoan =new ApplyForLoan();
			applyForLoan.setEmailId("nothing");
			return applyForLoan;
		}
	}


	@Override
	public ApplyForLoan getApplyForLoanByEmail(String email) {
		// TODO Auto-generated method stub
		try{
			Criteria criteria = sessionFactory.getCurrentSession().createCriteria(ApplyForLoan.class);
			criteria.add(Restrictions.eq("emailId",email));
			ApplyForLoan applyForLoan = (ApplyForLoan) criteria.uniqueResult();
			Integer id= applyForLoan.getId();
			return applyForLoanService.getApplyForLoanById(id);
		}
		catch(Exception e)
		{
			return null;
		}
	}

    @SuppressWarnings("unchecked")
    @Override
    public List<ApplyForLoan> listApplyForLoan() {
        return (List<ApplyForLoan>)sessionFactory.getCurrentSession().createQuery("FROM ApplyForLoan").list();
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<ApplyForLoan> listPendingApplyForLoanByEmail(String email) {
        try{
            Criteria criteria = sessionFactory.getCurrentSession().createCriteria(ApplyForLoan.class);
            criteria.add(Restrictions.eq("emailId",email));
            criteria.add(Restrictions.eq("loanStatus","pending"));

            List<ApplyForLoan> applyForLoanList = (List<ApplyForLoan>) criteria.list();
            if(applyForLoanList!=null)
            {
                return applyForLoanList;
            }
            else
            {
                */
/*List<ApplyForLoan> applyForLoanList01 = null;
                ApplyForLoan applyForLoan1=new ApplyForLoan();
                applyForLoan1.setEmailId("nothing");
                applyForLoanList01.set(0, applyForLoan1);
                return applyForLoanList01;*//*

                return null;
            }

        }
        catch(Exception e)
        {
            */
/*List<ApplyForLoan> applyForLoanList01 = null;
            ApplyForLoan applyForLoan1=new ApplyForLoan();
            applyForLoan1.setEmailId("nothing");
            applyForLoanList01.set(0, applyForLoan1);
            return applyForLoanList01;*//*

            return null;

        }
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<ApplyForLoan> listPendingApplyForLoan() {
        try{
            Criteria criteria = sessionFactory.getCurrentSession().createCriteria(ApplyForLoan.class);
            criteria.add(Restrictions.eq("loanStatus","pending"));

            List<ApplyForLoan> applyForLoanList = (List<ApplyForLoan>) criteria.list();
            if(applyForLoanList!=null)
            {
                return applyForLoanList;
            }
            else
            {
                */
/*List<ApplyForLoan> applyForLoanList01 = null;
                ApplyForLoan applyForLoan1=new ApplyForLoan();
                applyForLoan1.setEmailId("nothing");
                applyForLoanList01.set(0, applyForLoan1);
                return applyForLoanList01;*//*

                return null;
            }

        }
        catch(Exception e)
        {
            */
/*List<ApplyForLoan> applyForLoanList01 = null;
            ApplyForLoan applyForLoan1=new ApplyForLoan();
            applyForLoan1.setEmailId("nothing");
            applyForLoanList01.set(0, applyForLoan1);
            return applyForLoanList01;*//*

            return null;

        }
    }


    @SuppressWarnings("unchecked")
    @Override
    public List<ApplyForLoan> listApproveApplyForLoanByEmail(String email) {
        try{
            Criteria criteria = sessionFactory.getCurrentSession().createCriteria(ApplyForLoan.class);
            criteria.add(Restrictions.eq("emailId",email));
            criteria.add(Restrictions.eq("loanStatus","Approve"));
            List<ApplyForLoan> applyForLoanList = (List<ApplyForLoan>) criteria.list();
            if(applyForLoanList!=null)
            {
                return applyForLoanList;
            }
            else
            {
                */
/*List<ApplyForLoan> applyForLoanList01 = null;
                ApplyForLoan applyForLoan1=new ApplyForLoan();
                applyForLoan1.setEmailId("nothing");
                applyForLoanList01.set(0, applyForLoan1);
                return applyForLoanList01;*//*

                return null;
            }

        }
        catch(Exception e)
        {
            */
/*List<ApplyForLoan> applyForLoanList01 = null;
            ApplyForLoan applyForLoan1=new ApplyForLoan();
            applyForLoan1.setEmailId("nothing");
            applyForLoanList01.set(0, applyForLoan1);
            return applyForLoanList01;*//*

            return null;

        }
    }

    @Override
    public ApplyForLoan getApplyForLoanBySecurityKey(String securityKey, Integer id) {
        try{
            Criteria criteria = sessionFactory.getCurrentSession().createCriteria(ApplyForLoan.class);
            criteria.add(Restrictions.eq("securityNo",securityKey));
            criteria.add(Restrictions.eq("id",id));
            ApplyForLoan applyForLoan = (ApplyForLoan) criteria.uniqueResult();
            if(applyForLoan!=null)
            {
                return applyForLoan;
            }
            else
            {
                ApplyForLoan applyForLoan1=new ApplyForLoan();
                applyForLoan1.setEmailId("nothing");
                return applyForLoan1;
            }

        }
        catch(Exception e)
        {
            ApplyForLoan applyForLoan1=new ApplyForLoan();
            applyForLoan1.setEmailId("nothing");
            return applyForLoan1;

        }
    }

    @Override
    public String getSecurityKeyByLoanId(String loanId) {
        try{
            Criteria criteria = sessionFactory.getCurrentSession().createCriteria(ApplyForLoan.class);
            criteria.add(Restrictions.eq("loanId",loanId));
            ApplyForLoan applyForLoan = (ApplyForLoan) criteria.uniqueResult();
            return applyForLoan.getSecurityNo();
        }
        catch(Exception e)
        {
            return null;
        }
    }




    @Override
    public ApplyForLoan getApplyForLoanByLoanId(String loanId) {
        try{
            Criteria criteria = sessionFactory.getCurrentSession().createCriteria(ApplyForLoan.class);
            criteria.add(Restrictions.eq("loanId",loanId));
            ApplyForLoan applyForLoan = (ApplyForLoan) criteria.uniqueResult();
            return applyForLoan;
        }
        catch(Exception e)
        {
            ApplyForLoan applyForLoan1=new ApplyForLoan();
            applyForLoan1.setEmailId("nothing");
            return applyForLoan1;
        }
    }

    @Override
    public void updateApplyForLoan(ApplyForLoan applyForLoan) {
        sessionFactory.getCurrentSession().update(applyForLoan);
    }


}*/
