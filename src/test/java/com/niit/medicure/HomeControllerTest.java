package com.niit.medicure;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.Spy;
import org.springframework.ui.Model;


import com.niit.medicure.controller.HomeController;
import com.niit.medicure.controller.PatientController;
import com.niit.medicure.model.Appointment;
import com.niit.medicure.model.Patient;
import com.niit.medicure.service.AppointmentService;
import com.niit.medicure.service.LoginService;

public class HomeControllerTest {

	@InjectMocks
	HomeController homeController;
	
	@Mock
	LoginService loginService;
	
	@InjectMocks
	PatientController patientController;
	
	@Mock
	private AppointmentService appService;
	
	@Spy
	Model model;
	
	@Spy
	HttpServletRequest req;

	@Spy
	HttpSession ses;
	
	@Before
	public void init() {
		MockitoAnnotations.initMocks(this);
	}
	
	@Test
	public void viewRegisterPageTest() {
		Assert.assertEquals(homeController.signup(model),"patient-form");
		
	}
	
	@Test
	public void savePatientTest() {
		Patient p=new Patient();
		p.setEmail("neha@123");
		p.setName("Neha");
		p.setPhonenum("32738722");
		p.setPassword("pass");
		
		loginService.save(p);
		verify(loginService,times(1)).save(p);
	}
	
	@Test
	public void loginUserTest() {
		Patient u=new Patient();
		u.setEmail("neha@1234");
		u.setPassword("pass");
		when(loginService.findByEmail("neha@1234")).thenReturn(u);

		Patient p1= loginService.findByEmail("neha@1234");

		assertEquals(p1.getEmail(),"neha@1234" );
		assertEquals(p1.getPassword(),"cGFzcw==");

		//assertEquals(loginController.loginDealer(req,d,model1),"products");
		verify(loginService,times(1)).findByEmail("neha@1234");
	}
	
	@Test
	public void viewAppFormTest() {
		Assert.assertEquals(patientController.viewAppForm(),"app-form");
	}
	
	@Test
	public void  appointmentSaveTest() {
		Appointment a=new Appointment();
		a.setD_id(1);
		a.setId(1);
		String date1="2020-09-09";
		a.setDate1(Date.valueOf(date1));
		String date2="2020-09-10";
		a.setDate1(Date.valueOf(date2));
		a.setDoctoraddress("Delhi");
		a.setDoctorname("Vatsala");
		a.setPatientname("neha");
		a.setSpecialist("dentist");
		a.setStatus("under process");
		
		appService.save(a);
		verify(appService,times(1)).save(a);
		
	}
	
	
	
}
