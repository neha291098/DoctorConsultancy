/**
 * 
 */
function validate(){
	var name=document.getElementById("name").value;
	var email=document.getElementById("email").value;
	var pass=document.getElementById("password").value;
 var phone = document.getElementById("phoneNum").value;
	 
	if (name=='')
		{
		alert("name cannot be blank");
		return false;
		}	
	
	else if(pass=='')
	{
	alert("Password cannot be blank");
	return false;
	}	
	else if(phone=='')
	{
	alert("Phone number cannot be blank");
	return false;
	}	
	else if(email=='')
	{
	alert("email cannot be blank");
	return false;
	}	
	else{
		return true;
	}
	


}