package com.niit.medicure.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.niit.medicure.model.Doctor;



public interface DoctorRepository extends JpaRepository<Doctor,Integer>{

}
