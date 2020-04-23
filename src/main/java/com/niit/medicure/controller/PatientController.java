package com.niit.medicure.controller;


import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;

import com.niit.medicure.model.Appointment;
import com.niit.medicure.model.Doctor;
import com.niit.medicure.model.Patient;
import com.niit.medicure.service.AppointmentService;
import com.niit.medicure.service.PatientService;


@Controller

@RequestMapping("/loginUs")
public class PatientController {
	@Autowired
	private AppointmentService appService;
	
	@Autowired
	
	private PatientService patientService;
	@GetMapping("/bookapp")
	
	public String viewAppForm() {
		return "app-form";
	}
	
	@PostMapping("/appAction")
	public String bookAppoint(HttpServletRequest req,@ModelAttribute("appForm") Appointment app,Model theModel) {
		Patient p=(Patient)req.getSession(false).getAttribute("patient");
		
	
		//app.setPatientId(p.getPatientId());
		//app.setPatientname(p.getName());
		
	 int pid=app.getAppid();
	 theModel.addAttribute("pid",pid);
	 appService.save(app);
	 return "payment-form";
	 }
	
	
	@GetMapping("/bookAppList")
	public String getAppointments(HttpServletRequest req,Model theModel,@ModelAttribute("userDetails") Patient patientDet,ModelMap model)
	{
		Patient p=(Patient)req.getSession(false).getAttribute("patient");
	
	int patientId=p.getPatientId();
	
	
		List<Appointment> theApp=appService.findAllByPatientId(patientId);
	
		
		model.addAttribute("appList", theApp);
		
		return "bookAppointment-list";
       
	}
	
	@GetMapping("/checkAppointment")
	public String checkAppointments(HttpServletRequest req,Model theModel,ModelMap model)
	{
		Doctor doct =(Doctor)req.getSession(false).getAttribute("doctor");
	int doctorid=doct.getDoctorid();
		List<Appointment> theApp=appService.findAllByDoctorid(doctorid);

		model.addAttribute("checkList", theApp);
		
		return "appointment-list";
       
	}
	@GetMapping(value ="/edit")
	public String showEditProductPage(HttpServletRequest req,Model model) {
	Patient p=(Patient)req.getSession(false).getAttribute("patient");
	Patient patient = patientService.get(p.getPatientId());
	model.addAttribute("patient", patient);
	return "edit-patient";
  
	}	
	
	@GetMapping("/accepted")
	public String editStatus(HttpServletRequest req,@RequestParam("app_id") int app_id,Model model)
	{ 
		
		
	  Appointment app1 = appService.get(app_id);
	    app1.setStatus("Accepted");
		appService.save(app1);
	    
	     return "redirect:/loginUs/checkAppointment";
	}

	@GetMapping("/rejected")
	public String editStatusRejected(HttpServletRequest req,@RequestParam("app_id") int app_id,Model model)
	{ 
		Appointment app1 = appService.get(app_id);
		app1.setStatus("Rejected");
		appService.save(app1);
		return "redirect:/loginUs/checkAppointment";
	}
	
	@GetMapping("/acceptedDate")
	public String acceptDate(HttpServletRequest req,@RequestParam("app_id") int app_id,@RequestParam("finaldate") String finaldate,Model model) {
		Appointment app1 = appService.get(app_id);
		app1.setSelectedDate(finaldate);
		appService.save(app1);
		return "redirect:/loginUs/checkAppointment";
	}
	
	@GetMapping("/cancelAppointment")
	public String cancelAppointment(HttpServletRequest req,@RequestParam("app_id") int app_id,Model model) {
		Appointment app1 = appService.get(app_id);
		appService.delete(app_id);
		return "redirect:/loginUs/bookAppList";
	}

	
	@PostMapping("/paymentGateway")
	public String viewGateway(HttpServletRequest req,Model theModel) {
		//int pid=(int) theModel.getAttribute("pid");
		//Appointment app1 = appService.get(pid);
		//app1.setPayment("Done");
		
		//int pid=(int)req.getSession(true).getAttribute("pid");
		//Appointment app1 = appService.get(pid);
		//app1.setPayment("Done");

		return "welcome";
	}
	
	@GetMapping("/myDashboard")
	public String myDashboard() {
		return "welcome-doctor";
	}
	
	
	@PostMapping("/displayDetails")
	public ModelAndView viewPatientDetails(HttpServletRequest req,Model theModel,@ModelAttribute("basicDetails") Patient pselected) {
		ModelAndView mav=null;
		Patient p=patientService.findByEmail(pselected.getEmail());
		if(p==null) {
			mav= new ModelAndView("welcome-doctor");
			mav.addObject("errorInput", "Email not registered");
		}
		else {
		theModel.addAttribute("particularPatient", p);
		
		Doctor doct =(Doctor)req.getSession(false).getAttribute("doctor");
		List<Appointment> a=appService.findAllByPatientIdAndDoctorid(p.getPatientId(), doct.getDoctorid());
		theModel.addAttribute("particularPatientApp",a);
		mav= new ModelAndView("PatientDetails");
		}
		return mav;
	
	}
	
	/*@GetMapping("/savePres")
	public String savePres(HttpServletRequest req,@RequestParam("app_id") int app_id,@RequestParam("prescription") String pres,Model theModel) {
		
		//appService.save(app1);
		Appointment a=appService.get(app_id);
		String presvalue1=req.getParameter("prescription");
		a.setPrescription(presvalue1);
		appService.save(a);
		return "welcome-doctor";
	 }*/
	
	
	
	@PostMapping("/displayAppDetails")
	public ModelAndView viewPatientAppDetails(HttpServletRequest req,Model theModel,@ModelAttribute("basicAppDetails") Appointment a) {
		ModelAndView mav=null;
		Appointment a1=appService.findByAppid(a.getAppid());
		if(a1==null) {
			mav= new ModelAndView("welcome-doctor");
			mav.addObject("errorInputId", "Appointment doesn't exist");
		}
		else {
		theModel.addAttribute("pres",a1);
		
		Patient p1=patientService.get(a1.getPatientId());
		theModel.addAttribute("presBasic",p1);
		mav= new ModelAndView("add-prescription");
		}
		return mav;
	}
	
	@PostMapping("/savePres")
	public String savePres(HttpServletRequest req,Model theModel,@ModelAttribute("pres") Appointment a) {
		Appointment a1=appService.findByAppid(a.getAppid());
		a1.setPrescription(a.getPrescription());
		appService.save(a1);
		return "welcome-doctor";
	}
	
	@GetMapping("/displayPresFromHistory")
	public String viewPatientAppDetailsFromHistory(HttpServletRequest req,Model theModel,@RequestParam("app_id") int app_id) {
		Appointment a1=appService.findByAppid(app_id);
		theModel.addAttribute("pres",a1);
		
		Patient p1=patientService.get(a1.getPatientId());
		theModel.addAttribute("presBasic",p1);
		
		return "add-prescription";
	}
	
	@GetMapping("/logout")
	public String logout(HttpServletRequest req) {
	req.getSession().invalidate();
	return "index";
	}
	
	
}
