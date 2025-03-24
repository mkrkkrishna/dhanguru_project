package com.dhan.service;

import com.dhan.dao.FeedbackDAO;
import com.dhan.model.Feedback;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FeedbackServiceImpl implements FeedbackService
{
	
	@Autowired
    private FeedbackDAO feedbackDAO;
	
	@Transactional
	@Override
	public void saveFeedback(Feedback feedback)
	{
		feedbackDAO.save(feedback);
	}
	
	@Transactional
	@Override
	public Feedback getFeedbackById(Integer id)
	{
		return feedbackDAO.findById(id).orElse(new Feedback());
	}
	
	@Transactional
	@Override
	public Feedback getFeedbackByEmail(String email)
	{
//		return feedbackDAO.getFeedbackByEmail(email);
		return new Feedback();
	}

    @Transactional
    @Override
    public List<Feedback> listFeedback() {
        return feedbackDAO.findAll();
    }
}
