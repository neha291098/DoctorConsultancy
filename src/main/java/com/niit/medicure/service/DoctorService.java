package com.niit.medicure.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.medicure.model.Doctor;
import com.niit.medicure.model.Patient;
import com.niit.medicure.repository.DoctorRepository;
import com.niit.medicure.repository.UserDocRepository;

@Service
@Transactional
public class DoctorService {
	@Autowired
	private DoctorRepository repo;
	@Autowired
	private UserDocRepository uRepo;
	
	public Doctor findByEmail(String email) {
		return uRepo. findByEmail(email);
	}
	
	public List<Doctor> listAll()
	{
		return repo.findAll();
		}
}
