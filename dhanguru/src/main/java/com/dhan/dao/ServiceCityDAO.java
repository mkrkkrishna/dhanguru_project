package com.dhan.dao;


import com.dhan.model.ServiceCity;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ServiceCityDAO extends JpaRepository<ServiceCity,Integer> {
	/*public void saveServiceCity(ServiceCity ServiceCity);
	public ServiceCity getServiceCityById(Integer id);
	public ServiceCity getServiceCityByPincode(String pincode);
    public List<ServiceCity> listServiceCity();*/
}
