package com.niit.medicure.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.medicure.model.Appointment;
import com.niit.medicure.model.Patient;
import com.niit.medicure.service.AppointmentService;
import com.niit.medicure.service.LoginService;

@Controller
@RequestMapping("/index/loginAction")
public class PatientController {

	
	@Autowired
	private LoginService loginService;
	
	@Autowired
	private AppointmentService appService;
	
	@GetMapping("/bookapp")
	public String viewAppForm() {
		return "app-form";
	}
	
	@PostMapping("/appAction")
	public String loginDealer(HttpServletRequest req,@ModelAttribute("appForm") Appointment app) {
	 appService.save(app);
	 return "app-form";
	}
	
}
