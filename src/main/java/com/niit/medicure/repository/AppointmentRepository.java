package com.niit.medicure.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.niit.medicure.model.Appointment;

public interface AppointmentRepository extends JpaRepository<Appointment, Integer> {

public List findAllByPatientId(Integer patientId);
public List findAllByDoctorid(Integer doctorid);
}
