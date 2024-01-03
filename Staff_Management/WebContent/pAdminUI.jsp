<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
<head>
<meta charset="UTF-8">
<title>Payroll Admin UI</title>
  <link rel="stylesheet" href="pAdmin2.css" />
  <link rel="stylesheet" href="pAdmin3.css" />
  <link rel="stylesheet" href="managerUI.css" />
  
  
  
 
</head>
<body>
  <div class="container">
    <nav>
      <ul>
      
      <li><i class="fas fa-UI"></i>
          <span class="nav-item">Payroll Admin</span>
        </li>
        
        <li><a href="#" class="logo">
          <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrP8Aj0957Hliatz_
          xr-fXvjjJ8PtvCkYPtA&usqp=CAU" alt="">
          <span class="nav-item">DashBoard</span>
        </a></li>
        <li><a href="login.jsp">
          <i class="fas fa-home"></i>
          <span class="nav-item">-> Home</span>
        </a></li>
        <li><a href="">
          <i class="fas fa-user"></i>
          <span class="nav-item">-> Profile</span>
        </a></li>
        <li><a href="">
          <i class="fas fa-wallet"></i>
          <span class="nav-item">-> Wallet</span>
        </a></li>
        <li><a href="">
          <i class="fas fa-chart-bar"></i>
          <span class="nav-item">-> Analytics</span>
        </a></li>
        <li><a href="">
          <i class="fas fa-tasks"></i>
          <span class="nav-item">-> Tasks</span>
        </a></li>
        <li><a href="">
          <i class="fas fa-cog"></i>
          <span class="nav-item">-> Settings</span>
        </a></li>
        <li><a href="">
          <i class="fas fa-question-circle"></i>
          <span class="nav-item">-> Help</span>
        </a></li>
        <li><a href="" class="logout">
          <i class="fas fa-sign-out-alt"></i>
          <span class="nav-item">Log out -></span>
        </a></li>
      </ul>
    </nav>


   <section class="main">
      
      

      <div class="row">
        <h1>Salary</h1>
       
      </div>

      <div class="job_card">
        <div class="job_details">
          <div class="img">
            <i class="fab fa-google-drive"></i>
          </div>
          <div class="text">
          <a href="salaryCalc.jsp">
            <h2>Salary Calculator</h2></a>
         </div>
        </div>
       </div>
      
      <div class="job_card">
        <div class="job_details">
          <div class="img">
            <i class="fab fa-google"></i>
          </div>
          <div class="text">
            <h2>View Salary Details</h2>
          </div>
        </div>
        </div>
        

      <div class="job_card">
        <div class="job_details">
          <div class="img">
            <i class="fab fa-facebook"></i>
          </div>
          <div class="text">
            <h2>Delete Salary Details</h2>
          </div>
        </div>
       </div>

      <div class="job_card">
        <div class="job_details">
          <div class="img">
            <i class="fab fa-git-alt"></i>
          </div>
          <div class="text">
            <h2>Update Salary Details</h2>
        </div>
        </div>
        </div>
        
      <div class="job_card">
        <div class="job_details">
          <div class="img">
            <i class="fab fa-youtube"></i>
          </div>
          <div class="text">
            <h2>Salary Reports</h2>           
          </div>
        </div>
        
        
      </div>
    
    </section>
  </div>
</body>
</html>