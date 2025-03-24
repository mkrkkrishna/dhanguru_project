package com.dhan.service;

import com.dhan.dao.ServiceCityDAO;
import com.dhan.model.ServiceCity;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;


import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class ServiceCityServiceImpl implements ServiceCityService
{
	
	@Autowired
    private ServiceCityDAO serviceCityDAO;
	
	@Transactional
	@Override
	public void saveServiceCity(ServiceCity serviceCity)
	{
        serviceCityDAO.save(serviceCity);
    }

    @Transactional
	@Override
	public ServiceCity getServiceCityById(Integer id)
	{
		return serviceCityDAO.findById(id).orElse(new ServiceCity());
	}
	
	@Transactional
	@Override
	public ServiceCity getServiceCityByPincode(String pincode)
	{
//		return serviceCityDAO.getServiceCityByPincode(pincode);
		return new ServiceCity();
	}

    @Transactional
    @Override
    public List<ServiceCity> listServiceCity() {
        return serviceCityDAO.findAll();
    }
}
