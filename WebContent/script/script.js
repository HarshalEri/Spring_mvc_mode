/**********Login Module Validation*******************************/

function isValidUserID()
{
	var userID=document.getElementById("txtUserId").value;
	var validUserID=true;
	userID=trim(userID);
	var spanErrorUserID = document.getElementById("spanErrorUserID");
	if(userID=="")
	{
		spanErrorUserID.innerHTML="Please enter UserID";
		validUserID=false;
	}
	else{
		spanErrorUserID.innerHTML="";
		document.getElementById("txtUserId").value=userID;
	}
	return validUserID;
}

function isValidPassword()
{
	var passwordPattern=/^.*(?=.{8,})(?=.*[a-z])(?=.*[\d])(?=.*[[A-Z]|[@!#$%]).*$/;
	var password=document.getElementById("txtPassword").value;
	var spanErrorPassword = document.getElementById("spanErrorPassword");
	var validPassword=true;
	
	if(isNull(password))
	{
		validPassword=false;
	}
	else if(!passwordPattern.test(password))
	{
		spanErrorPassword.innerHTML="Invalid login credentials";
		validPassword=false;
	}
	else
		spanErrorPassword.innerHTML="";
	return validPassword;
}

function isNull(){
	var password=document.getElementById("txtPassword").value;
	var spanErrorPassword = document.getElementById("spanErrorPassword");
	if(password=="")
	{
		spanErrorPassword.innerHTML="Please enter Password";
		return true;
	}else{
		spanErrorPassword.innerHTML="";
		return false;
	}
}

function isValidLogin()
{
	if(isValidUserID() && isValidPassword() )
	{
		return true;
	}
	else
	{
		return false;
	}
}

/**
 * **********Reset
 * starts***********************************************************
 */
function isReset(){ 
	var spanErrorPassword = document.getElementById("spanErrorPassword");
	var spanErrorUserID = document.getElementById("spanErrorUserID");
	spanErrorPassword.innerHTML="";
	spanErrorUserID.innerHTML="";
	 document.getElementById('txtUserId').focus();

	return true;
}
/**
 * **********Reset
 * Ends***********************************************************
 */
/** ********End of Login Module Validation****************************** */

/** *****************Trim User input************************** */

function trim(value) {
	return value.replace(/^\s+|\s+$/g,"");
}

/** ******************Search Document Module validation**************** */
function isValidDocumentId()
{
	var result=true;
	var documentId = document.getElementById("documentId").value;
	var idExp = /^[0-9]+$/;
	var docIdError = document.getElementById("spanErrorDocumentId");
	if(documentId!=""){
		documentId=trim(documentId);
		if(!idExp.test(documentId)){
			docIdError.innerHTML="Document Id contain only numeric values";
			result=false;
		}
		else if(documentId.length < 7 ){
			docIdError.innerHTML="Document Id must contain 7 digits";
			result=false;
		}
		else if(documentId.length > 7 ){
			docIdError.innerHTML="Document Id can have more than 7 digits";
			result=false;
		}
		else{
			docIdError.innerHTML="";
			document.getElementById("documentId").value=documentId;
		}
	}
	else
		docIdError.innerHTML="";
	return result;
}

function isValidSearchDocName()
{
	var result=true;
	var documentName=document.getElementById("documentName").value;
	var nameExp=/^[0-9]+$/;
	var docNameError = document.getElementById("spanErrorDocNameError");
	if(documentName!="") {
		documentName=trim(documentName);
		if(documentName.length > 20){
			docNameError.innerHTML="Document Name can not contain more than 20 Character";
			result=false;
		}
		else if(nameExp.test(documentName)) {
			docNameError.innerHTML="Document Name should be alpha numeric";
			result=false;
		}
		else{
			docNameError.innerHTML="";
			document.getElementById("documentName").value=documentName;
		}
	}
	else
		docNameError.innerHTML="";
	return result;	
}

function isValidSearchAuthor()
{
	var result=true;
	var author=document.getElementById("author").value;
	var authorExp=/^[A-Za-z*]+[-\s',A-Za-z*]*$/;
	var authorError = document.getElementById("spanErrorAuthorError");
	if(author!=""){
		author=trim(author);
		if(author.length > 20){
			authorError.innerHTML="Author can not contain more than 20 Character";
			result=false;
		}
		else if(!authorExp.test(author)){
			authorError.innerHTML="Author must be alphabets and/or special characters (-,')";
			result=false;
		}
		else{
			authorError.innerHTML="";
			document.getElementById("author").value=author;
		}
	}
	else
		authorError.innerHTML="";	
	return result;
}

function isValidSearchTitle()
{
	var result=true;
	var title=document.getElementById("title").value;
	var titleExp=/^[0-9]*$/;
	var titleError = document.getElementById("spanErrorTitleError");
	if(title!=""){
		title=trim(title);
		if(title.length > 20){
			titleError.innerHTML="Title can not contain more than 20 Character";
			result=false;
		}
		else if(titleExp.test(title)){
			titleError.innerHTML="Title should be alpha numeric";
			result=false;
		}
		else{
			titleError.innerHTML="";
			document.getElementById("title").value=title;
		}
	}
	else
		titleError.innerHTML="";	
	return result;
}

function isValidSearchForm()
{
	var result=false;
	if(isValidDocumentId()&&isValidSearchDocName()&&isValidSearchAuthor()&&isValidSearchTitle())
		result=true;
	return result;
}

function isResetSearch(){ 
	titleError.innerHTML="";
	authorError.innerHTML="";	
	docNameError.innerHTML="";
	docIdError.innerHTML="";
	 document.getElementById('documentId').focus();

	return true;
}
/** ****************Search Document Module validation********** */


/** ****************Registration Module validation********** */
function isValidUserIdForRegister()
{
	
 var userID=document.getElementById("userId").value;
 userID=trim(userID); 
 var userIdErr=document.getElementById("spanUserIdErr");

 var validUserId=true; 
 var regexp = /^([1-9]|\D)(.)*$/;
 var regexp1 = /^(\S){6,15}$/;
 if(userID=="")
   {
	   userIdErr.innerHTML ="Please enter user Id";
	   validUserId=false;
 } 
 else {
     if (!regexp.test(userID)) {
    	 userIdErr.innerHTML ="Please enter valid user Id(should not start with 0)";
    	 validUserId=false;
     }else {
         if (!regexp1.test(userID)) {
        	 validUserId=false;   
        	 userIdErr.innerHTML ="user id should be between 6 to 15 length without spaces";
         	}
         else
        	 userIdErr.innerHTML = "";
     }
 }
  return validUserId;
}

function isValidFirstName()
{
	
 var namePattern=/^[a-zA-Z\.\-\']+$/;
 var name=document.getElementById("firstName").value;
 var firstNameErr=document.getElementById("firstNameErr");

 name=trim(name);
 var validName=true;
   if(name=="")
   {
	   firstNameErr.innerHTML = "Please enter first name";
	   validName=false;
 }
 else if(!namePattern.test(name))
 {	 
	 firstNameErr.innerHTML = " First name is invalid";
    validName=false;
 }
 else{
	 firstNameErr.innerHTML = "";
	 validName = true;
 }
   
	 return validName;
}
function isValidCity()
{
	
 var namePattern=/^[a-zA-Z\.\-\']+$/;
 var name=document.getElementById("city").value;
 var firstNameErr=document.getElementById("city");

 name=trim(name);
 var validName=true;
   if(name=="")
   {
	   firstNameErr.innerHTML = "Please enter City";
	   validName=false;
 }
 else if(!namePattern.test(name))
 {	 
	 firstNameErr.innerHTML = " Invalid City";
    validName=false;
 }
 else{
	 firstNameErr.innerHTML = "";
	 validName = true;
 }
   
	 return validName;
}

function isValidLastName()
{
 var namePattern=/^[a-zA-Z\.\-\']+$/;
 var lastName=document.getElementById("lastName").value;
 var lastNameErr=document.getElementById("lastNameErr");

 var validName=true;
 lastName=trim(lastName);
 if(lastName=="")
 {
	 lastNameErr.innerHTML = "Please enter the last name";
	 validName=false;
 }
 else if(!namePattern.test(lastName))
 {
	 lastNameErr.innerHTML = " Last  name is invalid";

    validName=false;
 }
 else
	 lastNameErr.innerHTML = "";
  return validName;
}

function isValidPasswordForRegister()
{

 var passwordName=document.getElementById("password").value;
 var passwordErr=document.getElementById("passwordErr");

 var validPassword=true;
   if(passwordName=="")
   {
	   passwordErr.innerHTML = "Please enter password";

	   validPassword=false;
 }
 else if(!namePattern.test(passwordName))
 {
	 passwordErr.innerHTML = "Password should contain alphanumerics,special characters within 8-20 ";

	 validPassword=false;
 }
 else
	 passwordErr.innerHTML = "";
  return validPassword;
}

function isValidConfirmPassword()
{
	 var passwordName=document.getElementById("password").value;
 var confirmPasswordName=document.getElementById("confirmPassword").value;
 var confirmPasswordErr=document.getElementById("confirmPasswordErr");

 var validConfirmPassword=true;
   if(confirmPasswordName=="")
   {
	   confirmPasswordErr.innerHTML ="Please enter confirm password";
	   validConfirmPassword=false;
 }
 else if(passwordName!= confirmPasswordName)  
 {
	 confirmPasswordErr.innerHTML = "Password and confirm password should be same";

	 validConfirmPassword=false;
 }
 else
	 confirmPasswordErr.innerHTML = "";
  return validConfirmPassword;
}

function isValidateDate()
{
 
	      var validDateofBirth=true;

		var dateOfBirth =document.getElementById("dateOfBirth").value;
		var dateOfBirthErr =document.getElementById("dateOfBirthErr");

		if(dateOfBirth== "")
		{
	        dateOfBirthErr.innerHTML ="Please enter date of birth";

	      validDateofBirth=false;
}
 else
	 dateOfBirthErr.innerHTML = "";
  return validDateofBirth;
}

function isValidAddress()
{
 var address=document.getElementById("address").value;
 var addressErr=document.getElementById("addressErr");

 var addressField=true;
 address=trim(address);
if(address == "")
{
	addressErr.innerHTML = "Please enter address";

    addressField=false;
}
else
	addressErr.innerHTML = "";
return addressField;
}

function isValidLandline()
{
	
 var namePattern=/^\d{3}\-\d{4}\-\d{4}$/;
 var landline=document.getElementById("landLine").value; 
 var landlineErr=document.getElementById("landLineErr");

 var validLandline=true;
 landline=trim(landline);
	if(landline=="")
	{
		 landlineErr.innerHTML = "Please Enter Landline number";
		  return validLandline;
}
	
if(!namePattern.test(landline))
 {
	 landlineErr.innerHTML ="Invalid landline number";

	 validLandline=false;
 }
 else
	 landlineErr.innerHTML = "";
  return validLandline;
}

function isValidMobileNumber()
{
 var namePattern=/^\d{3}\-\d{4}\-\d{4}$/;
 var mobileNumber=document.getElementById("mobileNumber").value;
 var mobileNumberErr=document.getElementById("mobileNumberErr");

 var validMobileNumber=true;
 mobileNumber=trim(mobileNumber);
if(mobileNumber=="")
	{
		mobileNumberErr.innerHTML = "Please Enter mobile number";
		validMobileNumber=false;
	}
	
else if(!namePattern.test(mobileNumber))
 {
	 mobileNumberErr.innerHTML ="Invalid mobile number";

	 validMobileNumber=false;
 }
 else
	 mobileNumberErr.innerHTML = "";
  return validMobileNumber;
}

function isValidEmailId()
{
 var namePattern= /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
 var eMailId=document.getElementById("emailId").value;
 var eMailIdErr=document.getElementById("emailIdErr");

 var validEmailId=true;
 eMailId=trim(eMailId);
   if(eMailId=="")
   {
	   eMailIdErr.innerHTML = "Please enter email id";


	   validEmailId=false;
 }
 else if(!namePattern.test(eMailId))
 {
	 eMailIdErr.innerHTML = "Please enter valid email id";

	 validEmailId=false;
 }
 else
	 eMailIdErr.innerHTML = "";
  return validEmailId;
}

function isValidateAreasOfInterest()
{
	var chks = document.getElementsByName("areasOfInterest");
	var areasOfInterestErr = document.getElementsByName("areasOfInterestErr");

var checkCount = 0;
for (var i = 0; i < chks.length; i++)
{
if (chks[i].checked)
{
checkCount++;
}
}
if (checkCount==0)
{
	areasOfInterestErr.innerHTML = "Please select areas of interest";

	return false;
}
else{
	areasOfInterestErr.innerHTML = "Please select areas of interest";
}
return true;
}

function isValidAllForregister()
{
	var status=true;
	var counter = 0;
	if(!isValidUserIdForRegister())
		counter++;
	if(!isValidFirstName())
		counter++;
	if(!isValidPasswordForRegister())
		counter++;
	if(!isValidConfirmPassword())
		counter++;
	if(!isValidAddress())
		counter++;
	if(!isValidLastName())
		counter++;	
	if(!isValidLandline())
		counter++;
	if(!isValidMobileNumber())
		counter++;
	if(!isValidEmailId())
		counter++;
	if(counter>0)
	{
		status=false;
	}
	return status;
}

function isResetForRegister(){ 

	var spanUserIdErr=document.getElementById("spanUserIdErr");
    var passwordErr = document.getElementById("passwordErr");
	var areasOfInterestErr = document.getElementsByName("areasOfInterestErr");
	var eMailIdErr=document.getElementById("eMailIdErr");
	var mobileNumberErr=document.getElementById("mobileNumberErr");
	var landlineErr=document.getElementById("landlineErr");
	var addressErr=document.getElementById("addressErr");
	var dateOfBirthErr =document.getElementById("dateOfBirthErr");
	var confirmPasswordErr=document.getElementById("confirmPasswordErr");
	var firstNameErr=document.getElementById("firstNameErr");
	var lastNameErr=document.getElementById("lastNameErr");

	 spanUserIdErr.innerHTML="";
	 passwordErr.innerHTML="";
	 areasOfInterestErr.innerHTML="";
	 eMailIdErr.innerHTML="";
	 mobileNumberErr.innerHTML="";
	 landlineErr.innerHTML="";
	 addressErr.innerHTML="";
	 dateOfBirthErr.innerHTML="";
	 confirmPasswordErr.innerHTML="";
	 firstNameErr.innerHTML="";
	 lastNameErr.innerHTML="";
	 
	 document.getElementById('userId').focus();

	return true;
}