package com.niit.medicure.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.niit.medicure.model.Patient;
public interface PatientRepository extends JpaRepository<Patient,Integer> {
	public Patient findByPatientId(Integer patientId);
}
