package com.niit.medicure.model;

import java.nio.charset.StandardCharsets;
import java.sql.Date;
import java.util.Base64;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="doctor")
public class Doctor {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="d_id")
	private Integer doctorid;

	@Column(name="name")
	private String  name;

	@Column(name="password")
	private String password;
	
	@Column(name="phone_Num")
	private Long phoneNum;

	@Column(name="email")
	private String email;
	
	@Column(name="dob")
	private Date dob;
	
	@Column(name="specialization")
	private String specialization;

	public Doctor() {
		super();
	}

	
	public Integer getDoctorid() {
		return doctorid;
	}


	public void setDoctorid(Integer doctorid) {
		this.doctorid = doctorid;
	}


	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		Base64.Encoder encoder = Base64.getEncoder();
		  String normalString = password;
		  String encodedString = encoder.encodeToString(
		     normalString.getBytes(StandardCharsets.UTF_8) );
		  this.password = encodedString;
	}

	public Long getPhoneNum() {
		return phoneNum;
	}

	public void setPhoneNum(Long phoneNum) {
		this.phoneNum = phoneNum;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getSpecialization() {
		return specialization;
	}

	public void setSpecialization(String specialization) {
		this.specialization = specialization;
	}


	@Override
	public String toString() {
		return "Doctor [doctorId=" + doctorid + ", name=" + name + ", password=" + password + ", phoneNum=" + phoneNum
				+ ", email=" + email + ", dob=" + dob + ", specialization=" + specialization + "]";
	}

	
	
	
}
