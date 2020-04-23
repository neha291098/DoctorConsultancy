package com.niit.medicure.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.medicure.model.Patient;
import com.niit.medicure.repository.PatientRepository;
import com.niit.medicure.repository.UserRepository;



@Service
@Transactional
public class PatientService {
	@Autowired
	private PatientRepository repo;
	@Autowired
	private UserRepository uRepo;
	
	public void save(Patient thePat) {
		repo.save(thePat);
		}
	public Patient get(int patientId) {
		return repo.findByPatientId(patientId);
		}
	public Patient findByEmail(String email) {
		return uRepo.findByEmail(email);
	}
	public List<Patient> listAll()
	{return repo.findAll();}
	
}
