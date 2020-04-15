package com.niit.medicure.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.niit.medicure.model.Appointment;

public interface AppointmentRepository extends JpaRepository<Appointment, Integer> {

}
