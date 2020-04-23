package com.niit.medicure.repository;

import org.springframework.data.repository.CrudRepository;

import com.niit.medicure.model.Doctor;
import com.niit.medicure.model.Patient;

public interface UserRepository extends CrudRepository<Patient, Integer> {
public Patient findByEmail(String email);

}
