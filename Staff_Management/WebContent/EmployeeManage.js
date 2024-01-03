/**
 * start for control coding
 */
var addBtn=document.querySelector("#add-btn");
var model=document.querySelector(".model");
var closeBtn=document.querySelector(".close-icon");
addBtn.onclick=function(){
	model.classList.add("active");
}
closeBtn.addEventListener("click",()=>{
	model.classList.remove("active");
})

/*start  all global variable*/

var userData=[];
var idEl=document.getElementById("id");
var nameEl=document.querySelector("#name");
var l_nameEl=document.getElementById("l-name");
var emailEl=document.querySelector("#email");
var officeEl=document.querySelector("#office-code");
var jobTitleEl=document.querySelector("#job-title");
var registerBtn=document.querySelector("#register-btn");
var registerForm=document.querySelector("#register-form");

/*end all global variable */

/*start register coding*/
registerBtn.onclick=function(e){

	e.preventDefault();
	regitrationData();
	registerForm.reset(' ');
	closeBtn.click();
}

function regitrationData(){
	userData.push({
		id:idEl.value,
		name:nameEl.value,
		l_name:l_nameEl.value,
		email:emailEl.value,
		officeCode:officeEl.value,
		jobTitle:jobTitleEl.value
	});
	var userString=JSON.stringify(userData);
	localStorage.setItem("userData",userString);
}
