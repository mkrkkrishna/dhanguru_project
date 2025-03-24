package com.dhan.dao;

import com.dhan.model.ContactUs;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ContactUsDAO extends JpaRepository<ContactUs,Integer> {
	/*public void saveContactUs(ContactUs contactUs);
	public ContactUs getContactUsById(Integer id);
	public ContactUs getContactUsByEmail(String email);
    public List<ContactUs> listContactUs();*/
}
