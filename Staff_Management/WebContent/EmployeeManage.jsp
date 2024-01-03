<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible"  content="IE=edge">
		<meta name="viewport"  content="width=device-width,initial-scale=1.0">
		<title>Insert title here</title>
		<link rel="stylesheet"  href="EmployeeManage.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" 
		 integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CSh
		xbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<div class="header">
	<h5>Employee</h5>
	</div>
	
	<div class="upper-btn-box">
	    <div class="left-box">
		<button id="add-btn"><i class="fa fa-plus"></i>&nbsp; Add Employee</button>
		<button><i class="fa fa-eraser"  style="background-color:#33B5E6;"></i>&nbsp; Clear Filtering</button>
		</div>
		<div class="right-box">
		<i class="fa fa-search"></i>
		<input type ="text" id ="empId" placeholder="Enter Employee id">
		<button style="background-color:#EE534F ;">Search</button>
		</div>
	</div>
	
	<div class="table-box">
	<table>
		<tr>
			<th>Sr No</th>
			<th>Profile</th>
			<th>Id</th>
			<th>Name</th>
			<th>Last name</th>
			<th>email</th>
			<th>office Code</th>
			<th>job Title</th>
			<th>Action</th>
		</tr>
		<%
for (int i = 1; i < 6; i++) {
%>
  
    
      <button><i class="fa fa-eye"></i></button>
      <button><i class="fa fa-trash"></i></button>
    
  
<%
}
%>
	</table>
	</div>
	
	<div class="model active">
	<i class="fa fa-times-circle close-icon"></i>
	<div class="left-modal" >
	<div class="img-box">
	<img src="newEclipse/img/pic.png" width="150"  height="150" alt=" ">
	<i class="fa fa-plus"></i>
	<input type="file">
	</div></div>
	
	<div class="right-modal">
	
	<form id="register-form" action="empmanage" method="POST">
	<div class="input-box">
	<label for ="id">Id</label>
	<input type="text"  id="id" name="id">
	</div>
	<div class="input-box">
	<label for ="name">Name</label>
	<input type="text"  id="name" name="name">
	</div>
	<div class="input-box">
	<label for ="l-name">Last Name</label>
	<input type="text"  id="l-name" name="lastname">
	</div>
	<div class="input-box">
	<label for ="email">Email</label>
	<input type="text"  id="email" name="email">
	</div>
	<div class="input-box">
	<label for ="office-code">Office Code</label>
	<input type="text"  id="office-code" name="officecode">
	</div>
	<div class="input-box">
	<label for ="job-title">Job Title</label>
	<input type="text"  id="job-title" name="jobtitle"><br>
	<button name="empmanage" value="empmanage">Submit</button>
	</div>
	</form>
	<div class="input-box">
	<button id="register-btn" >Register</button>
	<button disabled="disabled" style="background-color:#EE534F ;">Update</button></div>
	</div>
	</div>
<script src="EmployeeManage.js"></script>

</body>
</html>