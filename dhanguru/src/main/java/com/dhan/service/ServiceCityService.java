package com.dhan.service;


import com.dhan.model.ServiceCity;

import java.util.List;

public interface ServiceCityService {
	public void saveServiceCity(ServiceCity serviceCity);
	public ServiceCity getServiceCityById(Integer id);
	public ServiceCity getServiceCityByPincode(String pincode);
    public List<ServiceCity> listServiceCity();
}
