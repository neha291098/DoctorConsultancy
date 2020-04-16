package com.niit.medicure.model;

import java.nio.charset.StandardCharsets;
import java.util.Base64;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="patient")
public class Patient {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private Integer patientId;

	@Column(name="name")
	private String  name;

	@Column(name="password")
	private String password;
	
	@Column(name="phonenum")
	private int phoneNum;
	
	

	@Column(name="email")
	private String email;
	
	
	public Patient() {
		super();
	}

	

	public Integer getPatientId() {
		return patientId;
	}



	public void setPatientId(Integer patientId) {
		this.patientId = patientId;
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

	public int getPhoneNum() {
		return phoneNum;
	}

	public void setPhoneNum(int phoneNum) {
		this.phoneNum = phoneNum;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Patient [id=" + patientId + ", name=" + name + ", password=" + password + ", phoneNum=" + phoneNum + ", email="
				+ email + "]";
	}

	

	
}
