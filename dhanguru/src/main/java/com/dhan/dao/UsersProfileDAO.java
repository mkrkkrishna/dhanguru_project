package com.dhan.dao;

import com.dhan.model.UsersProfile;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UsersProfileDAO extends JpaRepository<UsersProfile,Integer> {
	//public void saveUsersProfile(UsersProfile personalDetails);
	//public UsersProfile getUsersProfileById(Integer id);
	//public UsersProfile getUsersProfileByEmail(String email);
}
