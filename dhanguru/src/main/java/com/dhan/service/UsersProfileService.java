package com.dhan.service;


import com.dhan.model.UsersProfile;

public interface UsersProfileService {
	public void saveUsersProfile(UsersProfile usersProfile);
	public UsersProfile getUsersProfileById(Integer id);
	public UsersProfile getUsersProfileByEmail(String email);
}
