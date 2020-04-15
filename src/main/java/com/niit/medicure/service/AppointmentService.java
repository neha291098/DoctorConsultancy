package com.niit.medicure.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.medicure.model.Appointment;
import com.niit.medicure.repository.AppointmentRepository;

@Service
@Transactional
public class AppointmentService {

	@Autowired
	AppointmentRepository apprepo;
	
	public void save(Appointment app) {
		apprepo.save(app);
	}
}
