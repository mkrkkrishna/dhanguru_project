package com.dhan.service;

import com.dhan.dao.ContactUsDAO;
import com.dhan.model.ContactUs;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;

@Service
public class ContactUsServiceImpl implements ContactUsService
{
	
	@Autowired
    private ContactUsDAO contactUsDAO;
	
	@Transactional
	@Override
	public void saveContactUs(ContactUs contactUs)
	{
		contactUsDAO.save(contactUs);
	}
	
	@Transactional
	@Override
	public ContactUs getContactUsById(Integer id)
	{
		return contactUsDAO.findById(id).orElse(new ContactUs());
	}
	
	@Transactional
	@Override
	public ContactUs getContactUsByEmail(String email)
	{
//		return contactUsDAO.getContactUsByEmail(email);
		return new ContactUs();
	}

    @Transactional
    @Override
    public List<ContactUs> listContactUs() {
        return contactUsDAO.findAll();
    }
}
