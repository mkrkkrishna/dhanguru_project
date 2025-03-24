package com.dhan.dao;

/*

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;

import com.dhan.model.UsersProfile;
import com.dhan.service.UsersProfileService;





public class UsersProfileDAOImpl implements UsersProfileDAO{
	
	@Autowired
    private SessionFactory sessionFactory;
	
	@Autowired
	private UsersProfileService usersProfileService;
	
	
	@Override
	public void saveUsersProfile(UsersProfile usersProfile) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(usersProfile);
	}
	
	
	
	
	
	@Override
	public UsersProfile getUsersProfileById(Integer id)
	{
		try
		{
			return (UsersProfile) sessionFactory.getCurrentSession().get(UsersProfile.class, id);
		}
		catch(Exception e)
		{
			UsersProfile usersProfile=new UsersProfile();
			usersProfile.setFullName("nothing");
			return usersProfile;
		}
	}


	
	
	
	
	
	@Override
	public UsersProfile getUsersProfileByEmail(String email) {
		// TODO Auto-generated method stub
		try{
            System.out.println("email id for getUsersProfile:    "+email);
			
			Criteria criteria = sessionFactory.getCurrentSession().createCriteria(UsersProfile.class);
			criteria.add(Restrictions.eq("emailId",email));
			UsersProfile usersProfile = (UsersProfile) criteria.uniqueResult();
			Integer id=usersProfile.getId();
			return usersProfileService.getUsersProfileById(id);
		}
		catch(Exception e)
		{
			return null;
		}
	}
}
*/
