package com.dhan.dao;


/*import com.dhan.model.Feedback;
import com.dhan.service.FeedbackService;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;


public class FeedbackDAOImpl implements FeedbackDAO{
	
	@Autowired
    private SessionFactory sessionFactory;
	
	@Autowired
	private FeedbackService feedbackService;
	
	
	@Override
	public void saveFeedback(Feedback feedback) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(feedback);
	}
	
	
	
	
	
	@Override
	public Feedback getFeedbackById(Integer id)
	{
		try
		{
			return (Feedback) sessionFactory.getCurrentSession().get(Feedback.class, id);
		}
		catch(Exception e)
		{
			Feedback feedback=new Feedback();
			feedback.setName("nothing");
			return feedback;
		}
	}


	
	
	
	
	
	@Override
	public Feedback getFeedbackByEmail(String email) {
		try{
			Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Feedback.class);
			criteria.add(Restrictions.eq("emailId",email));
			Feedback feedback= (Feedback) criteria.uniqueResult();
			Integer id=feedback.getId();
			return feedbackService.getFeedbackById(id);
		}
		catch(Exception e)
		{
			return null;
		}
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<Feedback> listFeedback() {
        return (List<Feedback>)sessionFactory.getCurrentSession().createQuery("FROM Feedback").list();

    }
}
*/