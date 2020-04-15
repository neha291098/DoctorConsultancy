package com.niit.medicure.service;
import com.niit.medicure.model.Patient;
import com.niit.medicure.repository.PatientRepository;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class LoginService {
	
	@Autowired
	private PatientRepository repo;
	
	
	public void save(Patient patient) {
		repo.save(patient);
	}
	
	public Patient findByEmail(String email) {
		return repo.findByEmail(email);
	}
	
	public Patient get(Integer id) {
		return repo.findById(id).get();
	}

	public void delete(Integer id) {
		repo.deleteById(id);
	}
}
