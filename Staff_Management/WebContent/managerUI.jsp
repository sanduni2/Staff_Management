<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Dashboard</title>
<link rel="stylesheet" href="managerUI.css" />


</head>
<body>
	<div class="container">
		<nav>
			<ul>

				<li><i class="fas fa-UI"></i> <span class="nav-item">Manager
						UI</span></li>

				<li><a href="#" class="logo"> <img
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrP8Aj0957Hliatz_
          xr-fXvjjJ8PtvCkYPtA&usqp=CAU"
						alt=""> <span class="nav-item">DashBoard</span>
				</a href=""></li>
				<li><a href="login.jsp" class="">  <span
						class="nav-item">-> Home</span>
				</a></li>
				<li><a href="">  <span
						class="nav-item">-> Profile</span>
				</a></li>

				<li><a href="">  <span
						class="nav-item">-> Analytics</span>
				</a></li>
				<li><a href="">  <span
						class="nav-item">-> Tasks</span>
				</a></li>
				<li><a href="">  <span
						class="nav-item">-> Settings</span>
				</a></li>
				<li><a href="">  <span
						class="nav-item">-> Help</span>
				</a></li>
				<li><a href="" class="logout"> <span class="nav-item">Log
							out -></span>
				</a></li>
			</ul>
		</nav>


		<section class="main">
			<div class="main-top">
				<h1>Tasks/ Activities -></h1>
				<i class="fas fa-user-cog"></i>
			</div>
			<div class="main-skills">
				<div class="card">

					<i class="fas"></i>
					<h3>Work Schedule</h3>
					<p>Create New Schedule.</p>
					<a href="cr.jsp">
					<button>Create</button></a>

				</div>
				<div class="card">
					<i class="fab"></i>
					<h3>View</h3>
					<p>View Created Schedule</p>
					<button>View</button>
				</div>
				<div class="card">
					<i class="fas"></i>
					<h3>Update/ Delete</h3>
					<p>Update & Delete Schedule</p>
					<button>Update/Del.</button>
				</div>
				<div class="card">
					<i class="fas"></i>
					<h3>Reports</h3>
					<p>Show Reports</p>
					<button>Show</button>
				</div>
			</div>
			<div class="main-top">
				<h1>Analytics -></h1>
				<i class="fas fa-user-cog"></i>
			</div>
			<img class="ana"
				src="https://www.datapine.com/images/management-dashboard-example.png"
				width=1200px;>

		</section>
	</div>
</body>
</html>