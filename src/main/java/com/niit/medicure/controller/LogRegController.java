package com.niit.medicure.controller;
import java.nio.charset.StandardCharsets;
import java.util.Base64;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.niit.medicure.model.Doctor;
import com.niit.medicure.model.Patient;
import com.niit.medicure.service.DoctorService;
import com.niit.medicure.service.PatientService;

@Controller
public class LogRegController {
	@Autowired
	private PatientService patientService;
	@Autowired
	private DoctorService doctorService;
	
	@RequestMapping(value = "/patient/signup",method = {RequestMethod.GET,RequestMethod.POST})
	public String signup(Model theModel)
	{
    	Patient thePat=new Patient();
    	theModel.addAttribute("patient",thePat);
    	return "patient-form";
    	
    	
    }
	 
	 public String loginDoc(Model theModel)
	 {
		 Doctor theDoc=new Doctor();
	    	theModel.addAttribute("doctor",theDoc);
	    	return "patient-form";
	 }
	 
	 
	 @RequestMapping(value = "/patient/savePatient",method = {RequestMethod.GET,RequestMethod.POST})
	 public String savePatient(@ModelAttribute("patient") Patient thePat,Model theModel)
	 { 
		patientService.save(thePat);
		return "redirect:/login";
		
	 }
	 
	  @RequestMapping("/login")
	 public String login(Model theModel)
	 {
		Patient thePat=new Patient();
		theModel.addAttribute("patient",thePat);
		 return "login-us";	
	 }
	  
	  
	  
	  
	  @RequestMapping(value = "/list",method = {RequestMethod.GET,RequestMethod.POST})
		 public String list(ModelMap theModel) {
		  List<Patient> thePat = patientService.listAll();
		  List<Doctor> theDoc = doctorService.listAll();
		  theModel.addAttribute("doctor", theDoc);
		  theModel.addAttribute("patient", thePat);
		  return "list";
		 }
	  
	 
	  @RequestMapping("/loginUs")
	  public ModelAndView loginUser(HttpServletRequest req,@ModelAttribute("user") Patient patient,@ModelAttribute("user") Doctor doctor) {
	  String email=req.getParameter("email");
	  String pass=req.getParameter("password");
	  String pass2=encryptPass(pass);
	  StringTokenizer st = new StringTokenizer(email, "@");
	  String s2 = st.nextToken();

	  ModelAndView mav=null;
	
	  Patient d = patientService.findByEmail(email);
	  Doctor doc = doctorService.findByEmail(email);
	 
	  if(d==null & doc==null) {
	  mav= new ModelAndView("login-us");
	  mav.addObject("error", "User Doesn't Exists");
	  }
	  else if(d==null) {
		  if((email.equals(doc.getEmail()) && pass.equals(doc.getPassword()))) {
			  req.getSession().setAttribute("user",s2);
			  req.getSession().setAttribute("doctor", doc);
			  mav = new ModelAndView("welcome-doctor");
		  }
		  else {
			  mav= new ModelAndView("login-us");
			  mav.addObject("error", "Invalid Username or Password");
		  }
		  }
	else if(doc==null) {
			  if((email.equals(d.getEmail()) && pass2.equals(d.getPassword()))) {
				  req.getSession().setAttribute("user",s2);
				  req.getSession().setAttribute("patient", d);
				  mav = new ModelAndView("welcome");
				  
			  }
			  else {
				  mav= new ModelAndView("login-us");
				  mav.addObject("error", "Invalid Username or Password");
			  }
		  }

	  return mav;
	  }
	  
	  
	  private String encryptPass(String pass) {
		  Base64.Encoder encoder = Base64.getEncoder();
		  String normalString = pass;
		  String encodedString = encoder.encodeToString(
		     normalString.getBytes(StandardCharsets.UTF_8) );
		  return encodedString;
	 
	  }
	
	  

}