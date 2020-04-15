package com.niit.medicure.controller;


import java.nio.charset.StandardCharsets;
import java.util.Base64;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.niit.medicure.model.Patient;

import com.niit.medicure.service.LoginService;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;



@Controller
@SessionAttributes("userDetails")
@RequestMapping("/index")
public class HomeController {
	
	@Autowired
	private LoginService loginService;

	@GetMapping("/")
	public String viewHomePage() {
		return "index";
	}
	@GetMapping("signup")                                
	public String signup(Model model)
	{
    	Patient thePat=new Patient();
    	model.addAttribute("patient",thePat);
    	return "patient-form";
    }
	
	@RequestMapping(value="savePatient", method = RequestMethod.POST)
	public String savePatient(@ModelAttribute("patient") Patient patient) {
	loginService.save(patient);
	 //User theUser=new User();
	//theModel.addAttribute("user",theUser);
		return "login-user1";
	//return "redirect:/index/";
	}
	
	@GetMapping("login")
	public String loginPage() {

		return "login-user1";
	}
	
	@PostMapping("/loginAction")
	public ModelAndView loginDealer(HttpServletRequest req,@ModelAttribute("user") Patient patient) {
		String email=req.getParameter("email");
		String pass=req.getParameter("password");
		String pass2=encryptPass(pass);
		
		StringTokenizer st = new StringTokenizer(email, "@");
		String s2 = st.nextToken();
		
		 ModelAndView mav=null;
		 Patient p= loginService.findByEmail(email);
		 
		 if(p==null) {
			 mav= new ModelAndView("login-user1");
				mav.addObject("error", "User Doesn't Exists");
		 }
		 else  if(email.equals(p.getEmail()) && pass2.equals(p.getPassword()))
		 {
					 
		 req.getSession().setAttribute("user", s2);	
		 
		  mav = new ModelAndView("welcome");
		  mav.addObject("userDetails",p);
		  mav.addObject("error", "Success");
		// mav.addObject("patient", p);
		 
		// List<Product> listProducts = service.listAll();
		 //   mav.addObject("listProducts", listProducts);
	     		    
		 } 
		 
		 else
		 {mav= new ModelAndView("login-user1");
			mav.addObject("error", "Invalid Username or Password");
		 }
		 //mav.addObject("empFullName", "neha");
		 
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
