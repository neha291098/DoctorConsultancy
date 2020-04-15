package com.niit.medicure.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="appointment")
public class Appointment {

	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="app_id")
	@Id
	int app_id;
	
	int id;
	int d_id;
	String doctorname;
	String patientname;
	String doctoraddress;
	String specialist="dentist";
	Date date1;
	Date date2;
	Date selecteddate=new Date(8-9-2020);
	String status="applied";
	
	
	public Appointment() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getApp_id() {
		return app_id;
	}
	public void setApp_id(int app_id) {
		this.app_id = app_id;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getD_id() {
		return d_id;
	}
	public void setD_id(int d_id) {
		this.d_id = d_id;
		if(this.d_id==1) {
			setDoctorname("Srivatsa");
		}
		else if(this.d_id==3) {
			setDoctorname("Aradhna");
		}
	}
	
	public String getSpecialist() {
		return specialist;
	}
	public void setSpecialist(String specialist) {
		this.specialist = specialist;
	}
	public Date getDate1() {
		return date1;
	}
	public void setDate1(Date date1) {
		this.date1 = date1;
	}
	public Date getDate2() {
		return date2;
	}
	public void setDate2(Date date2) {
		this.date2 = date2;
	}
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getDoctorname() {
		return doctorname;
	}
	public void setDoctorname(String doctorname) {
		this.doctorname = doctorname;
		
	}
	public String getPatientname() {
		return patientname;
	}
	public void setPatientname(String patientname) {
		this.patientname = patientname;
	}
	public String getDoctoraddress() {
		return doctoraddress;
	}
	public void setDoctoraddress(String doctoraddress) {
		this.doctoraddress = doctoraddress;
	}
	public Date getSelecteddate() {
		return selecteddate;
	}
	public void setSelecteddate(Date selecteddate) {
		this.selecteddate = selecteddate;
	}
	
	
}
