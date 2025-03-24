package com.dhan.service;


import com.dhan.model.Feedback;

import java.util.List;

public interface FeedbackService {
	public void saveFeedback(Feedback feedback);
	public Feedback getFeedbackById(Integer id);
	public Feedback getFeedbackByEmail(String email);
    public List<Feedback> listFeedback();
}
