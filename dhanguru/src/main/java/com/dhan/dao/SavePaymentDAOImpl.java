package com.dhan.dao;
/*

import com.dhan.model.SavePayment;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;


public class SavePaymentDAOImpl implements SavePaymentDAO {



    @Autowired
    private SessionFactory sessionFactory;



    @Override
    public void saveSavePayment(SavePayment savePayment) {
        sessionFactory.getCurrentSession().save(savePayment);
    }

    @Override
    public SavePayment getSavePaymentById(Integer id) {
        try
        {
            return (SavePayment) sessionFactory.getCurrentSession().get(SavePayment.class, id);
        }
        catch(Exception e)
        {
            SavePayment savePayment=new SavePayment();
            savePayment.setInvesterId("nothing");
            return savePayment;
        }
    }



    @SuppressWarnings("unchecked")
    @Override
    public List<SavePayment> listSavePayment() {
        return (List<SavePayment>)sessionFactory.getCurrentSession().createQuery("FROM SavePayment").list();
    }


    @Override
    public List<SavePayment> getSavePaymentByLoanInvesterID(String investerId, String loanId) {
        try {
            Criteria criteria = sessionFactory.getCurrentSession().createCriteria(SavePayment.class);
            criteria.add(Restrictions.eq("investerId", investerId));
            criteria.add(Restrictions.eq("loanId", loanId));
            List<SavePayment> savePaymentList = (List<SavePayment>) criteria.list();
            */
/*System.out.println("list is empty:     " + savePaymentList.isEmpty());*//*

            if(savePaymentList.isEmpty())
            {
                System.out.println("in DAO if 01");
                List<SavePayment> savePaymentList01 = null;
                */
/*System.out.println("in DAO if 02");
                SavePayment savePayment1=new SavePayment();
                System.out.println("in DAO if 03");
                savePayment1.setDay("nothing");
                System.out.println("in DAO if 05");
                savePaymentList01.add(0, savePayment1);
                System.out.println("in DAO if 06");*//*

                return null;
            }
            else
            {
                System.out.println("in DAO else");
                return savePaymentList;
            }

        }
        catch (Exception e)
        {
            System.out.println("in DAO CATCH 01");
            List<SavePayment> savePaymentList01 = null;
            */
/*System.out.println("in DAO CATCH 02");
            SavePayment savePayment1=new SavePayment();
            System.out.println("in DAO CATCH 03");
            savePayment1.setBalanceAmount(0.00F);
            System.out.println("in DAO CATCH 04");
            savePaymentList01.set(0, savePayment1);
            System.out.println("in DAO CATCH 05");*//*

            return null;
        }

    }

}
*/
