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
	int appid;
	
	@Column(name="id")
	Integer patientId;
	@Column(name="d_id")
	Integer doctorid;
	String doctorname;
	String patientname;
	String doctoraddress;
	String specialist;
	String date1;
	String date2;
	@Column(name="selecteddate")
	String selectedDate;
	String status;
	String payment;
	String prescription;
	
	public Appointment() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public int getAppid() {
		return appid;
	}


	public void setAppid(int appid) {
		this.appid = appid;
	}


	public Integer getPatientId() {
		return patientId;
	}
	public void setPatientId(Integer patientId) {
		this.patientId = patientId;
	}
	
	public Integer getDoctorid() {
		return doctorid;
	}
	public void setDoctorid(Integer doctorid) {
		this.doctorid = doctorid;
		this.doctorid = doctorid;
		if(this.doctorid==1) {
			setDoctorname("Srivatsa");
		}
		else if(this.doctorid==3) {
			setDoctorname("Aradhna");
		}
	}
	public String getSpecialist() {
		return specialist;
	}
	public void setSpecialist(String specialist) {
		this.specialist = specialist;
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
	public String getDate1() {
		return date1;
	}
	public void setDate1(String date1) {
		this.date1 = date1;
	}
	public String getDate2() {
		return date2;
	}
	public void setDate2(String date2) {
		this.date2 = date2;
	}
	public String getSelectedDate() {
		return selectedDate;
	}
	public void setSelectedDate(String selectedDate) {
		this.selectedDate = selectedDate;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public String getPrescription() {
		return prescription;
	}
	public void setPrescription(String prescription) {
		this.prescription = prescription;
	}
	
	
	
}
