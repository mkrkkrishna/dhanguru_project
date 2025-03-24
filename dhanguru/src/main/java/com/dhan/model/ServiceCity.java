package com.dhan.model;

import org.hibernate.annotations.DynamicUpdate;
import jakarta.persistence.*;

@Entity
@Table(name="SERVICE_CITY_WITH_PINCODE")
//@DynamicUpdate(value=false)
public class ServiceCity {
	
	@Id
	@GeneratedValue
	@Column(name="ID")
	private Integer id=-1;
		
	@Column(name = "PINCODE",unique=true)
	private String pincode;
	
	@Column(name="SERVICE_CITY")
	private String serviceCity;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPincode() {
        return pincode;
    }

    public void setPincode(String pincode) {
        this.pincode = pincode;
    }

    public String getServiceCity() {
        return serviceCity;
    }

    public void setServiceCity(String serviceCity) {
        this.serviceCity = serviceCity;
    }
}