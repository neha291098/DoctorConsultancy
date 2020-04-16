package com.niit.medicure.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.medicure.model.Patient;
import com.niit.medicure.service.PatientService;

@Controller
public class OtherController {
	@Autowired
	private PatientService patientService;

	@RequestMapping(value = "/patient/signupDiagnostic",method = {RequestMethod.GET,RequestMethod.POST})
	public String signupPatient(Model theModel)
	{
    	Patient thePatient=new Patient();
    	theModel.addAttribute("patient",thePatient);
    	return "patient-form";
    	
    	
    }
	 @RequestMapping(value = "/patient/savePatientDiagnostic",method = {RequestMethod.GET,RequestMethod.POST})
	 public String savethePatient(@ModelAttribute("patient") Patient thePatient,Model theModel)
	 { 
		patientService.save(thePatient);
		return "redirect:/loginDiagnostic";
		
	 }
	 
	  @RequestMapping("/loginDiagnostic")
	 public String login(Model theModel)
	 {
		Patient thePatient=new Patient();
		theModel.addAttribute("patient",thePatient);
		 return "login-us";	
	 }
	  @RequestMapping("/diagnostic")
	  public String diagnostics(Model theModel)
	  {
		  return "index1";
	  }
	  
	  
}
