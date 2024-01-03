
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>salary</title>
    
    <link rel="stylesheet" type="text/css" href="salaryCalc.css">
    
</head>
<body>
    
   
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
        <li><a href="pAdminUI.jsp">
          <i class="fas fa-user"></i>
          <span class="nav-item">-> Profile</span>
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
    <div class="main-content">
     <h2>Salary Calculator</h2>
        <form action="Salary" method="post">
        
            <label for="empID">Employee ID:</label>
            <input type="text" id="empID" name="empID" required>
            
            <label for="empName">Employee Name:</label>
            <input type="text" id="empName" name="empName" required>

            <label for="baseSal">Base Salary:</label>
            <input type="text" id="bSal" name="baseSal" required>

            <label for="allowances">Allowances:</label>
            <input type="text" id="alw" name="allowances" required>

            <label for="deduction">Deduction:</label>
            <input type="text" id="dedu" name="deduction" required>

            <button type="button" id="calculateButton">Calculate</button>

            <label for="total">Total Salary:</label>
            <input type="text" id="tot" name="total" readonly>
            
            
            <input type="submit"  value="salary">
        </form>
        </div>
        
        <script>
        document.getElementById('calculateButton').addEventListener('click', function () {
            const bSal = parseFloat(document.getElementById('bSal').value);
            const alw = parseFloat(document.getElementById('alw').value);
            const dedu = parseFloat(document.getElementById('dedu').value);
            const tot = bSal + alw - dedu;
            document.getElementById('tot').value = tot;
        });
    </script>
        
</body>
</html>