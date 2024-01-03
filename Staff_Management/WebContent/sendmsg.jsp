<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="Sendmsg" method="POST">
<h1>Send Message</h1>
            <label for="empID">Employee ID:</label>
            <input type="text" name="empID" required><br>

            <label for="empName">Employee Name:</label>
            <input type="text" name="empName"required><br>
            
            <label for="message">Message:</label>
            <input type="text" name="message"required><br>

            
            <button type="submit" value="sendmsg">Send</button>
        </form>

</body>
</html>