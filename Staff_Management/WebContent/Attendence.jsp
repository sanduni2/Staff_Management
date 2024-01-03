<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Attendence</title>
<link rel="stylesheet" type="text/css" href="Attendence.css">
</head>
<body>
<h1>Staff Management System</h1>
    <div class="add-attendance">
        <input type="date" id="attendanceDate" placeholder="Date">
        <input type="text" id="staffName" placeholder="Staff Name">
        <select id="attendanceStatus">
            <option value="Present">Present</option>
            <option value="Absent">Absent</option>
        </select>
        <button id="addButton">Add Attendance</button>
    </div>
    <table id="attendanceTable">
        <thead>
            <tr>
                <th>Date</th>
                <th>Staff Name</th>
                <th>Attendance Status</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <!-- Data will be added here dynamically via JavaScript -->
        </tbody>
    </table>

    <script src="Attendence.js"></script>

</body>
</html>