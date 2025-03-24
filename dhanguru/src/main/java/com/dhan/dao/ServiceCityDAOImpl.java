package com.dhan.dao;

/*

import com.dhan.model.ServiceCity;
import com.dhan.service.ServiceCityService;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;

import javax.validation.ConstraintViolationException;
import java.util.List;


public class ServiceCityDAOImpl implements ServiceCityDAO{
	
	@Autowired
    private SessionFactory sessionFactory;
	
	@Autowired
	private ServiceCityService serviceCityService;
	
	
	@Override
	public void saveServiceCity(ServiceCity serviceCity) {
		// TODO Auto-generated method stub

        try
        {
            sessionFactory.getCurrentSession().save(serviceCity);
        }
        catch(ConstraintViolationException exp)
        {
            System.out.println("09");
            System.out.println("10");
        }
	}
	
	
	
	
	
	@Override
	public ServiceCity getServiceCityById(Integer id)
	{
		try
		{
			return (ServiceCity) sessionFactory.getCurrentSession().get(ServiceCity.class, id);
		}
		catch(Exception e)
		{
            ServiceCity serviceCity=new ServiceCity();
            serviceCity.setServiceCity("nothing");
			return serviceCity;
		}
	}


	@Override
	public ServiceCity getServiceCityByPincode(String pincode) {
		// TODO Auto-generated method stub
		try{
			Criteria criteria = sessionFactory.getCurrentSession().createCriteria(ServiceCity.class);
			criteria.add(Restrictions.eq("pincode",pincode));
            ServiceCity serviceCity= (ServiceCity) criteria.uniqueResult();
			Integer id=serviceCity.getId();
			return serviceCityService.getServiceCityById(id);
		}
		catch(Exception e)
		{
			return null;
		}
	}

    @SuppressWarnings("unchecked")
    @Override
    public List<ServiceCity> listServiceCity() {
        return (List<ServiceCity>)sessionFactory.getCurrentSession().createQuery("FROM ServiceCity").list();
    }
}*/
