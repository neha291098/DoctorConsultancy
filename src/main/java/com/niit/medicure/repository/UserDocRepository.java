package com.niit.medicure.repository;

import org.springframework.data.repository.CrudRepository;

import com.niit.medicure.model.Doctor;

public interface UserDocRepository extends CrudRepository<Doctor, Integer> {
	public Doctor findByEmail(String email);
	
}
