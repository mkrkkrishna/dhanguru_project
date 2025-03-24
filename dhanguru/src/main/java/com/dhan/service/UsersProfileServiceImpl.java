package com.dhan.service;

import jakarta.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;

import com.dhan.dao.UsersProfileDAO;
import com.dhan.model.UsersProfile;
import org.springframework.stereotype.Service;

@Service
public class UsersProfileServiceImpl implements UsersProfileService
{
	
	@Autowired
    private UsersProfileDAO usersProfileDAO;
	
	@Transactional
	@Override
	public void saveUsersProfile(UsersProfile usersProfile)
	{
		usersProfileDAO.save(usersProfile);
	}
	
	@Transactional
	@Override
	public UsersProfile getUsersProfileById(Integer id)
	{
		return usersProfileDAO.findById(id).orElse(new UsersProfile());
	}
	
	@Transactional
	@Override
	public UsersProfile getUsersProfileByEmail(String email)
	{
		//return usersProfileDAO.getUsersProfileByEmail(email);
		return new UsersProfile();
	}
}
