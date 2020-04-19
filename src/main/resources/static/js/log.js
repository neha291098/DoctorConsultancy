function formValidate(){
	
	var email=document.getElementById("email").value;
	var pass=document.getElementById("password").value;
 
	 

 if(email=='')
	{
	alert("Email cannot be blank");
	return false;
	}	
	else if (pass=='')
	{
	alert("password cannot be blank");
	return false;
	}	
	else{
		return true;
	}
	


}