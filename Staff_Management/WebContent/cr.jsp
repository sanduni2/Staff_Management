<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Create Schedule</title>
    <link rel="stylesheet" type="text/css" href="cr.css">
    <link rel="stylesheet" type="text/css" href="managerUI.css">
    
</head>
<body>
    
   
    <nav>
      <ul>
      
      <li><i class="fas fa-UI"></i>
          <span class="nav-item">Manager UI</span>
        </li>
        
        <li><a href="#" class="logo">
          <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrP8Aj0957Hliatz_
          xr-fXvjjJ8PtvCkYPtA&usqp=CAU" alt="">
          <span class="nav-item">DashBoard</span>
        </a></li>
        <li><a href="#">
          <i class="fas fa-home"></i>
          <span class="nav-item">-> Home</span>
        </a></li>
        <li><a href="managerUI.jsp">
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
        <h1>Create Schedule</h1>
        <form action="Schedule" method="POST">
            <label for="scheduleId">Schedule ID:</label>
            <input type="text" name="scheduleId" required>

            <label for="date">Date or Date Duration:</label>
            <input type="text" name="date"required>

            <h2>Tasks:</h2>
            <table id="taskTable">
    <tr>
        <th>Task</th>
        <th>Employee</th>
        <th>Action</th>
    </tr>
    <tr>
        <td><input type="text" name="task" required></td>
        <td><input type="text" name="empId" required></td>
        <td><button type="button" onclick="deleteRow(this)">Delete</button></td>
    </tr>
</table>

            <button type="button" id="addRowButton" onclick="addRow()">Add Row</button>
            <button type="submit" value="schedule">Create Schedule</button>
            <button type="submit">Back to managerUI</button>
        </form>
    </div>
    
    <script>
    var rowCount = 1;

    function addRow() {
        rowCount++;
        var table = document.getElementById("taskTable");
        var row = table.insertRow(table.rows.length);

        var cell1 = row.insertCell(0);
        var cell2 = row.insertCell(1);
        var cell3 = row.insertCell(2);

        cell1.innerHTML = '<input type="text" name="task' + rowCount + '" required>';
        cell2.innerHTML = '<input type="text" name="employee' + rowCount + '" required>';
        cell3.innerHTML = '<button type="button" onclick="deleteRow(this)">Delete</button>';
    }

    function deleteRow(button) {
        var row = button.parentNode.parentNode;
        row.parentNode.removeChild(row);
    }
</script>
</body>
</html>