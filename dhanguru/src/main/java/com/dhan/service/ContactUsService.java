package com.dhan.service;


import com.dhan.model.ContactUs;

import java.util.List;

public interface ContactUsService {
	public void saveContactUs(ContactUs contactUs);
	public ContactUs getContactUsById(Integer id);
	public ContactUs getContactUsByEmail(String email);
    public List<ContactUs> listContactUs();
}
