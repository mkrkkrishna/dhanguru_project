package com.dhan.dao;

/*

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;

import com.dhan.model.ContactUs;
import com.dhan.service.ContactUsService;

import java.util.List;


public class ContactUsDAOImpl implements ContactUsDAO{
	
	@Autowired
    private SessionFactory sessionFactory;
	
	@Autowired
	private ContactUsService contactUsService;
	
	
	@Override
	public void saveContactUs(ContactUs contactUs) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(contactUs);
	}
	
	
	
	
	
	@Override
	public ContactUs getContactUsById(Integer id)
	{
		try
		{
			return (ContactUs) sessionFactory.getCurrentSession().get(ContactUs.class, id);
		}
		catch(Exception e)
		{
			ContactUs contactUs=new ContactUs();
			contactUs.setName("nothing");
			return contactUs;
		}
	}


	
	
	
	
	
	@Override
	public ContactUs getContactUsByEmail(String email) {
		// TODO Auto-generated method stub
		try{
			Criteria criteria = sessionFactory.getCurrentSession().createCriteria(ContactUs.class);
			criteria.add(Restrictions.eq("emailId",email));
			ContactUs contactUs = (ContactUs) criteria.uniqueResult();
			Integer id=contactUs.getId();
			return contactUsService.getContactUsById(id);
		}
		catch(Exception e)
		{
			return null;
		}
	}

    @SuppressWarnings("unchecked")
    @Override
    public List<ContactUs> listContactUs() {
        return (List<ContactUs>)sessionFactory.getCurrentSession().createQuery("FROM ContactUs").list();
    }
}
*/
