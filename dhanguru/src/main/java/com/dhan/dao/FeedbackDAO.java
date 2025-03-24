package com.dhan.dao;

import com.dhan.model.Feedback;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface FeedbackDAO extends JpaRepository<Feedback,Integer> {
	/*public void saveFeedback(Feedback feedback);
	public Feedback getFeedbackById(Integer id);
	public Feedback getFeedbackByEmail(String email);
    public List<Feedback> listFeedback();*/
}
